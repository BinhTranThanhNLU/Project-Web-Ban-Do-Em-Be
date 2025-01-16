package vn.edu.hcmuaf.st.web.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.model.Product;
import vn.edu.hcmuaf.st.web.services.ProductService;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

@WebServlet(name = "HomeController", urlPatterns = "/home")
public class HomeController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService productService = new ProductService();
        List<Product> products = productService.getProductsByCategory("áo bé gái");
        List<Product> product1s = productService.getProductsByCategory("Váy Bé Gái");
        List<Product> product2s = productService.getProductsByCategory("Đồ bộ bé trai");
        List<Product> product3s = productService.getProductsByCategory("Quần Bé gái");
        List<Product> product4s = productService.getProductsByCategory("Áo Bé trai");
        List<Product> product5s = productService.getProductsByCategory("Quần Bé trai");

        // Truyền danh sách sản phẩm sang JSP
        request.setAttribute("products", products);
        request.setAttribute("product1s", product1s);
        request.setAttribute("product2s", product2s);
        request.setAttribute("product3s", product3s);
        request.setAttribute("product4s", product4s);
        request.setAttribute("product5s", product5s);

        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
