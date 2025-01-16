package vn.edu.hcmuaf.st.web.controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.model.Color;
import vn.edu.hcmuaf.st.web.model.Product;
import vn.edu.hcmuaf.st.web.model.Size;
import vn.edu.hcmuaf.st.web.services.ColorService;
import vn.edu.hcmuaf.st.web.services.ProductService;
import vn.edu.hcmuaf.st.web.services.SizeService;
import java.io.IOException;
import java.util.List;
@WebServlet(name = "ProductDetailController", urlPatterns = "/product-detail")
public class ProductDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idParam = req.getParameter("id");
        System.out.println("Received ID: " + idParam);
        if (idParam == null || idParam.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing product ID");
            return;
        }
        try {
            int id = Integer.parseInt(idParam);
            // Lấy thông tin chi tiết sản phẩm
            ProductService productService = new ProductService();
            Product product = productService.getProductDetailsById(id);
            if (product == null) {
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
                return;
            }
            // Đưa sản phẩm vào request và chuyển tiếp tới JSP
            req.setAttribute("product", product);
            // Chuyển hướng tới trang chi tiết sản phẩm
            req.getRequestDispatcher("/other-pages/chi-tiet-san-pham.jsp").forward(req, resp);
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID");
        }
    }
}
