package vn.edu.hcmuaf.st.web.controller;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.model.Product;
import vn.edu.hcmuaf.st.web.services.ProductService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProductController", urlPatterns = "/list-product")
public class ListProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductService productService = new ProductService();
        List<Product> product1s = productService.getProductsByCategory("Váy Bé Gái");
        req.setAttribute("product1s", product1s);
        req.getRequestDispatcher("/other-pages/be-gai.jsp").forward(req, resp);
    }


}
