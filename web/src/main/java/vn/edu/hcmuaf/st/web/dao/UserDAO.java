package vn.edu.hcmuaf.st.web.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.st.web.dao.db.DBProperties;
import vn.edu.hcmuaf.st.web.dao.db.JdbiConnect;
import vn.edu.hcmuaf.st.web.model.User;
import vn.edu.hcmuaf.st.web.model.Role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class UserDAO {

    private static UserDAO instance;

    private UserDAO() {
    }

    public static synchronized UserDAO getInstance() {
        if (instance == null) {
            instance = new UserDAO();
        }
        return instance;
    }

    public List<User> getAll() {
        Jdbi jdbi = JdbiConnect.get();
        String query = "" +
                "SELECT idUser, idRole, username,fullname,email,phoneNumber,active,birthDate " +
                "FROM users";
        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .mapToBean(User.class)
                        .list()
        );
    }

    public List<User> getEmployeeList() {
        Jdbi jdbi = JdbiConnect.get();
        String query = """
        SELECT 
            u.idUser AS idUser, 
            u.idRole AS idRole, 
            u.fullName AS fullName, 
            r.name AS roleName, 
            u.email AS email,  
            u.phoneNumber AS phoneNumber, 
            u.birthDate AS birthDate, 
            CASE WHEN u.active = 1 THEN 'Hoạt động' ELSE 'Không hoạt động' END AS status 
        FROM users u 
        INNER JOIN roles r ON u.idRole = r.idRole
        WHERE r.`name` = 'nhân viên'
        ORDER BY u.idUser;
    """;

        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .map((rs, ctx) -> {
                            Role role = new Role(rs.getInt("idRole"), rs.getString("roleName")); // Tạo đối tượng Role
                            return new User(
                                    rs.getInt("idUser"),
                                    rs.getInt("idRole"),
                                    "", // Không cần username
                                    "", // Không cần password
                                    rs.getString("fullName"),
                                    rs.getString("email"),
                                    rs.getString("phoneNumber"),
                                    rs.getString("status").equals("Hoạt động"),
                                    rs.getString("birthDate"),
                                    null, // Không cần avatar
                                    role // Gán Role vào User
                            );
                        })
                        .list()
        );
    }

    public User getUserByUsernameAndPassword(String username, String password) {
        String query = "SELECT idUser, idRole, username, password, fullName, email, phoneNumber, active, birthDate, avatar " +
                "FROM users WHERE username = ? AND password = ?";
        try (Connection conn = DBProperties.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                // Tạo đối tượng User từ dữ liệu cơ sở dữ liệu
                return new User(
                        rs.getInt("idUser"),
                        rs.getInt("idRole"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("fullName"),
                        rs.getString("email"),
                        rs.getString("phoneNumber"),
                        rs.getBoolean("active"),
                        rs.getString("birthDate"),
                        rs.getString("avatar"),
                        new Role(rs.getInt("idRole"), "Admin") // Ví dụ đơn giản về Role
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null; // Không tìm thấy người dùng
    }

    //Thanh Binh
    public boolean addEmployee(int idRole, String username, String password, String fullName, String email, String phoneNumber, boolean active, String avatar, java.sql.Date birthDate) {
        String query = "INSERT INTO users (idRole, username, password, fullName, email, phoneNumber, active, avatar, birthDate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            Jdbi jdbi = JdbiConnect.get();
            return jdbi.withHandle(handle ->
                    handle.createUpdate(query)
                            .bind(0, idRole)
                            .bind(1, username)
                            .bind(2, password)
                            .bind(3, fullName)
                            .bind(4, email)
                            .bind(5, phoneNumber)
                            .bind(6, active ? 1 : 0)
                            .bind(7, avatar)
                            .bind(8, birthDate)
                            .execute()
            ) > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    //Thanh Binh
    public boolean isUsernameExists(String username) {
        Jdbi jdbi = JdbiConnect.get(); // Kết nối Jdbi
        String query = "SELECT COUNT(*) FROM users WHERE username = :username";
        try {
            return jdbi.withHandle(handle ->
                    handle.createQuery(query)
                            .bind("username", username) // Gắn giá trị username vào câu query
                            .mapTo(Integer.class) // Chuyển kết quả COUNT(*) thành Integer
                            .one() > 0 // Kiểm tra nếu kết quả > 0
            );
        } catch (Exception e) {
            e.printStackTrace();
            return false; // Nếu xảy ra lỗi, trả về false
        }
    }

    public boolean updateEmployee(int idUser, String username, String password, String fullName, String email,
                                  String phoneNumber, boolean active, String avatar, String birthDate) {
        try {
            // Xây dựng câu truy vấn SQL động
            StringBuilder queryBuilder = new StringBuilder("UPDATE users SET username = ?, fullName = ?, email = ?, phoneNumber = ?, active = ?, birthDate = ?");
            if (password != null && !password.isEmpty()) {
                queryBuilder.append(", password = ?");
            }
            if (avatar != null && !avatar.isEmpty()) {
                queryBuilder.append(", avatar = ?");
            }
            queryBuilder.append(" WHERE idUser = ?");

            String query = queryBuilder.toString();

            Jdbi jdbi = JdbiConnect.get();

            // Thực thi truy vấn dựa trên các tham số được cung cấp
            return jdbi.withHandle(handle -> {
                var update = handle.createUpdate(query);

                // Bind các tham số bắt buộc
                update.bind(0, username);
                update.bind(1, fullName);
                update.bind(2, email);
                update.bind(3, phoneNumber);
                update.bind(4, active ? 1 : 0);
                update.bind(5, birthDate);

                int index = 6;

                // Nếu mật khẩu được cung cấp, bind mật khẩu
                if (password != null && !password.isEmpty()) {
                    update.bind(index++, password);
                }

                // Nếu avatar được cung cấp, bind avatar
                if (avatar != null && !avatar.isEmpty()) {
                    update.bind(index++, avatar);
                }

                // Bind idUser
                update.bind(index, idUser);

                return update.execute();
            }) > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public User getUserById(int idUser) {
        String query = """
        SELECT u.idUser, u.idRole, u.username, u.fullName, u.email, u.phoneNumber, u.active, u.birthDate, u.avatar, r.name AS roleName
        FROM users u
        INNER JOIN roles r ON u.idRole = r.idRole
        WHERE u.idUser = :idUser
    """;

        Jdbi jdbi = JdbiConnect.get();
        try {
            return jdbi.withHandle(handle ->
                    handle.createQuery(query)
                            .bind("idUser", idUser)
                            .mapToBean(User.class)
                            .findOne().orElse(null)
            );
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean deleteEmployee(int idUser) {
        String query = "DELETE FROM users WHERE idUser = :idUser";
        Jdbi jdbi = JdbiConnect.get();
        try {
            return jdbi.withHandle(handle ->
                    handle.createUpdate(query)
                            .bind("idUser", idUser)
                            .execute()
            ) > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<User> getUserList() {
        Jdbi jdbi = JdbiConnect.get();
        String query = """
        SELECT 
            u.idUser AS idUser, 
            u.idRole AS idRole, 
            u.fullName AS fullName, 
            r.name AS roleName, 
            u.email AS email,  
            u.phoneNumber AS phoneNumber, 
            u.birthDate AS birthDate, 
            CASE WHEN u.active = 1 THEN 'Hoạt động' ELSE 'Không hoạt động' END AS status 
        FROM users u 
        INNER JOIN roles r ON u.idRole = r.idRole
        WHERE r.`name` = 'người dùng'
        ORDER BY u.idUser;
    """;

        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .map((rs, ctx) -> {
                            Role role = new Role(rs.getInt("idRole"), rs.getString("roleName")); // Tạo đối tượng Role
                            return new User(
                                    rs.getInt("idUser"),
                                    rs.getInt("idRole"),
                                    "", // Không cần username
                                    "", // Không cần password
                                    rs.getString("fullName"),
                                    rs.getString("email"),
                                    rs.getString("phoneNumber"),
                                    rs.getString("status").equals("Hoạt động"),
                                    rs.getString("birthDate"),
                                    null, // Không cần avatar
                                    role // Gán Role vào User
                            );
                        })
                        .list()
        );
    }



    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();
        List<User> users = userDAO.getEmployeeList();
        users.forEach(System.out::println);
    }
}
