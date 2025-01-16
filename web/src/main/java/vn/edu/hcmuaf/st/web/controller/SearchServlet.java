package vn.edu.hcmuaf.st.web.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import vn.edu.hcmuaf.st.web.model.Product;
import vn.edu.hcmuaf.st.web.services.ProductService;

import java.io.IOException;
import java.util.List;
@WebServlet(name = "SearchServlet", urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    private ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        List<Product> products;

        // Kiểm tra nếu name null hoặc rỗng
        if (name == null || name.trim().isEmpty()) {
            // Trả về toàn bộ danh sách sản phẩm
            products = productService.getAllProducts();
        } else {
            // Tìm kiếm sản phẩm theo tên
            products = productService.searchProductsByName(name.trim());
        }

        // Gán kết quả tìm kiếm cho request
        request.setAttribute("products", products);

        // Chuyển hướng tới trang JSP hiển thị
        request.getRequestDispatcher("other-pages/search.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response); // Gọi lại doGet để tránh lặp mã
    }

}


