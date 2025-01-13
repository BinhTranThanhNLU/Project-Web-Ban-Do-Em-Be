package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;
import java.util.List;

public class Category implements Serializable {
    private int idCategory;
    private String name;
    private int parentIdCategory;

    private Category parentCategory;
    private List<Category> subCategories;
    private List<Product> products;

    // Constructor rỗng
    public Category() {
    }

    // Constructor đầy đủ
    public Category(int idCategory, String name, int parentIdCategory) {
        this.idCategory = idCategory;
        this.name = name;
        this.parentIdCategory = parentIdCategory;
    }

    // Getters và Setters

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setParentIdCategory(int parentIdCategory) {
        this.parentIdCategory = parentIdCategory;
    }

    public Category getParentCategory() {
        return parentCategory;
    }

    public void setParentCategory(Category parentCategory) {
        this.parentCategory = parentCategory;
    }

    public List<Category> getSubCategories() {
        return subCategories;
    }

    public void setSubCategories(List<Category> subCategories) {
        this.subCategories = subCategories;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}

