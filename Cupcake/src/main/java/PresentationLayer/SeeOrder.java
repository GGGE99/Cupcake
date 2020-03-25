package PresentationLayer;

import DBAccess.DataMapper;
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SeeOrder extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        int id = Integer.parseInt(request.getParameter("id"));

        HttpSession session = request.getSession();

        session.setAttribute("orderlinjer", DataMapper.GetAllOrdersLine(id));

        return "OrderLinjer";
    }
}
