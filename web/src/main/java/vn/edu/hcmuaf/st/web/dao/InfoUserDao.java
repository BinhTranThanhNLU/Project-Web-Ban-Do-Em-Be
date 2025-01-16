package vn.edu.hcmuaf.st.web.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.st.web.dao.db.JdbiConnect;
import vn.edu.hcmuaf.st.web.model.User;

public class InfoUserDao {
    private final Jdbi jdbi;

    // Constructor to initialize Jdbi instance
    public InfoUserDao() {
        this.jdbi = JdbiConnect.get();
    }

    // Phương thức cập nhật thông tin người dùng
    public boolean updateUser(User user, int idRole) {
        String sql = "UPDATE users SET email = :email, phoneNumber = :phoneNumber, fullName = :fullName, birthDate = :birthDate, avatar = :avatar, idRole = :idRole, password = :password WHERE username = :username";

        int rowsAffected = jdbi.withHandle(handle ->
                handle.createUpdate(sql)
                        .bind("email", user.getEmail())
                        .bind("phoneNumber", user.getPhoneNumber())
                        .bind("fullName", user.getFullName())
                        .bind("birthDate", user.getBirthDate())
                        .bind("avatar", user.getAvatar())
                        .bind("idRole", idRole)
                        .bind("password", user.getPassword())
                        .bind("username", user.getUsername())
                        .execute()
        );
        return rowsAffected > 0;
    }
    public User getUserByUsername(String username) {
        String sql = "SELECT idUser, username, email, phoneNumber, fullName, birthDate, avatar FROM users WHERE username = :username";
        return jdbi.withHandle(handle ->
                handle.createQuery(sql)
                        .bind("username", username)
                        .mapToBean(User.class)
                        .findOne()
                        .orElse(null)
        );
    }

}
