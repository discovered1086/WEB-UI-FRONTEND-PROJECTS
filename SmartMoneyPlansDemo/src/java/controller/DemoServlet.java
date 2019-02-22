package controller;

import utilities.ApplicationConstants;
import utilities.SmpMenuHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by IntelliJ IDEA.
 * User: Kingshuk
 * Date: 17/2/13
 * Time: 7:04 PM
 * To change this template use File | Settings | File Templates.
 */
public class DemoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destination = request.getServletPath().replaceFirst("html", "jsp");
        //String destination = request.getServletPath();
        String module = request.getParameter(ApplicationConstants.APP_MOUDLE);
        request.setAttribute("submenu", SmpMenuHandler.getMenuList(module));
        request.setAttribute("appmodule", module);
        request.getRequestDispatcher(destination).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
