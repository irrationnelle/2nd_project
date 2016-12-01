package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CartService;
import service.ProductService;
import vo.CartVO;
import vo.ProductVO;

@WebServlet("/cart.do")
public class CartController extends HttpServlet{

	private CartService service = CartService.getInstance();

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		execute(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		execute(request, response);
	}
	
	protected void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String action = request.getParameter("action");
		String viewPath = "";
		String userId = null;
		
		switch (action) {
		case "addcart":
			String productIdStr = request.getParameter("productId");
			String cartAmountStr = request.getParameter("amount");
			
			userId = request.getParameter("userId");
			int productId = -1;
			int cartAmount = -1;
			int result = -1;
			
			if(productIdStr != null && productIdStr.length()>=0) {
				productId = Integer.parseInt(productIdStr);
			}
			
			if(cartAmountStr != null && cartAmountStr .length()>=0) {
				cartAmount = Integer.parseInt(cartAmountStr);
			}
			
			CartVO cart = new CartVO(); 
					
			result = service.insertCart(userId, productId, cartAmount);
			viewPath = "cart.do?action=showCart&userId=" + userId;
			break;
			
		case "showCart":
			userId = request.getParameter("userId");
			List<CartVO> cartList = service.showCartList(userId);
			request.setAttribute("cartList", cartList);
			viewPath = "cartList.jsp";
			break;
		
		case "clearCart":
			String clearCartStr = request.getParameter("clearCart");
			
			if(clearCartStr != null && clearCartStr.length()>=0) {
				int clearCart = Integer.parseInt(clearCartStr);
			}
			
			//int clearCart = service.deleteCart(clearCart);
		
			viewPath = "cart.do?action=cart";
			break;
			
		case "changeCart":
			String changeCartStr = request.getParameter("changeCart");
			
			if(changeCartStr != null && changeCartStr.length()>=0) {
				int updateCart = Integer.parseInt(changeCartStr);
			}
			
			//int updateCart = service.updateCart(updateCart);
			viewPath = "cart.do?action=cart";
			break;
		}
	}
}
