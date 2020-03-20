package PresentationLayer;

import DBAccess.DataMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class OrderOversigt extends Command{
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        HttpSession session = request.getSession();

        List<Order> orders = DataMapper.GetAllOrders();

        session.setAttribute("orders", orders);

        return "oversigt";
    }
}
