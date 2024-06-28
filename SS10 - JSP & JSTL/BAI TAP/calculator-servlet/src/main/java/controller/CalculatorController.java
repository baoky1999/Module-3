package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet (name = "CalculatorController", value = "/calculator")
public class CalculatorController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("calculator/calculator.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
        try {
            float first = Float.parseFloat(request.getParameter("first"));
            float second = Float.parseFloat(request.getParameter("second"));
            String operator = request.getParameter("operators");
            request.setAttribute("first", first);
            request.setAttribute("second", second);
            request.setAttribute("operator", operator);
            request.getRequestDispatcher("calculator/result.jsp").forward(request,response);
        } catch (Exception e) {
            writer.println("ERROR: Incorrect input data format");
        }

    }
}
