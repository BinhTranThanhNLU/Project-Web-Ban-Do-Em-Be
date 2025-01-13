package vn.edu.hcmuaf.st.web.dao;

import vn.edu.hcmuaf.st.web.model.ProductImage;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ProductImageDAO {

    private final Jdbi jdbi;

    public ProductImageDAO(Jdbi jdbi) {
        this.jdbi = jdbi;
    }

    public List<ProductImage> findAll() {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM productImages")
                    .mapToBean(ProductImage.class)
                    .list();
        }
    }

    public ProductImage findById(int id) {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM productImages WHERE idImage = :id")
                    .bind("id", id)
                    .mapToBean(ProductImage.class)
                    .findFirst()
                    .orElse(null);
        }
    }

    public void insert(ProductImage image) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("INSERT INTO productImages (idProduct, imageUrl, isPrimary, createAt) " +
                            "VALUES (:idProduct, :imageUrl, :isPrimary, :createAt)")
                    .bindBean(image)
                    .execute();
        }
    }

    public void update(ProductImage image) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("UPDATE productImages SET idProduct = :idProduct, imageUrl = :imageUrl, isPrimary = :isPrimary, " +
                            "createAt = :createAt WHERE idImage = :idImage")
                    .bindBean(image)
                    .execute();
        }
    }

    public void delete(int id) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("DELETE FROM productImages WHERE idImage = :id")
                    .bind("id", id)
                    .execute();
        }
    }

    public static void main(String[] args) {

    }


}
