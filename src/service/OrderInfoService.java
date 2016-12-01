package service;

import java.util.List;

import dao.OrderInfoDAO;
import vo.CartVO;
import vo.OrderInfoVO;

public class OrderInfoService {
	private static OrderInfoService instance = new OrderInfoService();
	public static OrderInfoService getInstance() { return instance; }
	private OrderInfoService() {}
	
	private OrderInfoDAO orderInfoDao = OrderInfoDAO.getInstance();
	
	public static int orderId = 100000;

	public void insertOrderInfo(List<CartVO> cartList) {
		for(CartVO cart : cartList) {
			OrderInfoVO orderInfo = new OrderInfoVO();
			orderInfo.setOrderId(orderId);
			orderInfo.setProductId(cart.getProductId());
			orderInfo.setOrderAmount(cart.getCartAmount());
			orderInfo.setId(cart.getUserId());
			orderInfo.setOrderStatus("preparing");
			
			System.out.println(cart);
			orderInfoDao.insert(orderInfo);
		}
		orderId++;
	}
}
