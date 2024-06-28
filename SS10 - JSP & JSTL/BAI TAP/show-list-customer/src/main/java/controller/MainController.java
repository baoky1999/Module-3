package controller;

import model.Customer;
import service.IServiceCustomer;
import service.iml.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (name = "MainController", value = "/customer")
public class MainController extends HttpServlet {

    private static IServiceCustomer serviceCustomer = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customer = serviceCustomer.getAll();
        request.setAttribute("customers", customer);
        request.getRequestDispatcher("/customers/list.jsp").forward(request, response);
    }

}
