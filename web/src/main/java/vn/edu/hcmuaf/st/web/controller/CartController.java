package vn.edu.hcmuaf.st.web.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.json.JSONObject;
import vn.edu.hcmuaf.st.web.model.Cart;
import vn.edu.hcmuaf.st.web.model.CartItem;
import vn.edu.hcmuaf.st.web.model.Product;
import vn.edu.hcmuaf.st.web.model.ProductVariant;
import vn.edu.hcmuaf.st.web.services.ProductService;


import java.io.IOException;

@WebServlet(name = "CartController", urlPatterns = "/giohang")
public class CartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        req.getRequestDispatcher("/other-pages/gio-hang.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        resp.setContentType("application/json");

        try {
            // Đọc dữ liệu JSON từ request body
            StringBuilder jsonData = new StringBuilder();
            String line;
            while ((line = req.getReader().readLine()) != null) {
                jsonData.append(line);
            }

            // Phân tích JSON
            JSONObject jsonObject = new JSONObject(jsonData.toString());
            int productId = jsonObject.getInt("productId");
            int quantity = jsonObject.getInt("quantity");

            // Lấy giỏ hàng từ session
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }

            // Lấy thông tin sản phẩm từ database
            ProductService productService = new ProductService();
            Product product = productService.getProductDetailsById(productId);

            if (product != null) {
                // Tạo CartItem và thêm vào giỏ
                ProductVariant variant = new ProductVariant();
                variant.setProduct(product);

                CartItem cartItem = new CartItem(variant, quantity);
                cart.add(cartItem);

                // Cập nhật lại session
                session.setAttribute("cart", cart);

                // Trả về kết quả thành công
                resp.getWriter().write("{\"success\": true}");
            } else {
                resp.getWriter().write("{\"success\": false, \"message\": \"Product not found\"}");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().write("{\"success\": false, \"message\": \"An error occurred\"}");
        }
    }
}
