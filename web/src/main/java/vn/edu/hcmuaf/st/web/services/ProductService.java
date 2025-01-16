package vn.edu.hcmuaf.st.web.services;

import vn.edu.hcmuaf.st.web.dao.ProductDAO;
import vn.edu.hcmuaf.st.web.model.Product;

import java.util.List;

public class ProductService {

    private final ProductDAO productDAO;

    public ProductService() {
        this.productDAO = new ProductDAO();
    }

    public List<Product> getProductsByCategory(String categoryName) {
        return productDAO.findProductsByCategory(categoryName);
    }

    public List<Product> getAllDetailedProducts() {
        return productDAO.findAllDetailedProducts();
    }

    public Product getProductById(int id) {
        return productDAO.findById(id);
    }

    public boolean addProduct(Product product) {
        return productDAO.insert(product);
    }

    public boolean updateProduct(Product product) {
        return productDAO.update(product);
    }

    public boolean deleteProduct(int id) {
        return productDAO.delete(id);
    }

    public List<Product> getAllProducts() {
        return productDAO.findAll();
    }
    public List<Product> searchProductsByName(String name) {
        return productDAO.searchProductsByName(name);
    }
    public static void main(String[] args) {

    }
}
