package vn.edu.hcmuaf.st.web.services;

import vn.edu.hcmuaf.st.web.dao.SizeDAO;
import vn.edu.hcmuaf.st.web.model.Size;

import java.util.List;

public class SizeService {

    private final SizeDAO sizeDAO;

    public SizeService(SizeDAO sizeDAO) {
        this.sizeDAO = sizeDAO;
    }

    public List<Size> getAllSizes() {
        return sizeDAO.findAll();
    }

    public Size getSizeById(int id) {
        return sizeDAO.findById(id);
    }

    public void addSize(Size size) {
        sizeDAO.insert(size);
    }

    public void updateSize(Size size) {
        sizeDAO.update(size);
    }

    // Xóa một Size theo ID
    public void deleteSize(int id) {
        sizeDAO.delete(id);
    }

}
