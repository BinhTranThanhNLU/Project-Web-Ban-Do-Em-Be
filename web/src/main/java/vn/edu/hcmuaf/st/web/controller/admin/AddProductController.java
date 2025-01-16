package vn.edu.hcmuaf.st.web.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import vn.edu.hcmuaf.st.web.model.*;
import vn.edu.hcmuaf.st.web.services.*;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@WebServlet(name = "AddProductController", urlPatterns = "/manage-product/add-product")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10,      // 10MB
        maxRequestSize = 1024 * 1024 * 50    // 50MB
)

public class AddProductController extends HttpServlet {

    private final CategoryService categoryService = new CategoryService();
    private final ColorService colorService = new ColorService();
    private final SizeService sizeService = new SizeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categories = categoryService.getAllCategories();
        req.setAttribute("categories", categories);

        // Lấy danh sách color
        List<Color> colors = colorService.getAllColors();
        req.setAttribute("colors", colors);

        // Lấy danh sách size
        List<Size> sizes = sizeService.getAllSizes();
        req.setAttribute("sizes", sizes);

        req.getRequestDispatcher("/other-pages/admin-pages/add-product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Lấy dữ liệu từ form
            String title = req.getParameter("title");
            String priceStr = req.getParameter("price");
            String discountStr = req.getParameter("discount");
            String idCategoryStr = req.getParameter("idCategory");
            String description = req.getParameter("description");
            String isNewStr = req.getParameter("isNew");

            // Xử lý file ảnh (nếu có)
            Part filePart = req.getPart("productImage");
            String fileName = extractFileName(filePart);
            String imageUrl;

            if (fileName != null && !fileName.isEmpty()) {
                String uploadDir = "E:/uploads"; // Đường dẫn cố định trên server
                File uploadFolder = new File(uploadDir);
                if (!uploadFolder.exists()) uploadFolder.mkdirs();

                String uniqueFileName = UUID.randomUUID().toString() + "_" + fileName;
                String filePath = uploadDir + File.separator + uniqueFileName;
                filePart.write(filePath);

                imageUrl = "uploads/" + uniqueFileName;
            } else {
                imageUrl = "/static/images/default-product.png";
            }

            // Kiểm tra và chuyển đổi dữ liệu
            List<String> errorMessages = new ArrayList<>();

            // Kiểm tra danh mục
            int idCategory = 0;
            if (idCategoryStr == null || idCategoryStr.trim().isEmpty()) {
                errorMessages.add("Vui lòng chọn danh mục sản phẩm.");
            } else {
                try {
                    idCategory = Integer.parseInt(idCategoryStr);
                } catch (NumberFormatException e) {
                    errorMessages.add("Danh mục sản phẩm không hợp lệ.");
                }
            }

            // Kiểm tra giá sản phẩm
            BigDecimal price = BigDecimal.ZERO;
            if (priceStr == null || priceStr.trim().isEmpty()) {
                errorMessages.add("Vui lòng nhập giá sản phẩm.");
            } else {
                try {
                    price = new BigDecimal(priceStr);
                    if (price.compareTo(BigDecimal.ZERO) <= 0) {
                        errorMessages.add("Giá sản phẩm phải lớn hơn 0.");
                    }
                } catch (NumberFormatException e) {
                    errorMessages.add("Giá sản phẩm không hợp lệ.");
                }
            }

            // Kiểm tra giảm giá
            Integer discount = null;
            if (discountStr != null && !discountStr.trim().isEmpty()) {
                try {
                    discount = Integer.parseInt(discountStr);
                    if (discount < 0 || discount > 100) {
                        errorMessages.add("Giảm giá phải nằm trong khoảng từ 0 đến 100.");
                    }
                } catch (NumberFormatException e) {
                    errorMessages.add("Giảm giá không hợp lệ.");
                }
            }

            // Kiểm tra trạng thái mới
            boolean isNew = "1".equals(isNewStr);

            // Kiểm tra tiêu đề
            if (title == null || title.trim().isEmpty()) {
                errorMessages.add("Vui lòng nhập tên sản phẩm.");
            }

            // Kiểm tra mô tả
            if (description == null || description.trim().isEmpty()) {
                errorMessages.add("Vui lòng nhập mô tả sản phẩm.");
            }

            // Nếu có lỗi, trả về form với thông báo lỗi
            if (!errorMessages.isEmpty()) {
                req.getSession().setAttribute("message", errorMessages);
                resp.sendRedirect(req.getContextPath() + "/manage-product/add-product");
                return;
            }

            // Tạo đối tượng Product
            Product product = new Product();
            product.setTitle(title);
            product.setPrice(price);
            product.setDiscount(discount);
            product.setIdCategory(idCategory);
            product.setDescription(description);
            product.setNewProduct(isNew);
            product.setCreateAt(new java.sql.Date(System.currentTimeMillis()));

            // Gọi DAO để thêm sản phẩm
            ProductService productService = new ProductService();
            boolean success = productService.addProduct(product);

            // Lưu ảnh sản phẩm nếu thêm thành công
            if (success) {
                ProductImageService productImageService = new ProductImageService();
                ProductImage productImage = new ProductImage();
                productImage.setIdProduct(product.getIdProduct()); // Lấy ID của sản phẩm vừa thêm
                productImage.setImageUrl(imageUrl);
                productImage.setPrimary(true);
                productImage.setCreateAt(new java.sql.Date(System.currentTimeMillis()));
                productImageService.addProductImage(productImage);

                req.getSession().setAttribute("message", "Thêm sản phẩm thành công!");
                req.getSession().setAttribute("success", true);
            } else {
                req.getSession().setAttribute("message", "Thêm sản phẩm thất bại. Vui lòng thử lại.");
                req.getSession().setAttribute("success", false);
            }
        } catch (Exception e) {
            req.getSession().setAttribute("message", "Đã xảy ra lỗi. Vui lòng kiểm tra lại!");
            req.getSession().setAttribute("success", false);
            e.printStackTrace();
        }

        resp.sendRedirect(req.getContextPath() + "/manage-product/add-product");

    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String content : contentDisp.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return null;
    }
}
