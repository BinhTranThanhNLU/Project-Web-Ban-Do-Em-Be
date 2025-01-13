package vn.edu.hcmuaf.st.web.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.st.web.dao.db.JdbiConnect;
import vn.edu.hcmuaf.st.web.model.Product;

import java.util.List;

public class ProductDAO {

    private static ProductDAO instance;

    private ProductDAO() {
    }

    // Sử dụng Singleton pattern
    public static synchronized ProductDAO getInstance() {
        if (instance == null) {
            instance = new ProductDAO();
        }
        return instance;
    }

//    public List<Product> findAll() {
//        Jdbi jdbi = JdbiConnect.get();
//        String query = "SELECT * FROM products";
//        return jdbi.withHandle(handle ->
//                handle.createQuery(query)
//                        .mapToBean(Product.class)
//                        .list()
//        );
//    }

    public List<Product> findAll() {
        Jdbi jdbi = JdbiConnect.get();
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
        p.idProduct, p.title, c.name, p.price, p.discount, p.isNew, img.imageUrl
    """;

        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .map((rs, ctx) -> {
                            // Ánh xạ các cột từ truy vấn vào đối tượng Product
                            Product product = new Product();
                            product.setIdProduct(rs.getInt("idProduct"));
                            product.setTitle(rs.getString("title"));
                            product.setCategoryName(rs.getString("categoryName"));
                            product.setPrice(rs.getBigDecimal("price"));
                            product.setDiscount(rs.getInt("discount"));
                            product.setFinalPrice(rs.getBigDecimal("finalPrice"));
                            product.setTotalStock(rs.getInt("totalStock"));
                            product.setNewProduct(rs.getBoolean("isNew"));
                            product.setPrimaryImage(rs.getString("primaryImage"));
                            return product;
                        })
                        .list()
        );
    }


    public Product findById(int id) {
        Jdbi jdbi = JdbiConnect.get();
        String query = "SELECT * FROM products WHERE idProduct = :id";
        return jdbi.withHandle(handle ->
                handle.createQuery(query)
                        .bind("id", id)
                        .mapToBean(Product.class)
                        .findOne()
                        .orElse(null)
        );
    }

    public boolean insert(Product product) {
        Jdbi jdbi = JdbiConnect.get();
        String query = """
                INSERT INTO products (idCategory, title, price, discount, createAt, updateAt, isNew, description)
                VALUES (:idCategory, :title, :price, :discount, :createAt, :updateAt, :isNew, :description)
                """;
        return jdbi.withHandle(handle ->
                handle.createUpdate(query)
                        .bindBean(product)
                        .execute()
        ) > 0;
    }

    public boolean update(Product product) {
        Jdbi jdbi = JdbiConnect.get();
        String query = """
                UPDATE products 
                SET idCategory = :idCategory, title = :title, price = :price, discount = :discount,
                    createAt = :createAt, updateAt = :updateAt, isNew = :isNew, description = :description
                WHERE idProduct = :idProduct
                """;
        return jdbi.withHandle(handle ->
                handle.createUpdate(query)
                        .bindBean(product)
                        .execute()
        ) > 0;
    }

    public boolean delete(int id) {
        Jdbi jdbi = JdbiConnect.get();
        String query = "DELETE FROM products WHERE idProduct = :id";
        return jdbi.withHandle(handle ->
                handle.createUpdate(query)
                        .bind("id", id)
                        .execute()
        ) > 0;
    }

    public static void main(String[] args) {
        ProductDAO productDAO = ProductDAO.getInstance();

        // Kiểm thử lấy tất cả sản phẩm
        List<Product> products = productDAO.findAll();
        products.forEach(System.out::println);

        // Kiểm thử thêm sản phẩm mới
        Product newProduct = new Product(0, 1, "Sản phẩm mới",
                new java.math.BigDecimal("1000.00"), 10,
                new java.util.Date(), null, true, "Mô tả sản phẩm");
        boolean isInserted = productDAO.insert(newProduct);
        System.out.println("Thêm sản phẩm: " + (isInserted ? "Thành công" : "Thất bại"));
    }
}
