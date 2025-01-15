//package vn.edu.hcmuaf.st.web.services;
//
//import vn.edu.hcmuaf.st.web.dao.db.JdbiConnect;
//
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//public class ProductService {
//
//    static Map<Integer, Product> data= new HashMap<>();
//
//
//    public List<Product> getAll(){
//        Statement statement = JdbiConnect.get();
//        ResultSet rs = null;
//        ArrayList<Product> re = new ArrayList<Product>();
//        try{
//            rs = statement.executeQuery("select + from products");
//
//            while(rs.next()){
//                re.add(new Product ( rs.getInt(1) ,rs.getString(2) ,rs.getDouble(3) ,rs.getString(4)));
//            }
//            return re;
//
//        }catch (SQLException e){
//            return re;
//        }
//    }
//
//    public Product getById(int id) {
//        Statement statement = JdbiConnect.get();
//        ResultSet rs = null;
//        ArrayList<Product>re = new ArrayList<Product>();
//        try{
//            rs = statement.executeQuery("select + from products");
//
//            if (rs.next()){
//                return  new Product ( rs.getInt(1) ,rs.getString(2) ,rs.getDouble(3) ,rs.getString(4));
//            }
//            return null;
//
//        }catch (SQLException e){
//            return null;
//        }
//    }
//
//    public static void main(String[] args) {
//        data.values().forEach(system.out::println);
//    }
//}
//
//}
