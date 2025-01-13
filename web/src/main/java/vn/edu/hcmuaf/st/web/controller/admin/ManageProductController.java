package vn.edu.hcmuaf.st.web.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.model.Product;
import vn.edu.hcmuaf.st.web.services.ProductService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageProductController", urlPatterns = "/manage-product")
public class ManageProductController extends HttpServlet {

    private final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = productService.getAll();
        req.setAttribute("products", products);
        req.getRequestDispatcher("/other-pages/admin-pages/manage-product.jsp").forward(req, resp);
    }
}
