package PresentationLayer;

import FunctionLayer.LoginSampleException;
import Util.CupcakeOrder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class Basket extends Command {

    private static int numberOfCupecakes = 0;

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        String bottom = request.getParameter("bottom");
        String top = request.getParameter("top");
        int number = Integer.parseInt(request.getParameter("number"));

        HttpSession session = request.getSession();

        List<CupcakeOrder> basket;
        if (session.getAttribute("Basket") != null) {
            basket = (ArrayList<CupcakeOrder>) session.getAttribute("Basket");
        } else {
            basket = new ArrayList<>();
        }
        CupcakeOrder tempCake = new CupcakeOrder(top, bottom, number);
        basket.add(tempCake);


        session.setAttribute("Basket", basket);

        numberOfCupecakes += number;

        System.out.println(session.getAttribute("Basket"));
        return "../index";
    }

    public static int getNumberOfCupecakes() {
        return numberOfCupecakes;
    }
    public static void updateNumberOfCupecakes(int antal) {
        numberOfCupecakes -=antal ;
    }

}
