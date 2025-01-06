package vn.edu.hcmuaf.st.web.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.st.web.dao.db.JdbiConnect;
import vn.edu.hcmuaf.st.web.model.Role;
import java.util.List;

public class RoleDAO {

    public List<Role> getAll() {
        Jdbi jdbi = JdbiConnect.get();
        String query = "SELECT idRole, name FROM roles";
        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .mapToBean(Role.class)
                        .list()
        );
    }

    public static void main(String[] args) {
        RoleDAO roleDAO = new RoleDAO();
        List<Role> roles = roleDAO.getAll();
        roles.forEach(System.out::println);
    }

}
