package cloud.developing.messenger;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author asmolnik
 */
@WebServlet({"/send"})
public class SenderServlet extends HttpServlet {

    private static final long serialVersionUID = 5453258143334L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("status", request.getParameter("url");
/*        request.setAttribute("status", "OK");*/
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
