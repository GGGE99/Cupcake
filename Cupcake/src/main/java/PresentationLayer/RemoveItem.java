package PresentationLayer;

import FunctionLayer.LoginSampleException;
import Util.CupcakeOrder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class RemoveItem extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        int index = Integer.parseInt(request.getParameter("index"));

        HttpSession session = request.getSession();

        List<CupcakeOrder> basket = (ArrayList<CupcakeOrder>) session.getAttribute("Basket");
        if (basket.size() > index) {
            Basket.updateNumberOfCupecakes(basket.get(index).getAntal());
            basket.remove(index);
        }
        session.setAttribute("Basket", basket);

        return "kurv";
    }
}
