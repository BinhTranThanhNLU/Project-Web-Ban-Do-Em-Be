package vn.edu.hcmuaf.st.web.dao.model;

import java.io.Serializable;

public class Size implements Serializable {
    private int idSize;
    private String name;

    // Constructor rỗng
    public Size() {
    }

    // Constructor đầy đủ
    public Size(int idSize, String name) {
        this.idSize = idSize;
        this.name = name;
    }

    // Getters và Setters
    public int getIdSize() {
        return idSize;
    }

    public void setIdSize(int idSize) {
        this.idSize = idSize;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
