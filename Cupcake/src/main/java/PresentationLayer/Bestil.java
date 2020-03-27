package PresentationLayer;

import DBAccess.OrderMapper;
import FunctionLayer.LoginSampleException;
import Util.CupcakeOrder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class Bestil extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        HttpSession session = request.getSession();

        String role = (String) session.getAttribute("role");
        double price = Double.parseDouble(request.getParameter("price"));
        ArrayList<CupcakeOrder> basket = (ArrayList<CupcakeOrder>) session.getAttribute("Basket");

        if (role == null) {
            request.setAttribute("error", "For at bestille skal du logge ind først");
            return "kurv";
        } else {
            double money = (Double) (session.getAttribute("money"));
            int userId = (int) session.getAttribute("userId");

            if (price <= money) {
                int orderId = OrderMapper.createOrdrer(userId, price);
                for (CupcakeOrder cakes : basket) {
                    OrderMapper.createOrdrerLine(orderId, cakes.getTop(), cakes.getBottom(), cakes.getAntal());
                }
                OrderMapper.updateMoney(money - price, userId);
                Basket.updateNumberOfCupecakes(Basket.getNumberOfCupecakes());
                session.removeAttribute("Basket");
            }
        }
        return "../index";
    }
}
