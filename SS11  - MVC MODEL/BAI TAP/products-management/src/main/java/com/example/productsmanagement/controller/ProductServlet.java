package com.example.productsmanagement.controller;

import com.example.productsmanagement.model.Product;
import com.example.productsmanagement.service.IProductsService;
import com.example.productsmanagement.service.iml.IProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductService", urlPatterns = "/productsss")
public class ProductServlet extends HttpServlet {

    IProductsService productService = new IProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateProduct(request, response);
                break;
            case "edit":
                showUpdateProduct(request, response);
                break;
            case "delete":
                showDeleteProduct(request, response);
                break;
            case "view-detail":
                viewProductDetail(request, response);
                break;
            default:
                viewAllProduct(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "edit":
                updateCustomer(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            case "search":
                findProduct(request, response);
                break;
            default:
                break;
        }
    }

    private void viewAllProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> products = productService.findAll();
        request.setAttribute("products", products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("products/view-all.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showCreateProduct(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("products/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showDeleteProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher dispatcher;
        if (product == null) {
            dispatcher = request.getRequestDispatcher("products/error-404.jsp");
        } else {
            request.setAttribute("product", product);
            dispatcher = request.getRequestDispatcher("products/delete.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showUpdateProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher dispatcher;
        if (product == null) {
            dispatcher = request.getRequestDispatcher("products/error-404.jsp");
        } else {
            request.setAttribute("product", product);
            dispatcher = request.getRequestDispatcher("products/update.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void viewProductDetail(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher dispatcher;
        if (product == null) {
            dispatcher = request.getRequestDispatcher("products/error-404.jsp");
        } else {
            request.setAttribute("product", product);
            dispatcher = request.getRequestDispatcher("products/view-detail.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void findProduct(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        Product product = productService.findByName(name);
        RequestDispatcher dispatcher;
        if (product == null) {
            dispatcher = request.getRequestDispatcher("products/error-404.jsp");
        } else {
            request.setAttribute("product", product);
            dispatcher = request.getRequestDispatcher("products/view-detail.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = (int) (Math.random() * 10000);
        String name = request.getParameter("name");
        String producer = request.getParameter("producer");
        double price = Double.parseDouble(request.getParameter("price"));
        String image = request.getParameter("image");
        Product product = new Product(id, name, producer, price, image);
        productService.save(product);
        request.setAttribute("message", "New product was created");
        RequestDispatcher dispatcher = request.getRequestDispatcher("products/viewmessage.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String producer = request.getParameter("producer");
        double price = Double.parseDouble(request.getParameter("price"));
        String image = request.getParameter("image");

        Product product = productService.findById(id);

        if (product == null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("error-404.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            product.setName(name);
            product.setProducer(producer);
            product.setPrice(price);
            product.setImage(image);

            productService.update(id, product);

            request.setAttribute("product", product);
            request.setAttribute("message", "Product information was updated");

            RequestDispatcher dispatcher = request.getRequestDispatcher("products/viewmessage.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                throw new RuntimeException(e);
            }
        }
    }


    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher dispatcher;
        if (product == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            productService.remove(id);
            try {
                response.sendRedirect("productsss");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}
