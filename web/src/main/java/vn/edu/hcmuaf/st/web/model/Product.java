package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class Product implements Serializable {
    private int idProduct;
    private int idCategory;
    private String title;
    private BigDecimal price;
    private Integer discount;
    private Date createAt;
    private Date updateAt;
    private boolean isNewProduct;
    private String description;

    private Category category;
    private List<ProductImage> images;
    private List<ProductVariant> variants;

    private BigDecimal discountedPrice;

    private int totalStock;

    // Constructor rỗng
    public Product() {
    }

    // Constructor đầy đủ
    public Product(int idProduct, int idCategory, String title, BigDecimal price, Integer discount,
                   Date createAt, Date updateAt, boolean isNewProduct, String description) {
        this.idProduct = idProduct;
        this.idCategory = idCategory;
        this.title = title;
        this.price = price;
        this.discount = discount;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.isNewProduct = isNewProduct;
        this.description = description;
    }

    public Product(int idProduct, int idCategory, String title, BigDecimal price, Integer discount
            , Date createAt, Date updateAt
            , boolean isNewProduct, String description
            , Category category, List<ProductImage> images
            , List<ProductVariant> variants) {
        this.idProduct = idProduct;
        this.idCategory = idCategory;
        this.title = title;
        this.price = price;
        this.discount = discount;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.isNewProduct = isNewProduct;
        this.description = description;
        this.category = category;
        this.images = images;
        this.variants = variants;
    }

    public int getTotalStock() {
        if (variants == null || variants.isEmpty()) {
            return 0; // Nếu không có variants, trả về 0
        }
        return variants.stream().mapToInt(ProductVariant::getStockQuantity).sum(); // Tính tổng
    }

    // Getters và Setters

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }

    public boolean isNewProduct() {
        return isNewProduct;
    }

    public void setNewProduct(boolean isNewProduct) {
        this.isNewProduct = isNewProduct;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<ProductImage> getImages() {
        return images;
    }

    public void setImages(List<ProductImage> images) {
        this.images = images;
    }

    public List<ProductVariant> getVariants() {
        return variants;
    }

    public void setVariants(List<ProductVariant> variants) {
        this.variants = variants;
    }

    public void setTotalStock(int totalStock) {
        totalStock = getTotalStock();
        this.totalStock = totalStock;
    }

    public BigDecimal getDiscountedPrice() {
        if (price == null || discount == null) {
            return BigDecimal.ZERO; // Trả về 0 nếu giá hoặc giảm giá không tồn tại
        }
        return price.subtract(price.multiply(BigDecimal.valueOf(discount)).divide(BigDecimal.valueOf(100)));
    }
}
