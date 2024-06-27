import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

@WebServlet (name = "TranslateServlet", urlPatterns = "/translate")
public class TranslationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictionary = new HashMap<String, String>();
        dictionary.put("English", "Tiếng Anh");
        dictionary.put("Hello", "Xin chào");
        dictionary.put("How", "Thế nào");
        dictionary.put("Book", "Quyển vở");
        dictionary.put("Computer", "Máy tính");
        String search = request.getParameter("txtSearch");
        PrintWriter write = response.getWriter();
        write.println("<html>");
        String result = dictionary.get(search);
        if (result != null) {
            write.println("<h2> Word: " + search + "</h2>");
            write.println("<h2> Result: " + result + "</h2>");
        } else {
            write.println("Not found");
        }
        write.println("</html>");
    }
}
