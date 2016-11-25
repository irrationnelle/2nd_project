package service;

import dao.ProductDAO;
import vo.ProductVO;

public class ProductService {
	private static ProductService instance = new ProductService();
	public static ProductService getInstance(){
		return instance;
	}
	
	private ProductService(){}
	private ProductDAO dao = ProductDAO.getInstance();
	
	public boolean showDetails(ProductVO product){
		ProductVO clickedProduct = dao.select(product.getProductId());
		if(clickedProduct !=null){
			return true;
		} else {
			return false;
		}
	}
	
	
	
	
}
