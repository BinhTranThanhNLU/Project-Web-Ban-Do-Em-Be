package vn.edu.hcmuaf.st.web.dao;

import vn.edu.hcmuaf.st.web.model.Product;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ProductDAO {

    private final Jdbi jdbi;

    public ProductDAO(Jdbi jdbi) {
        this.jdbi = jdbi;
    }

    public List<Product> findAll() {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM products")
                    .mapToBean(Product.class)
                    .list();
        }
    }

    public Product findById(int id) {
        try (Handle handle = jdbi.open()) {
            return handle.createQuery("SELECT * FROM products WHERE idProduct = :id")
                    .bind("id", id)
                    .mapToBean(Product.class)
                    .findFirst()
                    .orElse(null);
        }
    }

    public void insert(Product product) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("INSERT INTO products (idCategory, title, price, discount, createAt, updateAt, isNew, description) " +
                            "VALUES (:idCategory, :title, :price, :discount, :createAt, :updateAt, :isNew, :description)")
                    .bindBean(product)
                    .execute();
        }
    }

    public void update(Product product) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("UPDATE products SET idCategory = :idCategory, title = :title, price = :price, " +
                            "discount = :discount, createAt = :createAt, updateAt = :updateAt, isNew = :isNew, " +
                            "description = :description WHERE idProduct = :idProduct")
                    .bindBean(product)
                    .execute();
        }
    }

    public void delete(int id) {
        try (Handle handle = jdbi.open()) {
            handle.createUpdate("DELETE FROM products WHERE idProduct = :id")
                    .bind("id", id)
                    .execute();
        }
    }

    public static void main(String[] args) {

    }
}
