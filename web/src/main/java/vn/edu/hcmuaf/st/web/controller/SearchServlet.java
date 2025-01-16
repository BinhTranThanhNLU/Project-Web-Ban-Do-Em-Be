import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import vn.edu.hcmuaf.st.web.model.Product;
import vn.edu.hcmuaf.st.web.services.ProductService;

import java.io.IOException;
import java.util.List;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    private ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        if (name == null) {
            name = "";
        }
        List<Product> products = productService.searchProductsByName(name);
        request.setAttribute("products", products);
        request.getRequestDispatcher("web_war/search.jsp").forward(request, response);
    }
}
