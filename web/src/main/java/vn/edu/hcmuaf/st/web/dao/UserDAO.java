package vn.edu.hcmuaf.st.web.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.st.web.dao.db.JdbiConnect;
import vn.edu.hcmuaf.st.web.dao.model.User;
import vn.edu.hcmuaf.st.web.dao.model.Role;
import java.util.List;

public class UserDAO {

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
