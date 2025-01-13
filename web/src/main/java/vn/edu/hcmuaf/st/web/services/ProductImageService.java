package vn.edu.hcmuaf.st.web.services;

import vn.edu.hcmuaf.st.web.dao.ProductImageDAO;
import vn.edu.hcmuaf.st.web.model.ProductImage;

import java.util.List;

public class ProductImageService {

    private final ProductImageDAO productImageDAO;

    public ProductImageService(ProductImageDAO productImageDAO) {
        this.productImageDAO = productImageDAO;
    }

    public List<ProductImage> getAllProductImages() {
        return productImageDAO.findAll();
    }

    public ProductImage getProductImageById(int id) {
        return productImageDAO.findById(id);
    }

    public void addProductImage(ProductImage productImage) {
        productImageDAO.insert(productImage);
    }

    public void updateProductImage(ProductImage productImage) {
        productImageDAO.update(productImage);
    }

    public void deleteProductImage(int id) {
        productImageDAO.delete(id);
    }
}
