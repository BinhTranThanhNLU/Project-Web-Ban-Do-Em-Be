package vn.edu.hcmuaf.st.web.dao;

import vn.edu.hcmuaf.st.web.model.Size;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class SizeDAO {

    private final Jdbi jdbi;

    public SizeDAO(Jdbi jdbi) {
        this.jdbi = jdbi;
    }

    public List<Size> findAll() {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM sizes")
                    .mapToBean(Size.class)
                    .list();
        }
    }

    public Size findById(int id) {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM sizes WHERE idSize = :id")
                    .bind("id", id)
                    .mapToBean(Size.class)
                    .findFirst()
                    .orElse(null);
        }
    }

    public void insert(Size size) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("INSERT INTO sizes (name) VALUES (:name)")
                    .bindBean(size)
                    .execute();
        }
    }

    public void update(Size size) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("UPDATE sizes SET name = :name WHERE idSize = :idSize")
                    .bindBean(size)
                    .execute();
        }
    }

    public void delete(int id) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("DELETE FROM sizes WHERE idSize = :id")
                    .bind("id", id)
                    .execute();
        }
    }

    public static void main(String[] args) {

    }
}
