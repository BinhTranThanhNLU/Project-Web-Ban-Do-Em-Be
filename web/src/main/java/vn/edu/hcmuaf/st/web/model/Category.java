package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;

public class Category implements Serializable {
    private int idCategory;
    private String name;
    private Integer parentIdCategory;

    // Constructor
    public Category() {
    }

    // Constructor
    public Category(int idCategory, String name, Integer parentIdCategory) {
        this.idCategory = idCategory;
        this.name = name;
        this.parentIdCategory = parentIdCategory;
    }


}
