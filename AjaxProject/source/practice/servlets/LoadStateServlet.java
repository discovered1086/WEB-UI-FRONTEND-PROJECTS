package practice.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by co21321 on 3/16/2017.
 */
@WebServlet(name = "LoadStateServlet", urlPatterns = "/loadStateServlet")
public class LoadStateServlet extends HttpServlet {
    List<String> stateList = null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String country = request.getParameter("country");
        PrintWriter out = response.getWriter();
        /*if("USA".equals(country)){
            stateList.add("Connecticut");
            stateList.add("New York");
            stateList.add("Maine");
            stateList.add("New Hampshire");
            stateList.add("Vermont");
        }else{
            stateList.add("West Bengal");
            stateList.add("Maharastra");
            stateList.add("Delhi");
        }*/
        response.setContentType("text/html");
        if ("USA".equals(country)) {
            out.print("<option value='default' selected>Select a State</option>");
            out.print("<option value='Connecticut'>Connecticut</option>");
            out.print("<option value='New York'>New York</option>");
            out.print("<option value='Maine'>Maine</option>");
            out.print("<option value='New Hampshire'>New Hampshire</option>");
            out.print("<option value='Vermont'>Vermont</option>");
        } else {
            out.print("<option value='default' selected>Select a State</option>");
            out.print("<option value='West Bengal'>West Bengal</option>");
            out.print("<option value='Maharastra'>Maharastra</option>");
            out.print("<option value='Manipur'>Manipur</option>");
            out.print("<option value='Nagaland'>Nagaland</option>");
            out.print("<option value='Himachal Pradesh'>Himachal Pradesh</option>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
