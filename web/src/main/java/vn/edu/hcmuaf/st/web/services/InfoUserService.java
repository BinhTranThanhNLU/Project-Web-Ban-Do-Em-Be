package vn.edu.hcmuaf.st.web.services;

import vn.edu.hcmuaf.st.web.dao.InfoUserDao;
import vn.edu.hcmuaf.st.web.model.User;
public class InfoUserService {
    private final InfoUserDao infoUserDao;

    // Constructor to initialize DAO
    public InfoUserService() {
        this.infoUserDao = new InfoUserDao();
    }

    // Phương thức cập nhật người dùng
    public boolean updateUser(User user, int idRole) {
        return infoUserDao.updateUser(user, idRole);
    }

    public User getUserByUsername(String username) {
        return  infoUserDao.getUserByUsername(username);
    }
}
