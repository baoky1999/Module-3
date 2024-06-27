import repositories.DictionaryRepo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name = "MaiController", urlPatterns = "/dictionary")
public class MainController extends HttpServlet {
    DictionaryRepo repo = new DictionaryRepo();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String input = request.getParameter("search");
        repo.getDictionary();
        String result = repo.find(input);

        if (result != null) {
            request.setAttribute("search", input);
            request.setAttribute("result", result);
            request.getRequestDispatcher("result.jsp").forward(request,response);
        } else {
            request.setAttribute("notfind","Not Found");
            request.getRequestDispatcher("notfind.jsp").forward(request,response);
        }
    }
}
