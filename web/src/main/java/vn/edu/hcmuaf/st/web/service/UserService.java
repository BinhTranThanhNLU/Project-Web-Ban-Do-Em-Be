package vn.edu.hcmuaf.st.web.service;

import vn.edu.hcmuaf.st.web.dao.UserDAO;
import vn.edu.hcmuaf.st.web.model.User;

public class UserService {
    private UserDAO userDAO;

    public UserService() {
        this.userDAO = new UserDAO(); // Khởi tạo DAO
    }

    /**
     * Kiểm tra thông tin đăng nhập
     *
     * @param username Tên đăng nhập
     * @param password Mật khẩu
     * @return Đối tượng User nếu đăng nhập thành công, null nếu thất bại
     */
    public boolean checkLogin(String username, String password) {
        // Lấy thông tin người dùng từ cơ sở dữ liệu qua UserDAO
        User user = userDAO.getUserByUsernameAndPassword(username, password);

        // Kiểm tra thông tin người dùng
        if (user != null && user.getPassword().equals(password)) {
            return user.isActive(); // Đăng nhập thành công
        } else {
            return false; // Đăng nhập thất bại
        }
    }
}
