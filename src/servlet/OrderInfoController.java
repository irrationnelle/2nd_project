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
import service.OrderInfoService;
import service.ProductService;
import vo.CartVO;
import vo.OrderInfoVO;

@WebServlet("/order.do")
public class OrderInfoController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		execute(request, response);
	}

	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrderInfoService oService = OrderInfoService.getInstance();
		CartService cService = CartService.getInstance();
		String action = request.getParameter("action");
		String viewPath = "";
		
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("loginId");
		
		List<CartVO> cartList = null;
		int orderId = -1;
		
		int result = -1;

		switch (action) {
		case "checkout":
			System.out.println("in checkout");
			cartList = (List<CartVO>)request.getAttribute("cartList");
			oService.insertOrderInfo(cartList);
			viewPath="product.do?action=category";
			break;
			
		case "orderCart":
			cartList = cService.showCartList(userId);
			orderId = oService.insertOrderInfo(cartList);
			
			List<OrderInfoVO> orderInfoList = oService.showOrderInfoList(userId);
			request.setAttribute("orderInfoList", orderInfoList);
			result = cService.clearCart(userId);
			viewPath="dashboard.jsp";
			break;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
		dispatcher.forward(request, response);
	}
}
