package vn.edu.hcmuaf.st.web.dao.Cart;

import vn.edu.hcmuaf.st.web.dao.model.Product;
import vn.edu.hcmuaf.st.web.dao.model.ProductVariant;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class Cart {
    // dung de luu cac sp trong cart
    Map<Integer , CartProduct> data = new HashMap<>();

    public boolean add(ProductVariant p, Product product){
        if (data.containsKey(p.getIdVariant())){
    return update(p.getIdVariant() ,data.get(p.getIdVariant()).getQuantity() + 1 );
        }
        data.put(p.getIdVariant(), convert(p, product));
        return true;
    }
    public boolean update(int id, int quantity  ){
        if (data.containsKey(id)){
            CartProduct cartProduct = data.get(id);
            cartProduct.setQuantity(quantity);
            data.put(cartProduct.getIdVariant(), cartProduct);
            return true;
        }
        return false;
    }
    public boolean remove(int id){
    return data.remove(id ) !=null;
    }
    public List<CartProduct> getList(){
return new ArrayList<>(data.values());
    }
    public int getTotalQuantity(){
        AtomicInteger i = new AtomicInteger(0);
        data.values().stream().forEach(cp -> i.addAndGet(cp.getQuantity()));
        return i.get();

    }
    public double getTotal() {
        AtomicReference<Double> d = new AtomicReference<>(0.0);
        data.values().forEach(cp -> d.updateAndGet(v -> v + (cp.getQuantity() * cp.getProduct().getPrice().doubleValue())));
        return d.get();
    }


//        for (CartProduct cp : data.values()) {
//            total += cp.getQuantity() * cp.getProduct().getPrice().doubleValue();
//        }
//        return total;



    private CartProduct convert(ProductVariant p, Product product) {
        CartProduct re = new CartProduct();
        re.setIdVariant(p.getIdVariant());
        re.setIdProduct(p.getIdProduct());
        re.setIdColor(p.getIdColor());
        re.setIdSize(p.getIdSize());
        re.setQuantity(1); // Mặc định số lượng là 1 khi thêm vào giỏ hàng
        re.setIdProduct(product.getIdProduct()); // Lấy ID từ đối tượng Product
// Gắn sản phẩm vào CartProduct
        return re;
    }
}

