package PresentationLayer;

import FunctionLayer.LoginSampleException;
import Util.CupcakeOrder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class Basket extends Command {

    private static int numberOfCupecakes = 0;

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        int bottom = Integer.parseInt(request.getParameter("bottom"));
        int top = Integer.parseInt(request.getParameter("top"));
        int number = Integer.parseInt(request.getParameter("number"));

        HttpSession session = request.getSession();

        ArrayList<CupcakeOrder> basket;
        if (session.getAttribute("Basket") != null) {
            basket = (ArrayList<CupcakeOrder>) session.getAttribute("Basket");
        } else {
            basket = new ArrayList<>();
        }
        CupcakeOrder tempCake = new CupcakeOrder(top, bottom, number);
        for(CupcakeOrder cupcakeOrder: basket){
            if (cupcakeOrder.getBottom() == tempCake.getBottom() && cupcakeOrder.getTop() == tempCake.getTop()){
                cupcakeOrder.setAntal(cupcakeOrder.getAntal() + tempCake.getAntal());
                session.setAttribute("Basket", basket);

                numberOfCupecakes += number;

                return "../index";
            }
        }
        basket.add(tempCake);


        session.setAttribute("Basket", basket);

        numberOfCupecakes += number;

        return "../index";
    }

    public static int getNumberOfCupecakes() {
        return numberOfCupecakes;
    }
    public static void updateNumberOfCupecakes(int antal) {
        numberOfCupecakes -=antal ;
    }



}
