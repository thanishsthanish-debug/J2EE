/*6c. Build a servlet program to check the given number is prime number or not using HTML with step by step procedure.*/
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/PrimeServlet")
public class PrimeServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Read input from HTML form
        String numStr = request.getParameter("number");
        int num = Integer.parseInt(numStr);

        // Check prime
        boolean isPrime = true;
        if (num <= 1) {
            isPrime = false;
        } else {
            for (int i = 2; i <= Math.sqrt(num); i++) {
                if (num % i == 0) {
                    isPrime = false;
                    break;
                }
            }
        }

        // Display result
        out.println("<html><body>");
        out.println("<h2>Prime Number Result</h2>");
        if (isPrime) {
            out.println(num + " is a Prime Number.");
        } else {
            out.println(num + " is NOT a Prime Number.");
        }
        out.println("</body></html>");
    }
}
