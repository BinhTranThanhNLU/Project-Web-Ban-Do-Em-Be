package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;

public class Color implements Serializable {
    private int idColor;
    private String name;
    private String hexCode;

    // Constructor rỗng
    public Color() {
    }

    // Constructor đầy đủ
    public Color(int idColor, String name, String hexCode) {
        this.idColor = idColor;
        this.name = name;
        this.hexCode = hexCode;
    }

    // Không có getter và setter theo yêu cầu
}

