package vn.edu.hcmuaf.st.web.dao;

import vn.edu.hcmuaf.st.web.dao.model.User;

import java.util.HashMap;
import java.util.Map;

public class UserDao {
    // Lưu trữ dữ liệu người dùng dưới dạng Map
    static Map<String, User> data = new HashMap<>();

    static {
        // Thêm các đối tượng User với đầy đủ thông tin vào Map
        data.put("ti", new User(
                1, // idUser
                2, // idRole
                "ti", // username
                "123", // password
                "Ti Ti", // fullName
                "ti@gmail.com", // email
                "0123456789", // phoneNumber
                true, // active
                "2000-01-01", // birthDate
                "ti-avatar.jpg" // avatar
        ));
        data.put("teo", new User(
                2,
                2,
                "teo",
                "123",
                "Teo Teo",
                "teo@gmail.com",
                "0987654321",
                true,
                "1999-05-15",
                "teo-avatar.jpg"
        ));
        data.put("user", new User(
                3,
                3,
                "user",
                "123",
                "User Name",
                "user@example.com",
                "0912345678",
                false,
                "1998-12-30",
                "user-avatar.png"
        ));
    }

    // Tìm User theo username
    public User findUsername(String username) {
        return data.get(username);
    }
}
