package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;

public class Category implements Serializable {
    private int idCategory;
    private String name;
    private Integer parentIdCategory;

    // Constructor rỗng
    public Category() {
    }

    // Constructor đầy đủ
    public Category(int idCategory, String name, Integer parentIdCategory) {
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

    public Integer getParentIdCategory() {
        return parentIdCategory;
    }

    public void setParentIdCategory(Integer parentIdCategory) {
        this.parentIdCategory = parentIdCategory;
    }
}

