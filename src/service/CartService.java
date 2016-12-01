package service;

import dao.CartDAO;

import dao.ProductDAO;

public class CartService {
	private static CartService instance = new CartService();
	public static ProductService getInstance(){
		return instance;
	}
	
	private CartService(){}
	private CartDAO dao = CartDAO.getInstance();

	
}
