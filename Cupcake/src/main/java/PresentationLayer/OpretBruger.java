package PresentationLayer;

import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OpretBruger extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        String submitVal = request.getParameter("submit");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String email = request.getParameter("email");

        HttpSession session = request.getSession();

        if (submitVal.equals("Exit")) {
            Logout.logout(request, response);
        }
        if (submitVal.equals("Opret")) {
            if (password1.equals(password2)) {
                User user = new User(email, password1, "customer", 500);
                DBAccess.UserMapper.createUser(user);
                session.setAttribute("user", user);
                session.setAttribute("role", user.getRole());
                session.setAttribute("email", email);
            } else request.setAttribute("error", "Koderne er ikke en prøv igen");
        }

        return "../index";
    }
}
