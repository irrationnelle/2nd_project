package service;

<<<<<<< HEAD
import dao.CartDAO;
=======
import java.util.List;
>>>>>>> branch 'master' of https://github.com/irrationnelle/2nd_project.git

<<<<<<< HEAD
import dao.ProductDAO;

public class CartService {
	private static CartService instance = new CartService();
	public static ProductService getInstance(){
		return instance;
	}
	
	private CartService(){}
	private CartDAO dao = CartDAO.getInstance();

	
=======
import vo.CartVO;

public class CartService {
	
	public int insertCart(String clickAddCart){
		
	}
	
	
	
	public List<CartVO> showCartList(String clickAddCart) {
		
	}
	
	public int deleteCart(clearCart) {
		
	}
	
	public int updateCart(updateCart) {
		
	}
>>>>>>> branch 'master' of https://github.com/irrationnelle/2nd_project.git
}
