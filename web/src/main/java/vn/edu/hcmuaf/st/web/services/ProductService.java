package vn.edu.hcmuaf.st.web.services;

import vn.edu.hcmuaf.st.web.dao.ProductDAO;
import vn.edu.hcmuaf.st.web.model.Product;

import java.util.List;

public class ProductService {

    // Sử dụng ProductDAO như một thuộc tính tĩnh
    static ProductDAO dao = ProductDAO.getInstance();

    // Lấy tất cả sản phẩm
    public List<Product> getAll() {
        return dao.findAll();
    }

    // Lấy chi tiết sản phẩm theo ID (dưới dạng String)
    public Product getDetail(String in) {
        try {
            int id = Integer.parseInt(in); // Chuyển đổi String sang Integer
            return dao.findById(id);
        } catch (NumberFormatException e) {
            // Nếu không thể chuyển đổi, trả về null
            return null;
        }
    }

    // Thêm sản phẩm mới
    public boolean addProduct(Product product) {
        return dao.insert(product);
    }

    // Cập nhật thông tin sản phẩm
    public boolean updateProduct(Product product) {
        return dao.update(product);
    }

    // Xóa sản phẩm theo ID
    public boolean deleteProduct(String in) {
        try {
            int id = Integer.parseInt(in); // Chuyển đổi String sang Integer
            return dao.delete(id);
        } catch (NumberFormatException e) {
            // Nếu không thể chuyển đổi, trả về false
            return false;
        }
    }
}
