package vn.edu.hcmuaf.st.web.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.dao.RoleDAO;
import vn.edu.hcmuaf.st.web.dao.UserDAO;
import vn.edu.hcmuaf.st.web.model.Role;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddUserController", urlPatterns = "/manage-user/add-user")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10,      // 10MB
        maxRequestSize = 1024 * 1024 * 50    // 50MB
)
public class AddUserController extends HttpServlet {

    private UserDAO userDAO = UserDAO.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Role> roles = (List<Role>) req.getSession().getAttribute("roles");
        if (roles == null) {
            roles = new RoleDAO().getAll();
            req.getSession().setAttribute("roles", roles);
        }
        req.getRequestDispatcher("/other-pages/admin-pages/add-user.jsp").forward(req, resp);
    }
}
