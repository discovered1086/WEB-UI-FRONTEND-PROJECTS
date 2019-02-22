package practice.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by co21321 on 3/17/2017.
 */
@WebServlet(name = "LoadContentServlet", urlPatterns = "/loadContentServlet")
public class LoadContentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.print(returnParagraph());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    private String returnParagraph(){
        String paragraph="";
        long limits=564654454;

        for(long i=0;i<=limits;i++){
            if(i==limits){
                paragraph="  <p>I just wanted to say that my calculation is done and now I can view the content</p>";
            }
        }

        return paragraph;
    }
}
