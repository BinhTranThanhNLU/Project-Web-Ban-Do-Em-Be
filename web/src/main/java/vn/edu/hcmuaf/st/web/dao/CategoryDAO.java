package vn.edu.hcmuaf.st.web.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.st.web.model.Category;

import java.util.List;

public class CategoryDAO {

    private final Jdbi jdbi;

    public CategoryDAO(Jdbi jdbi) {
        this.jdbi = jdbi;
    }

    public List<Category> findAll() {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM categories")
                    .mapToBean(Category.class)
                    .list();
        }
    }

    public Category findById(int id) {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM categories WHERE idCategory = :id")
                    .bind("id", id)
                    .mapToBean(Category.class)
                    .findFirst()
                    .orElse(null);
        }
    }

    public void insert(Category category) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("INSERT INTO categories (name, parentIdCategory) VALUES (:name, :parentIdCategory)")
                    .bindBean(category)
                    .execute();
        }
    }

    public void update(Category category) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("UPDATE categories SET name = :name, parentIdCategory = :parentIdCategory WHERE idCategory = :idCategory")
                    .bindBean(category)
                    .execute();
        }
    }

    public void delete(int id) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("DELETE FROM categories WHERE idCategory = :id")
                    .bind("id", id)
                    .execute();
        }
    }

    public static void main(String[] args) {

    }
}
