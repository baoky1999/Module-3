import services.IServiceConverter;
import services.iml.ConverterService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name = "MainController", value = "/main")
public class MainController extends HttpServlet {
    IServiceConverter iServiceConverter = new ConverterService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        double rate = Double.parseDouble(request.getParameter("rate"));
        double usd = Double.parseDouble(request.getParameter("usd"));

        double vnd = iServiceConverter.convert(rate,usd);

        request.setAttribute("converter", vnd);
        request.setAttribute("rate",rate);
        request.setAttribute("usd",usd);

        request.getRequestDispatcher("converter.jsp").forward(request,response);
    }
}
