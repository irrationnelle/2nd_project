package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		switch (action) {
		
		case "cart":
	
			String clickAddCartStr = request.getParameter("addCart");
			
			if(clickAddCartStr != null && clickAddCartStr.length()>=0) {
				int clickAddCart = Integer.parseInt(clickAddCartStr);
			}
			
			int insertCart = service.insertCart(clickAddCart);
			List<CartVO> cartList = service.showCartList(clickAddCart);
			
			request.setAttribute("cartList", cartList);
			viewPath = "cartList.jsp";
			break;
		
		case "clearCart":
			String clearCartStr = request.getParameter("clearCart");
			
			if(clearCartStr != null && clearCartStr.length()>=0) {
				int clearCart = Integer.parseInt(clearCartStr);
			}
			
			int clearCart = service.deleteCart(clearCart);
			viewPath ="cart.do?action=cart";
			
			break;
			
		case "updateCart":
			String updateCartStr = request.getParameter("updateCart");
			
			if(updateCartStr != null && updateCartStr.length()>=0) {
				int updateCart = Integer.parseInt(updateCartStr);
			}
			
			int updateCart = service.updateCart(updateCart);
			viewPath ="cart.do?action=cart";
			break;

		}
		
	}
}
