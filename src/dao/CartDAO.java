package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import vo.CartVO;

public class CartDAO {

	private static CartDAO instance = new CartDAO();
	private CartDAO(){}
	public static CartDAO getInstance(){
		return instance;
	}
	
//	### table name: cart
//	* cart_pk int primary key not null auto_increment,
//	* cart_id int not null,
//	* cart_amount int not null,
//	* user_id varchar(50) not null foreign key references member(id) ,
//	* product_id int not null foreign key references product(product_id());
//	order에 보낼 totalPrice는 자바단에서 구현하기
	//DB Insert Method
	public int insert(CartVO cart){
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;

		try{
		connection = DBUtil.makeConnection();
		String sql = "INSERT INTO cart (CART_PK,CART_ID,CART_AMOUNT,USER_ID,PRODUCT_ID) VALUES (?,?,?,?,?)";
		pstatement = connection.prepareStatement(sql);
		pstatement.setInt(1, cart.getCartPk());
		pstatement.setInt(2, cart.getCartId());
		pstatement.setInt(3, cart.getCartAmount());
		pstatement.setString(4, cart.getUserId());
		pstatement.setInt(5, cart.getProductId());
		
		return pstatement.executeUpdate();
	} catch (SQLException e){
		System.out.println("insert cart error");
		e.printStackTrace();
	} finally{
		DBUtil.close(pstatement);
		DBUtil.close(connection);
	}
	return result;
	}
	
	
	
}
