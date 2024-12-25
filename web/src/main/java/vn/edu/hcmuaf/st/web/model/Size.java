package vn.edu.hcmuaf.st.web.model;

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

    // toString() để hiển thị thông tin (tùy chọn)
    @Override
    public String toString() {
        return "Size{" +
                "idSize=" + idSize +
                ", name='" + name + '\'' +
                '}';
    }
}

