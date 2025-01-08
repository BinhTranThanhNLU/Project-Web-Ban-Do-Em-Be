package vn.edu.hcmuaf.st.web.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.dao.RoleDAO;
import vn.edu.hcmuaf.st.web.dao.UserDAO;
import vn.edu.hcmuaf.st.web.model.Role;
import vn.edu.hcmuaf.st.web.utils.PasswordUtils;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "AddEmployeeController", urlPatterns = "/manage-employee/add-employee")
public class AddEmployeeController extends HttpServlet {

    private UserDAO userDAO = UserDAO.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Kiểm tra Session có chứa danh sách roles không
        List<Role> roles = (List<Role>) req.getSession().getAttribute("roles");
        if (roles == null) {
            // Chỉ lấy từ cơ sở dữ liệu nếu chưa có trong Session
            roles = new RoleDAO().getAll();
            req.getSession().setAttribute("roles", roles);
        }
        // Forward đến JSP
        req.getRequestDispatcher("/other-pages/admin-pages/add-employee.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Lấy dữ liệu từ form
            String idRoleStr = req.getParameter("idRole");
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String fullName = req.getParameter("fullName");
            String email = req.getParameter("email");
            String phoneNumber = req.getParameter("phoneNumber");
            String birthDateStr = req.getParameter("birthDate"); // Ngày sinh dạng dd/MM/yyyy
            String avatar = req.getParameter("avatar");
            String activeStr = req.getParameter("active");

            // Mã hóa mật khẩu bằng MD5
            String hashedPassword = PasswordUtils.hashPassword(password);

            // Kiểm tra dữ liệu đầu vào
            StringBuilder errorMessages = new StringBuilder();

            // Kiểm tra idRole
            int idRole = 0;
            if (idRoleStr == null || idRoleStr.trim().isEmpty()) {
                errorMessages.append("Vui lòng chọn vai trò.\n");
            } else {
                try {
                    idRole = Integer.parseInt(idRoleStr);
                    if (idRole != 2) { // Chỉ cho phép idRole = 2
                        errorMessages.append("Vai trò không hợp lệ. Vui lòng chọn vai trò nhân viên.\n");
                    }
                } catch (NumberFormatException e) {
                    errorMessages.append("Vai trò không hợp lệ.\n");
                }
            }

            // Kiểm tra username
            if (username == null || username.trim().isEmpty()) {
                errorMessages.append("Tên đăng nhập không được để trống.\n");
            } else if (userDAO.isUsernameExists(username)) {
                errorMessages.append("Tên đăng nhập đã tồn tại. Vui lòng chọn tên đăng nhập khác.\n");
            }

            // Kiểm tra password
            if (password == null || password.trim().isEmpty()) {
                errorMessages.append("Mật khẩu không được để trống.\n");
            } else if (password.length() < 6) {
                errorMessages.append("Mật khẩu phải có ít nhất 6 ký tự.\n");
            } else if (!password.matches(".*[A-Z].*")) {
                errorMessages.append("Mật khẩu phải có ít nhất 1 chữ hoa.\n");
            } else if (!password.matches(".*\\d.*")) {
                errorMessages.append("Mật khẩu phải có ít nhất 1 số.\n");
            } else if (!password.matches(".*[!@#$%^&*(),.?\":{}|<>].*")) {
                errorMessages.append("Mật khẩu phải có ít nhất 1 ký tự đặc biệt (như !@#$%^&*...).\n");
            }

            // Kiểm tra fullName
            if (fullName == null || fullName.trim().isEmpty()) {
                errorMessages.append("Họ và tên không được để trống.\n");
            }

            // Kiểm tra email
            if (email == null || email.trim().isEmpty()) {
                errorMessages.append("Email không được để trống.\n");
            } else if (!email.matches("^[\\w.%+-]+@[\\w.-]+\\.[a-zA-Z]{2,6}$")) {
                errorMessages.append("Email không hợp lệ.\n");
            }

            // Kiểm tra phoneNumber
            if (phoneNumber == null || phoneNumber.trim().isEmpty()) {
                errorMessages.append("Số điện thoại không được để trống.\n");
            } else if (!phoneNumber.matches("^\\d{10,11}$")) {
                errorMessages.append("Số điện thoại phải là số từ 10 đến 15 chữ số.\n");
            }

            // Kiểm tra birthDate
            java.sql.Date sqlBirthDate = null;
            if (birthDateStr != null && !birthDateStr.trim().isEmpty()) {
                try {
                    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                    Date parsedDate = formatter.parse(birthDateStr); // Chuyển từ chuỗi sang java.util.Date
                    sqlBirthDate = new java.sql.Date(parsedDate.getTime()); // Chuyển sang java.sql.Date
                } catch (ParseException e) {
                    errorMessages.append("Định dạng ngày sinh không hợp lệ. Vui lòng nhập theo định dạng dd/MM/yyyy.\n");
                }
            }

            // Kiểm tra active
            boolean active = "1".equals(activeStr);

            // Kiểm tra avatar
            if (avatar == null || avatar.isEmpty()) {
                avatar = "/static/images/default-avatar.png"; // Đường dẫn ảnh mặc định
            }

            // Nếu có lỗi, trả về form với thông báo lỗi
            if (errorMessages.length() > 0) {
                req.getSession().setAttribute("message", errorMessages.toString());
                resp.sendRedirect(req.getContextPath() + "/manage-employee/add-employee");
                return;
            }

            // Gọi DAO để lưu dữ liệu
            boolean success = userDAO.addEmployee(idRole, username, hashedPassword, fullName, email, phoneNumber, active, avatar, sqlBirthDate);

            if (success) {
                req.getSession().setAttribute("message", "Thêm nhân viên thành công!");
                req.getSession().setAttribute("success", true);
            } else {
                req.getSession().setAttribute("message", "Thêm nhân viên thất bại. Vui lòng thử lại.");
                req.getSession().setAttribute("success", false);
            }

            System.out.println("Message: " + req.getSession().getAttribute("message"));
            System.out.println("Success: " + req.getSession().getAttribute("success"));

        } catch (Exception e) {
            req.getSession().setAttribute("message", "Đã xảy ra lỗi. Vui lòng kiểm tra lại!");
            req.getSession().setAttribute("success", false);
            e.printStackTrace();
        }

        resp.sendRedirect(req.getContextPath() + "/manage-employee/add-employee");
    }
}
