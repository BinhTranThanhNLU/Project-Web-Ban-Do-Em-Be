package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;
import java.util.Date;

public class ProductImage implements Serializable {
    private int idImage;
    private int idProduct;
    private String imageUrl;
    private boolean isPrimary;
    private Date createAt;

    private Product product;

    // Constructor rỗng
    public ProductImage() {
    }

    // Constructor đầy đủ
    public ProductImage(int idImage, int idProduct, String imageUrl, boolean isPrimary, Date createAt) {
        this.idImage = idImage;
        this.idProduct = idProduct;
        this.imageUrl = imageUrl;
        this.isPrimary = isPrimary;
        this.createAt = createAt;
    }

    public ProductImage(int idImage, int idProduct, String imageUrl, boolean isPrimary, Date createAt, Product product) {
        this.idImage = idImage;
        this.idProduct = idProduct;
        this.imageUrl = imageUrl;
        this.isPrimary = isPrimary;
        this.createAt = createAt;
        this.product = product;
    }

    // Getters và Setters

    public int getIdImage() {
        return idImage;
    }

    public void setIdImage(int idImage) {
        this.idImage = idImage;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public boolean isPrimary() {
        return isPrimary;
    }

    public void setPrimary(boolean primary) {
        isPrimary = primary;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
