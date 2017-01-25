
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Beep xD
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        out.println("<h1>Error 404: Webpage not found.</h1>");
        request.getRequestDispatcher("Error.jsp").include(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        if(username.equals("admin")){
            HttpSession session = request.getSession();
            session.setAttribute("USERNAME", username);
            session.setAttribute("PASSWORD", password);
            request.getRequestDispatcher("Home.jsp").include(request, response);
        }else if(username.equals("abcde")){
            HttpSession session = request.getSession();
            session.setAttribute("USERNAME", username);
            session.setAttribute("PASSWORD", password);
            request.getRequestDispatcher("Home.jsp").include(request, response);
        }else{
            PrintWriter out = response.getWriter();
            out.println("<h1>Invalid login credentials</h1>");
            request.getRequestDispatcher("Error.jsp").include(request, response);
        }
    }
}
