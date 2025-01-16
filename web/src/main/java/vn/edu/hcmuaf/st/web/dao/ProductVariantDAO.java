package vn.edu.hcmuaf.st.web.dao;

import vn.edu.hcmuaf.st.web.dao.db.JdbiConnect;
import vn.edu.hcmuaf.st.web.model.Color;
import vn.edu.hcmuaf.st.web.model.ProductImage;
import vn.edu.hcmuaf.st.web.model.ProductVariant;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.st.web.model.Size;

import java.util.List;

public class ProductVariantDAO {

    private final Jdbi jdbi;

    public ProductVariantDAO() {
        this.jdbi = JdbiConnect.get();
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

    public List<ProductImage> findImagesByProductId(int idProduct) {
        String query = """
        SELECT idImage, idProduct, imageUrl, isPrimary, createAt
        FROM productImages
        WHERE idProduct = :idProduct
    """;

        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .bind("idProduct", idProduct)
                        .mapToBean(ProductImage.class)
                        .list()
        );
    }


    public List<Color> findColorsByProductId(int idProduct) {
        String query = """
        SELECT DISTINCT c.idColor, c.name, c.hexCode
        FROM productVariants v
        JOIN colors c ON v.idColor = c.idColor
        WHERE v.idProduct = :idProduct
    """;

        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .bind("idProduct", idProduct)
                        .mapToBean(Color.class)
                        .list()
        );
    }

    public List<Size> findSizesByProductId(int idProduct) {
        String query = """
        SELECT DISTINCT s.idSize, s.name
        FROM productVariants v
        JOIN sizes s ON v.idSize = s.idSize
        WHERE v.idProduct = :idProduct
    """;

        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .bind("idProduct", idProduct)
                        .mapToBean(Size.class)
                        .list()
        );
    }


    public static void main(String[] args) {

    }
}
