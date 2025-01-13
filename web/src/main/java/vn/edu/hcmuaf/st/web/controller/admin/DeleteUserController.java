package vn.edu.hcmuaf.st.web.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.dao.UserDAO;

import java.io.IOException;

@WebServlet("/manage-user/delete-user")
public class DeleteUserController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idUserStr = req.getParameter("idUser");

        if (idUserStr != null && !idUserStr.isEmpty()) {
            int idUser = Integer.parseInt(idUserStr);
            boolean success = UserDAO.getInstance().deleteEmployee(idUser);

            if (success) {
                req.getSession().setAttribute("message", "Xóa người dùng thành công!");
                req.getSession().setAttribute("success", true);
            } else {
                req.getSession().setAttribute("message", "Xóa người dùng thất bại!");
                req.getSession().setAttribute("success", false);
            }
        } else {
            req.getSession().setAttribute("message", "ID người dùng không hợp lệ!");
            req.getSession().setAttribute("success", false);
        }

        resp.sendRedirect(req.getContextPath() + "/manage-user");
    }
}
