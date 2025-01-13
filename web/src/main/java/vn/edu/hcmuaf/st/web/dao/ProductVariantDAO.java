package vn.edu.hcmuaf.st.web.dao;

import vn.edu.hcmuaf.st.web.model.ProductVariant;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ProductVariantDAO {

    private final Jdbi jdbi;

    public ProductVariantDAO(Jdbi jdbi) {
        this.jdbi = jdbi;
    }

    public List<ProductVariant> findAll() {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM productVariants")
                    .mapToBean(ProductVariant.class)
                    .list();
        }
    }

    public ProductVariant findById(int id) {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM productVariants WHERE idVariant = :id")
                    .bind("id", id)
                    .mapToBean(ProductVariant.class)
                    .findFirst()
                    .orElse(null);
        }
    }

    public void insert(ProductVariant variant) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("INSERT INTO productVariants (idProduct, idColor, idSize, stockQuantity, createAt, status) " +
                            "VALUES (:idProduct, :idColor, :idSize, :stockQuantity, :createAt, :status)")
                    .bindBean(variant)
                    .execute();
        }
    }

    public void update(ProductVariant variant) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("UPDATE productVariants SET idProduct = :idProduct, idColor = :idColor, idSize = :idSize, " +
                            "stockQuantity = :stockQuantity, createAt = :createAt, status = :status WHERE idVariant = :idVariant")
                    .bindBean(variant)
                    .execute();
        }
    }

    public void delete(int id) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("DELETE FROM productVariants WHERE idVariant = :id")
                    .bind("id", id)
                    .execute();
        }
    }

    public static void main(String[] args) {

    }
}
