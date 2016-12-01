package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductService;
import vo.OrderInfoVO;

@WebServlet()
public class OrderInfoController extends HttpServlet {
	private OrderService service = OrderService.getInstance();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execute(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		execute(request, response);
	}

	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		String viewPath = "";

		switch (action) {
		case "checkout":

			String checkoutStr = request.getParameter("checkout");

			if (checkoutStr != null && checkoutStr.length() >= 0) {
				int checkout = Integer.parseInt(checkoutStr);
			}

			checkout = service.insertOrderInfo("checkout");

			break;

		case "showOrderInfo":
			String showOrderInfoIdStr = request.getParameter("orderInfoId");

			if (showOrderInfoIdStr != null && showOrderInfoIdStr.length() >= 0) {
				int showOrderInfoId = Integer.parseInt(showOrderInfoIdStr);
			}
			
			List<OrderInfoVO> orderInfo = service.selectOrderInfo(showOrderInfoId);
			
			
			

		}
	}
}
