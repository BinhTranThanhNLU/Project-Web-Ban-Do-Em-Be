package vn.edu.hcmuaf.st.web.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.st.web.dao.db.DBProperties;
import vn.edu.hcmuaf.st.web.dao.db.JdbiConnect;
import vn.edu.hcmuaf.st.web.model.*;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    private final Jdbi jdbi;

    public ProductDAO() {
        this.jdbi = JdbiConnect.get();
    }

    public Product findProductDetailsById(int idProduct) {
        String query = """
        SELECT 
            p.idProduct,
            p.title,
            p.price,
            p.discount,
            p.description,
            p.createAt
        FROM 
            products p
        WHERE 
            p.idProduct = :idProduct
    """;

        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .bind("idProduct", idProduct)
                        .map((rs, ctx) -> {
                            Product product = new Product();
                            product.setIdProduct(rs.getInt("idProduct"));
                            product.setTitle(rs.getString("title"));
                            product.setPrice(rs.getBigDecimal("price"));
                            product.setDiscount(rs.getInt("discount"));
                            product.setDescription(rs.getString("description"));
                            product.setCreateAt(rs.getDate("createAt"));
                            return product;
                        }).findOne().orElse(null)
        );
    }

    public List<Product> findProductsByCategory(String categoryName) {
        String query = """
        SELECT 
            p.idProduct,
            p.title,
            c.name AS categoryName,
            p.price,
            p.discount,
            (p.price - (p.price * p.discount / 100)) AS finalPrice,
            COALESCE(SUM(v.stockQuantity), 0) AS totalStock,
            p.isNew,
            p.createAt,
            img.imageUrl AS primaryImage
        FROM 
            products p
        LEFT JOIN 
            categories c ON p.idCategory = c.idCategory
        LEFT JOIN 
            productVariants v ON p.idProduct = v.idProduct
        LEFT JOIN 
            productImages img ON p.idProduct = img.idProduct AND img.isPrimary = 1
        WHERE 
            c.name = :categoryName
        GROUP BY 
            p.idProduct, p.title, c.name, p.price, p.discount, p.isNew, p.createAt, img.imageUrl
        """;

        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .bind("categoryName", categoryName)
                        .map((rs, ctx) -> {
                            Product product = new Product();
                            product.setIdProduct(rs.getInt("idProduct"));
                            product.setTitle(rs.getString("title"));
                            product.setPrice(rs.getBigDecimal("price"));
                            product.setDiscount(rs.getInt("discount"));
                            product.setCreateAt(rs.getDate("createAt"));
                            product.setNewProduct(rs.getBoolean("isNew"));
                            product.setTotalStock(rs.getInt("totalStock"));

                            Category category = new Category();
                            category.setName(rs.getString("categoryName"));
                            product.setCategory(category);

                            ProductImage primaryImage = new ProductImage();
                            primaryImage.setImageUrl(rs.getString("primaryImage"));

                            product.setImages(List.of(primaryImage));
                            return product;
                        })
                        .list()
        );
    }

    public List<Product> findAllDetailedProducts() {
        String query = """
            SELECT 
                p.idProduct,
                p.title,
                c.name AS categoryName,
                p.price,
                p.discount,
                (p.price - (p.price * p.discount / 100)) AS finalPrice,
                COALESCE(SUM(v.stockQuantity), 0) AS totalStock,
                p.isNew,
                p.createAt,
                img.imageUrl AS primaryImage
            FROM 
                products p
            LEFT JOIN 
                categories c ON p.idCategory = c.idCategory
            LEFT JOIN 
                productVariants v ON p.idProduct = v.idProduct
            LEFT JOIN 
                productImages img ON p.idProduct = img.idProduct AND img.isPrimary = 1
            GROUP BY 
                p.idProduct, p.title, c.name, p.price, p.discount, p.isNew, p.createAt, img.imageUrl
            """;

        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .map((rs, ctx) -> {
                            Product product = new Product();
                            product.setIdProduct(rs.getInt("idProduct"));
                            product.setTitle(rs.getString("title"));
                            product.setPrice(rs.getBigDecimal("price"));
                            product.setDiscount(rs.getInt("discount"));
                            product.setCreateAt(rs.getDate("createAt"));
                            product.setNewProduct(rs.getBoolean("isNew"));
                            product.setTotalStock(rs.getInt("totalStock"));

                            Category category = new Category();
                            category.setName(rs.getString("categoryName"));
                            product.setCategory(category);

                            ProductImage primaryImage = new ProductImage();
                            primaryImage.setImageUrl(rs.getString("primaryImage"));

                            product.setImages(List.of(primaryImage));
                            return product;
                        })
                        .list()
        );
    }


    
    public Product findById(int id) {
        String query = "SELECT * FROM products WHERE idProduct = :id";
        System.out.println("Querying product with ID: " + id);
        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .bind("id", id)
                        .mapToBean(Product.class)
                        .findOne()
                        .orElse(null)
        );
    }
    // tìm kiếm bằng tên

    
    public boolean insert(Product product) {
        String query = """
                INSERT INTO products (idCategory, title, price, discount, createAt, updateAt, isNew, description)
                VALUES (:idCategory, :title, :price, :discount, :createAt, :updateAt, :isNew, :description)
                """;
        return jdbi.withHandle(handle ->
                handle.createUpdate(query)
                        .bindBean(product)
                        .execute() > 0
        );
    }

    
    public boolean update(Product product) {
        String query = """
                UPDATE products 
                SET idCategory = :idCategory, title = :title, price = :price, discount = :discount,
                    createAt = :createAt, updateAt = :updateAt, isNew = :isNew, description = :description
                WHERE idProduct = :idProduct
                """;
        return jdbi.withHandle(handle ->
                handle.createUpdate(query)
                        .bindBean(product)
                        .execute() > 0
        );
    }

  
    public boolean delete(int id) {
        String query = "DELETE FROM products WHERE idProduct = :id";
        return jdbi.withHandle(handle ->
                handle.createUpdate(query)
                        .bind("id", id)
                        .execute() > 0
        );
    }

    
    public List<Product> findAll() {
        String query = "SELECT * FROM products";
        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .mapToBean(Product.class)
                        .list()
        );
    }


    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();

        // Test retrieving all detailed products
        List<Product> products = productDAO.findAllDetailedProducts();
        products.forEach(System.out::println);
    }

    // Phương thức tìm kiếm sản phẩm theo tên
    public List<Product> searchProductsByName(String name) {
        String query = """
            SELECT 
                p.idProduct,
                p.title,
                c.name AS categoryName,
                p.price,
                p.discount,
                (p.price - (p.price * p.discount / 100)) AS finalPrice,
                COALESCE(SUM(v.stockQuantity), 0) AS totalStock,
                p.isNew,
                p.createAt,
                img.imageUrl AS primaryImage
            FROM 
                products p
            LEFT JOIN 
                categories c ON p.idCategory = c.idCategory
            LEFT JOIN 
                productVariants v ON p.idProduct = v.idProduct
            LEFT JOIN 
                productImages img ON p.idProduct = img.idProduct AND img.isPrimary = 1
            WHERE 
                p.title LIKE :name
            GROUP BY 
                p.idProduct, p.title, c.name, p.price, p.discount, p.isNew, p.createAt, img.imageUrl
            """;

        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .bind("name", "%" + name + "%")
                        .map((rs, ctx) -> {
                            Product product = new Product();
                            product.setIdProduct(rs.getInt("idProduct"));
                            product.setTitle(rs.getString("title"));
                            product.setPrice(rs.getBigDecimal("price"));
                            product.setDiscount(rs.getInt("discount"));
                            product.setCreateAt(rs.getDate("createAt"));
                            product.setNewProduct(rs.getBoolean("isNew"));
                            product.setTotalStock(rs.getInt("totalStock"));

                            Category category = new Category();
                            category.setName(rs.getString("categoryName"));
                            product.setCategory(category);

                            ProductImage primaryImage = new ProductImage();
                            primaryImage.setImageUrl(rs.getString("primaryImage"));

                            product.setImages(List.of(primaryImage));
                            return product;
                        })
                        .list()
        );
    }
}
