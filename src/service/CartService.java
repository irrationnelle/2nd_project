package service;


import dao.CartDAO;
import dao.ProductDAO;

import java.util.List;
import vo.CartVO;

public class CartService {
	private static CartService instance = new CartService();
	
	public static CartService getInstance(){
		return instance;
	}
	private CartService(){}
	
	private ProductDAO productdao = ProductDAO.getInstance();
	private CartDAO cartdao = CartDAO.getInstance();
	// 매개 변수 수정해야 함
//	public int insertCart(String clickAddCart){
//		int amount = 
//	}
	public int insertCart(String clickAddCart){
		if(clickAddCart != null){
			CartVO cart = new CartVO();
			cart.setCartId();
			int amount = cart.getCartAmount();
		}
	}
	
	
	
	public List<CartVO> showCartList(String userId) {
		List<CartVO> list = cartdao.selectList(userId);
	}
	
	
	// 매개 변수 수정해야 함!
	public int deleteCart(clearCart) {
		
	}
	
	// 매개변수 수정해야 함!
	public int updateCart(updateCart) {
		
	}
	
	public List<CartVO> passCartList(String userId) {
		List<CartVO> list = dao.selectList(userID);
				
	}
}
