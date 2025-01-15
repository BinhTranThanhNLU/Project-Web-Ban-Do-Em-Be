package vn.edu.hcmuaf.st.web.services;

import vn.edu.hcmuaf.st.web.dao.ProductVariantDAO;
import vn.edu.hcmuaf.st.web.model.ProductVariant;

import java.util.List;

public class ProductVariantService {

    private final ProductVariantDAO productVariantDAO;

    public ProductVariantService() {
        this.productVariantDAO = new ProductVariantDAO();
    }

    public List<ProductVariant> getAllProductVariants() {
        return productVariantDAO.findAll();
    }

    public ProductVariant getProductVariantById(int id) {
        return productVariantDAO.findById(id);
    }

    public void addProductVariant(ProductVariant productVariant) {
        productVariantDAO.insert(productVariant);
    }

    public void updateProductVariant(ProductVariant productVariant) {
        productVariantDAO.update(productVariant);
    }

    public void deleteProductVariant(int id) {
        productVariantDAO.delete(id);
    }
}
