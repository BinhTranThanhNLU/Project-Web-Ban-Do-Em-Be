package vn.edu.hcmuaf.st.web.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.dao.UserDAO;
import vn.edu.hcmuaf.st.web.model.User;

import java.io.IOException;

@WebServlet(name = "UpdateUserController", urlPatterns = "/manage-user/update-user")
public class UpdateUserController extends HttpServlet {

    private UserDAO userDAO = UserDAO.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String idUserParam = req.getParameter("idUser");
            int idUser = Integer.parseInt(idUserParam);
            User user = userDAO.getUserById(idUser);
            req.setAttribute("user", user);
            req.getRequestDispatcher("/other-pages/admin-pages/update-user.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Đã xảy ra lỗi không xác định.");
        }
    }
}
