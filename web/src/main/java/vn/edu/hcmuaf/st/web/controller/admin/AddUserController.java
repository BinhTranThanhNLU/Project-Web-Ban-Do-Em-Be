package vn.edu.hcmuaf.st.web.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import vn.edu.hcmuaf.st.web.dao.RoleDAO;
import vn.edu.hcmuaf.st.web.dao.UserDAO;
import vn.edu.hcmuaf.st.web.model.Role;
import vn.edu.hcmuaf.st.web.utils.PasswordUtils;
import vn.edu.hcmuaf.st.web.utils.ValidationUtils;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
            String activeStr = req.getParameter("active");

            // Lấy file từ request
            Part filePart = req.getPart("avatar"); // "avatar" là tên của input file
            String fileName = extractFileName(filePart);
            String avatar;

            if (fileName != null && !fileName.isEmpty()) {
                // Đường dẫn thư mục
                //String uploadDir = new File(getServletContext().getRealPath("/uploads")).getAbsolutePath();
                String uploadDir = "E:/uploads"; // Lưu tệp ở một thư mục cố định trên máy chủ
                File uploadFolder = new File(uploadDir);
                if (!uploadFolder.exists()) uploadFolder.mkdirs();

                // Tạo tên file duy nhất
                String uniqueFileName = UUID.randomUUID().toString() + "_" + fileName;
                String filePath = uploadDir + File.separator + uniqueFileName;
                filePart.write(filePath);

                System.out.println("Upload Directory: " + uploadDir);
                System.out.println("File Path: " + filePath);

                // Đường dẫn tương đối
                avatar = "uploads/" + uniqueFileName;
            } else {
                avatar = "/static/images/default-avatar.png";
            }

            // Kiểm tra dữ liệu đầu vào
            List<String> errorMessages = new ArrayList<>();

            // Kiểm tra idRole
            int idRole = 0;
            if (idRoleStr == null || idRoleStr.trim().isEmpty()) {
                errorMessages.add("Vui lòng chọn vai trò.");
            } else {
                try {
                    idRole = Integer.parseInt(idRoleStr);
                    if (idRole != 3) { // Chỉ cho phép idRole = 3
                        errorMessages.add("Vai trò không hợp lệ. Vui lòng chọn vai trò nguời dùng.");
                    }
                } catch (NumberFormatException e) {
                    errorMessages.add("Vai trò không hợp lệ.");
                }
            }

            // Kiểm tra username
            if (!ValidationUtils.isNotEmpty(username)) {
                errorMessages.add("Tên đăng nhập không được để trống.");
            } else if (userDAO.isUsernameExists(username)) {
                errorMessages.add("Tên đăng nhập đã tồn tại. Vui lòng chọn tên đăng nhập khác.");
            }

            // Kiểm tra password
            if (!ValidationUtils.isNotEmpty(password)) {
                errorMessages.add("Mật khẩu không được để trống.");
            } else if (!ValidationUtils.isValidPassword(password)) {
                errorMessages.add("Mật khẩu phải dài hơn 6 kí tự, có ít nhất 1 chữ hoa, chữ thường, ký tự đặc biệt.");
            }

            // Kiểm tra fullName
            if (!ValidationUtils.isNotEmpty(fullName)) {
                errorMessages.add("Họ và tên không được để trống.");
            }

            // Kiểm tra email
            if (!ValidationUtils.isNotEmpty(email)) {
                errorMessages.add("Email không được để trống.");
            } else if (!ValidationUtils.isValidEmail(email)) {
                errorMessages.add("Email không hợp lệ.");
            }

            // Kiểm tra phoneNumber
            if (!ValidationUtils.isNotEmpty(phoneNumber)) {
                errorMessages.add("Số điện thoại không được để trống.");
            } else if (!ValidationUtils.isValidPhoneNumber(phoneNumber)) {
                errorMessages.add("Số điện thoại phải là số từ 10 đến 15 chữ số.");
            }

            // Kiểm tra birthDate
            java.sql.Date sqlBirthDate = null;
            if (birthDateStr != null && !birthDateStr.trim().isEmpty()) {
                try {
                    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                    Date parsedDate = formatter.parse(birthDateStr); // Chuyển từ chuỗi sang java.util.Date
                    sqlBirthDate = new java.sql.Date(parsedDate.getTime()); // Chuyển sang java.sql.Date
                } catch (ParseException e) {
                    errorMessages.add("Định dạng ngày sinh không hợp lệ. Vui lòng nhập theo định dạng dd/MM/yyyy.\n");
                }
            }

            // Kiểm tra active
            boolean active = "1".equals(activeStr);

            // Kiểm tra avatar
            if (avatar == null || avatar.isEmpty()) {
                avatar = "/static/images/default-avatar.png"; // Đường dẫn ảnh mặc định
            }

            // Nếu có lỗi, trả về form với thông báo lỗi
            if (errorMessages.size() > 0) {
                req.getSession().setAttribute("message", errorMessages);
                resp.sendRedirect(req.getContextPath() + "/manage-user/add-user");
                return;
            }

            // Mã hóa mật khẩu bằng MD5
            String hashedPassword = PasswordUtils.hashPassword(password);

            // Gọi DAO để lưu dữ liệu
            boolean success = userDAO.addEmployee(idRole, username, hashedPassword, fullName, email, phoneNumber, active, avatar, sqlBirthDate);

            if (success) {
                req.getSession().setAttribute("message", "Thêm người dùng thành công!");
                req.getSession().setAttribute("success", true);
            } else {
                req.getSession().setAttribute("message", "Thêm người dùng thất bại. Vui lòng thử lại.");
                req.getSession().setAttribute("success", false);
            }

            System.out.println("Message: " + req.getSession().getAttribute("message"));
            System.out.println("Success: " + req.getSession().getAttribute("success"));

        } catch (Exception e) {
            req.getSession().setAttribute("message", "Đã xảy ra lỗi. Vui lòng kiểm tra lại!");
            req.getSession().setAttribute("success", false);
            e.printStackTrace();
        }

        resp.sendRedirect(req.getContextPath() + "/manage-user/add-user");
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String content : contentDisp.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return null;
    }

}
