package vn.edu.hcmuaf.st.web.services;

import vn.edu.hcmuaf.st.web.dao.ProductDAO;
import vn.edu.hcmuaf.st.web.dao.ProductVariantDAO;
import vn.edu.hcmuaf.st.web.model.Color;
import vn.edu.hcmuaf.st.web.model.Product;
import vn.edu.hcmuaf.st.web.model.ProductImage;
import vn.edu.hcmuaf.st.web.model.Size;

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

//    public Product getProductDetailsById(int idProduct) {
//        Product product = productDAO.findProductDetailsById(idProduct);
//        if (product != null) {
//            ProductVariantDAO variantDAO = new ProductVariantDAO();
//            // Gắn hình ảnh
//            List<ProductImage> images = variantDAO.findImagesByProductId(idProduct);
//            product.setImages(images);
//            // Gắn danh sách màu sắc
//            List<Color> colors = variantDAO.findColorsByProductId(idProduct);
//            product.setColors(colors); // Sử dụng setter mới
//            // Gắn danh sách kích thước
//            List<Size> sizes = variantDAO.findSizesByProductId(idProduct);
//            product.setSizes(sizes); // Sử dụng setter mới
//        }
//        return product;
//    }
public Product getProductDetailsById(int idProduct) {
    Product product = productDAO.findProductDetailsById(idProduct);
    if (product != null) {
        ProductVariantDAO variantDAO = new ProductVariantDAO();
        // Gắn hình ảnh
        List<ProductImage> images = variantDAO.findImagesByProductId(idProduct);
        product.setImages(images);
        // Gắn danh sách màu sắc
        List<Color> colors = variantDAO.findColorsByProductId(idProduct);
        product.setColors(colors); // Sử dụng setter mới
        // Gắn danh sách kích thước
        List<Size> sizes = variantDAO.findSizesByProductId(idProduct);
        product.setSizes(sizes); // Sử dụng setter mới
    }
    return product;
}
    public List<Color> getColorsByProductId(int idProduct) {
        ProductVariantDAO variantDAO = new ProductVariantDAO();
        return variantDAO.findColorsByProductId(idProduct);
    }
    public List<Size> getSizesByProductId(int idProduct) {
        ProductVariantDAO variantDAO = new ProductVariantDAO();
        return variantDAO.findSizesByProductId(idProduct);
    }


    public static void main(String[] args) {

    }

}
