package practice.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by co21321 on 3/13/2017.
 */
@WebServlet(name = "addUserServlet", urlPatterns = "/addUserServlet")
public class AddUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstName = req.getParameter("user_first_name");
        String lastName = req.getParameter("user_last_name");
        System.out.println(firstName + " "+lastName);
        req.setAttribute("message","Hello Mr. "+firstName +" "+lastName+" to the world of Ajax");
        req.getRequestDispatcher("welcome_user.jsp").forward(req,resp);
    }


}
