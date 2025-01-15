package vn.edu.hcmuaf.st.web.services;

import vn.edu.hcmuaf.st.web.dao.CategoryDAO;
import vn.edu.hcmuaf.st.web.model.Category;

import java.util.List;

public class CategoryService {

    private final CategoryDAO categoryDAO;

    public CategoryService() {
        this.categoryDAO = new CategoryDAO();
    }

    public List<Category> getAllCategories() {
        return categoryDAO.findAll();
    }

    public Category getCategoryById(int id) {
        return categoryDAO.findById(id);
    }

    public void addCategory(Category category) {
        categoryDAO.insert(category);
    }

    public void updateCategory(Category category) {
        categoryDAO.update(category);
    }

    public void deleteCategory(int id) {
        categoryDAO.delete(id);
    }
}
