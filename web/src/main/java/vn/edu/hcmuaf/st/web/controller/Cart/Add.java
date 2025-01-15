package vn.edu.hcmuaf.st.web.controller.Cart;

import jakarta.servlet.annotation.WebServlet;
import vn.edu.hcmuaf.st.web.dao.model.Product;
//import vn.edu.hcmuaf.st.web.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.http.HttpClient;
@WebServlet(name = "Add", value = "/add-cart")

public class Add extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ProductService ps = new ProductService();
//        Product pid = ps.
    }

}
