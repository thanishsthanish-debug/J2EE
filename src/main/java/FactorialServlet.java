/*6a. Build a servlet program to find the factorial of a number using HTML with step by step procedure.*/

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/FactorialServlet")   // Annotation replaces web.xml mapping
public class FactorialServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Read input from HTML form
        String numStr = request.getParameter("number");
        int num = Integer.parseInt(numStr);

        // Calculate factorial
        long fact = 1;
        for (int i = 1; i <= num; i++) {
            fact *= i;
        }

        // Display result
        out.println("<html><body>");
        out.println("<h2>Factorial Result</h2>");
        out.println("Factorial of " + num + " is: " + fact);
        out.println("</body></html>");
    }
}
