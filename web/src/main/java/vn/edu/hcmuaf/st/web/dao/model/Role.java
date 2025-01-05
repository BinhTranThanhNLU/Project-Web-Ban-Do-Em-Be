package vn.edu.hcmuaf.st.web.dao.model;

import java.io.Serializable;

public class Role implements Serializable {
    private int idRole;
    private String name;

    // Constructor rỗng
    public Role() {
    }

    // Constructor đầy đủ
    public Role(int idRole, String name) {
        this.idRole = idRole;
        this.name = name;
    }

    // Getter và Setter
    public int getIdRole() {
        return idRole;
    }

    public void setIdRole(int idRole) {
        this.idRole = idRole;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // toString (tùy chọn, để dễ dàng kiểm tra)
    @Override
    public String toString() {
        return "Role{" +
                "idRole=" + idRole +
                ", name=" + name +
                '}';
    }
}

