/*8b. Build a servlet program to create a cookie to get your name through text box and press submit button( through HTML) to display the message by greeting Welcome back your name ! ,
 *  you have visited this page n times ( n = number of your visit ) along with the list of cookies and its setvalues and demonstrate the expiry of cookie also.*/

package eight;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/cookieDemo")
public class CookieServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("username");
        int visitCount = 1;

        // Read existing cookies
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie c : cookies) {

                if (c.getName().equals("visitCount")) {
                    visitCount = Integer.parseInt(c.getValue()) + 1;
                }

                if (c.getName().equals("username")) {
                    name = c.getValue(); // retain old name
                }
            }
        }

        // Create/Update cookies
        Cookie nameCookie = new Cookie("username", name);
        Cookie countCookie = new Cookie("visitCount", String.valueOf(visitCount));

        // Set expiry (demo: 30 seconds)
        nameCookie.setMaxAge(30);
        countCookie.setMaxAge(30);

        response.addCookie(nameCookie);
        response.addCookie(countCookie);

        // Output response
        out.println("<html><body>");

        out.println("<h2>Welcome back " + name + "!</h2>");
        out.println("<h3>You have visited this page " + visitCount + " times.</h3>");

        out.println("<h3>Cookie List with Values:</h3>");

        if (cookies != null) {
            for (Cookie c : cookies) {
                out.println("<p>");
                out.println("Name: " + c.getName() + "<br>");
                out.println("Value: " + c.getValue() + "<br>");
                out.println("</p><hr>");
            }
        } else {
            out.println("<p>No cookies available</p>");
        }

        out.println("<p>(Cookies expire in 30 seconds)</p>");
        out.println("</body></html>");
    }
}