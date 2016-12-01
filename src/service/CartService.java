package service;

import dao.CartDAO;
import dao.ProductDAO;

import java.util.List;
import vo.CartVO;
import vo.ProductVO;

public class CartService {
	static private int cartCount = 10000;
	private ProductDAO productdao = ProductDAO.getInstance();
	private CartDAO cartdao = CartDAO.getInstance();
	private static CartService instance = new CartService();
	
	public static CartService getInstance(){ return instance;}

	private CartService(){}
	
	public int insertCart(String userId, int productId, int cartAmount) {
		int result = -2;
		
		ProductVO product = productdao.select(productId);
		int productStock = product.getProductStock();
		
		if(userId != null && productId > 0 && cartAmount > 0 && productStock >= cartAmount) {
			CartVO cart = new CartVO();
			cart.setCartId(cartCount);
			cart.setCartAmount(cartAmount);
			cart.setProductId(productId);
			cart.setUserId(userId);
			
			result = cartdao.insert(cart);
			System.out.println("insert °á°ú: " + result);
			cartCount++;
			
			return result;
		} else {
			return result;
		}
	}
	
	public List<CartVO> showCartList(String userId) {
		List<CartVO> list = cartdao.selectList(userId);
		return list;
	}
	
	public int deleteCart(int cartPk, String userId) {
		int result = -2;
		result = cartdao.delete(cartPk, userId);
		return result;
	}
	
	public int updateCart(int cartAmount, int cartPk, int productId) {
		int result = -2;
		ProductVO product = productdao.select(productId);
		int productStock = product.getProductStock();
		if(productStock >= cartAmount) {
			result = cartdao.update(cartAmount, cartPk);
		}
		return result;
	}
}
