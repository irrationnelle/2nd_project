package service;

import dao.CartDAO;
import dao.ProductDAO;

import java.util.List;

import vo.CartPageVO;
import vo.CartVO;
import vo.ProductVO;

public class CartService {
	private int cartCount = 10000;
	private ProductDAO productdao = ProductDAO.getInstance();
	private CartDAO cartdao = CartDAO.getInstance();
	private static CartService instance = new CartService();
	
	public static CartService getInstance(){ return instance;}

	private CartService(){}
	
	public int insertCart(String userId, int productId, int cartAmount) {
		int result = -2;
		
		ProductVO product = productdao.select(productId);
		int productStock = product.getProductStock();
		
		List<CartVO> list = cartdao.selectList(userId);
		for(CartVO cart : list) {
			if(cart.getProductId()==productId) {
				result = cartdao.update(cart.getCartAmount()+cartAmount, cart.getCartPk());
				return result;
			}
		}
		
		// 겹치는 productId가 존재할 경우, insert가 아니라 update 처리.
		
		if(userId != null && productId > 0 && cartAmount > 0 && productStock >= cartAmount) {
			CartVO cart = new CartVO();
			cart.setCartId(cartCount);
			cart.setCartAmount(cartAmount);
			cart.setProductId(productId);
			cart.setUserId(userId);
			
			
			
			result = cartdao.insert(cart);
			System.out.println("insert 결과: " + result);
			cartCount++;
			
			return result;
		} else {
			return result;
		}
	}
	
	public List<CartVO> showCartList(String userId) {
		List<CartVO> cartList = cartdao.selectList(userId);
		return cartList;
	}
	
	public CartPageVO showCartPage(String userId) {
		List<CartVO> cartList = cartdao.selectList(userId);
		int totalPrice = 0;
		int sortCount = 0;
		for(CartVO cart : cartList) {
			totalPrice += (cart.getProductPrice() * cart.getCartAmount());
			sortCount++;
		}
		
		CartPageVO cartPage = new CartPageVO();
		cartPage.setCartList(cartList);
		cartPage.setTotalPrice(totalPrice);
		cartPage.setSortCount(sortCount);
		
		return cartPage;
	}
	
	public int deleteCart(int cartPk, String userId) {
		int result = -2;
		result = cartdao.delete(cartPk, userId);
		return result;
	}
	
	public int clearCart(String userId) {
		int result = -2;
		result = cartdao.clear(userId);
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
