package PresentationLayer;

import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OpretBruger extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        String submitVal = request.getParameter("submit");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String email = request.getParameter("email");

        if (submitVal.equals("Exit")) {
            Logout.logout(request, response);
        }
        if (submitVal.equals("Opret")) {
            if (password1.equals(password2)) {
                User user = new User(email, password1, "customer", 500);
                DBAccess.UserMapper.createUser(user);
            }
        }

        return "../index";
    }
}
