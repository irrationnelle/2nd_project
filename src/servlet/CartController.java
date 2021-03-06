package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CartService;
import service.MemberService;
import service.ProductService;
import vo.CartPageVO;
import vo.CartVO;
import vo.MemberVO;
import vo.ProductVO;

@WebServlet("/cart.do")
public class CartController extends HttpServlet{
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
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("loginId");
		
		CartService cService = CartService.getInstance();
		MemberService mService = MemberService.getInstance();
		
		List<CartVO> cartList = null;
		
		CartPageVO cartPage = null;
		
		int result = -1;
		
		switch (action) {
		case "addcart":
			String productIdStr = request.getParameter("productId");
			String cartAmountStr = request.getParameter("amount");
			int productId = -1;
			int cartAmount = -1;
						
			if(productIdStr != null && productIdStr.length()>=0) {
				productId = Integer.parseInt(productIdStr);
			}
			
			if(cartAmountStr != null && cartAmountStr .length()>=0) {
				cartAmount = Integer.parseInt(cartAmountStr);
			}
					
			result = cService.insertCart(userId, productId, cartAmount);
			System.out.println("장바구니 추가 결과: " + result);
			viewPath = "cart.do?action=showCart&userId="+userId;
			break;
			
//		case "showCart":
//			cartList = cService.showCartList(userId);
//			request.setAttribute("cartList", cartList);
//			viewPath = "shopping_cart.jsp";
//			break;
			
		case "showCart":
			cartPage = cService.showCartPage(userId);
			request.setAttribute("cartPage", cartPage);
			viewPath = "shopping_cart.jsp";
			break;
		
		case "clearCart":
			result = cService.clearCart(userId);
			viewPath = "cart.do?action=showCart";
			break;
			
		case "changeCart":
			String changeCartStr = request.getParameter("changeCart");
			
			if(changeCartStr != null && changeCartStr.length()>=0) {
				int updateCart = Integer.parseInt(changeCartStr);
			}
			
			//int updateCart = service.updateCart(updateCart);
			viewPath = "cart.do?action=showCart";
			break;
			
		case "passCart":
			cartPage = cService.showCartPage(userId);
			request.setAttribute("cartPage", cartPage);
			
			MemberVO member = mService.showMember(userId);
			request.setAttribute("member", member);
			viewPath = "checkout.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
		dispatcher.forward(request, response);
	}
}
