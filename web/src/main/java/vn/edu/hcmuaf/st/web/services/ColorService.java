package vn.edu.hcmuaf.st.web.services;

import vn.edu.hcmuaf.st.web.dao.ColorDAO;
import vn.edu.hcmuaf.st.web.model.Color;

import java.util.List;

public class ColorService {

    private final ColorDAO colorDAO;

    public ColorService() {
        this.colorDAO = new ColorDAO();
    }

    // Lấy danh sách tất cả các màu
    public List<Color> getAllColors() {
        return colorDAO.findAll();
    }

    // Lấy thông tin của một màu theo ID
    public Color getColorById(int id) {
        return colorDAO.findById(id);
    }

    // Thêm mới một màu
    public void addColor(Color color) {
        colorDAO.insert(color);
    }

    // Cập nhật thông tin của một màu
    public void updateColor(Color color) {
        colorDAO.update(color);
    }

    // Xóa một màu theo ID
    public void deleteColor(int id) {
        colorDAO.delete(id);
    }
}
