package vn.edu.hcmuaf.st.web.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.dao.UserDAO;
import vn.edu.hcmuaf.st.web.model.User;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateEmployeeController", urlPatterns = "/manage-employee/update-employee")
public class UpdateEmployeeController extends HttpServlet {

    private UserDAO userDAO = UserDAO.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String idUserParam = req.getParameter("idUser");
            int idUser = Integer.parseInt(idUserParam);
            User user = userDAO.getUserById(idUser);
            req.setAttribute("user", user);
            req.getRequestDispatcher("/other-pages/admin-pages/update-employee.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Đã xảy ra lỗi không xác định.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Kiểm tra tham số idUser
            String idUserParam = req.getParameter("idUser");
            if (idUserParam == null || idUserParam.isEmpty()) {
                throw new IllegalArgumentException("ID người dùng không hợp lệ. Tham số idUser không được truyền hoặc rỗng.");
            }
            // Chuyển đổi idUser thành số nguyên
            int idUser = Integer.parseInt(idUserParam);

            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String fullName = req.getParameter("fullName");
            String email = req.getParameter("email");
            String phoneNumber = req.getParameter("phoneNumber");
            boolean active = "1".equals(req.getParameter("active"));
            String birthDate = req.getParameter("birthDate");
            String avatar = req.getParameter("avatar");

            // Thực hiện cập nhật nhân viên
            boolean success = userDAO.updateEmployee(idUser, username, password, fullName, email, phoneNumber, active, avatar, birthDate);

            // Chuyển hướng với thông báo thành công hoặc thất bại
            if (success) {
                req.getSession().setAttribute("message", List.of("Cập nhật thành công!"));
                req.getSession().setAttribute("success", true);
            } else {
                req.getSession().setAttribute("message", List.of("Cập nhật thất bại!"));
                req.getSession().setAttribute("success", false);
            }
            resp.sendRedirect(req.getContextPath() + "/manage-employee");
        } catch (Exception e) {
            e.printStackTrace();
            req.getSession().setAttribute("message", List.of("Đã xảy ra lỗi trong quá trình xử lý!"));
            req.getSession().setAttribute("success", false);
            resp.sendRedirect(req.getContextPath() + "/manage-employee");
        }
    }

}
