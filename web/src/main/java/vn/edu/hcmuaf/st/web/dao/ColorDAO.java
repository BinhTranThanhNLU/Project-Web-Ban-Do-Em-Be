package vn.edu.hcmuaf.st.web.dao;

import vn.edu.hcmuaf.st.web.model.Color;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ColorDAO {

    private final Jdbi jdbi;

    public ColorDAO(Jdbi jdbi) {
        this.jdbi = jdbi;
    }

    public List<Color> findAll() {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM colors")
                    .mapToBean(Color.class)
                    .list();
        }
    }

    public Color findById(int id) {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM colors WHERE idColor = :id")
                    .bind("id", id)
                    .mapToBean(Color.class)
                    .findFirst()
                    .orElse(null);
        }
    }

    public void insert(Color color) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("INSERT INTO colors (name, hexCode) VALUES (:name, :hexCode)")
                    .bindBean(color)
                    .execute();
        }
    }

    public void update(Color color) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("UPDATE colors SET name = :name, hexCode = :hexCode WHERE idColor = :idColor")
                    .bindBean(color)
                    .execute();
        }
    }

    public void delete(int id) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("DELETE FROM colors WHERE idColor = :id")
                    .bind("id", id)
                    .execute();
        }
    }

    public static void main(String[] args) {

    }
}
