package PresentationLayer;


import DBAccess.DataMapper;
import DBAccess.UserMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class Oversigt extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        List<User> users = UserMapper.GetAllUsers();
        List<Order> orders = DataMapper.GetAllOrders();

        HttpSession session = request.getSession();
        session.setAttribute("users", users);
        session.setAttribute("orders", orders);




        return "oversigt";
    }
}
