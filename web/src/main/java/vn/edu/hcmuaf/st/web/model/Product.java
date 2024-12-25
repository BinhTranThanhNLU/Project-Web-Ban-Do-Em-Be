package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;

public class Product implements Serializable {

    private int idProduct;
    private int idCategory;
    private String title;
    private double price;
    private Integer discount; // Dùng Integer để hỗ trợ null
    private String createAt;
    private String updateAt;
    private boolean isNew;
    private String description;

    // Constructor rỗng
    public Product() {
    }

    // Constructor đầy đủ
    public Product(int idProduct, int idCategory, String title, double price, Integer discount, String createAt, String updateAt, boolean isNew, String description) {
        this.idProduct = idProduct;
        this.idCategory = idCategory;
        this.title = title;
        this.price = price;
        this.discount = discount;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.isNew = isNew;
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" +
                "idProduct=" + idProduct +
                ", idCategory=" + idCategory +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", discount=" + discount +
                ", createAt='" + createAt + '\'' +
                ", updateAt='" + updateAt + '\'' +
                ", isNew=" + isNew +
                ", description='" + description + '\'' +
                '}';
    }
}

