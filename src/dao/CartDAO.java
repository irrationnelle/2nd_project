package dao;

import java.sql.Connection;
import java.util.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.CartVO;

public class CartDAO {

	private static CartDAO instance = new CartDAO();

	private CartDAO() {
	}

	public static CartDAO getInstance() {
		return instance;
	}

	// ### table name: cart
	// * cart_pk int primary key not null auto_increment,
	// * cart_id int not null,
	// * cart_amount int not null,
	// * user_id varchar(50) not null foreign key references member(id) ,
	// * product_id int not null foreign key references product(product_id());
	// order에 보낼 totalPrice는 자바단에서 구현하기
	// DB Insert Method
	public int insert(CartVO cart) {
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;

		try {
			connection = DBUtil.makeConnection();
			String sql = "INSERT INTO cart (CART_PK,CART_ID,CART_AMOUNT,USER_ID,PRODUCT_ID) VALUES (?,?,?,?,?)";
			pstatement = connection.prepareStatement(sql);
			pstatement.setInt(1, cart.getCartPk());
			pstatement.setInt(2, cart.getCartId());
			pstatement.setInt(3, cart.getCartAmount());
			pstatement.setString(4, cart.getUserId());
			pstatement.setInt(5, cart.getProductId());

			return pstatement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insert cart error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		return result;
	}

	// DB Select Method
	public CartVO select(int cartId, String userId) {
		Connection connection = null;
		PreparedStatement pstatement = null;
		ResultSet resultset = null;
		CartVO result = null;

		try {
			connection = DBUtil.makeConnection();
//			String sql = "SELECT CART_PK CART_AMOUNT, PRODUCT_ID FROM cart WHERE CART_ID = ? AND USER_ID = ?";
			String sql = "SELECT cart_pk, cart_id, cart_amount, user_id, cart.product_id, product_name, product_price, product_image FROM cart LEFT JOIN product ON cart.product_id = product.product_id WHERE cart_id = ? AND user_id = ?";
			pstatement = connection.prepareStatement(sql);

			pstatement.setInt(1, cartId);
			pstatement.setString(2, userId);
			resultset = pstatement.executeQuery();
			if (resultset.next()) {
				result = new CartVO();
				result.setCartPk(resultset.getInt(1));
				result.setCartId(resultset.getInt(2));
				result.setCartAmount(resultset.getInt(3));
				result.setUserId(resultset.getString(4));
				result.setProductId(resultset.getInt(5));
				result.setProductName(resultset.getString(6));
				result.setProductPrice(resultset.getInt(7));
				result.setProductImage(resultset.getString(8));
			}
		} catch (SQLException e) {
			System.out.println("Select Cart 에러");
			e.printStackTrace();
		} finally {
			DBUtil.close(resultset);
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		return result;
	}

	//DB selectList Method
	public List<CartVO> selectList(String userId) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet resultset = null;
		List<CartVO> cartList = new ArrayList<>();

		try {
			con = DBUtil.makeConnection();
//			String sql = "SELECT * FROM cart ORDER BY CART_ID WHERE user_id=?";
			String sql = "SELECT cart_pk, cart_id, cart_amount, user_id, cart.product_id, product_name, product_price, product_image FROM cart LEFT JOIN product ON cart.product_id = product.product_id WHERE user_id=? ORDER BY cart_id DESC";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userId);
			resultset = pstmt.executeQuery();
			while (resultset.next()) {
				CartVO cart = new CartVO();
				cart.setCartPk(resultset.getInt(1));
				cart.setCartId(resultset.getInt(2));
				cart.setCartAmount(resultset.getInt(3));
				cart.setUserId(resultset.getString(4));
				cart.setProductId(resultset.getInt(5));
				cart.setProductName(resultset.getString(6));
				cart.setProductPrice(resultset.getInt(7));
				cart.setProductImage(resultset.getString(8));

				cartList.add(cart);
			}
		} catch (SQLException e) {
			System.out.println("selectList OrderInfo error");
			e.printStackTrace();
		} finally {
			DBUtil.close(resultset);
			DBUtil.close(pstmt);
			DBUtil.close(con);
		}
		return cartList;
	}

	// DB Update Method
	public int update(int cartAmount, int cartPk) {
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;

		try {
			connection = DBUtil.makeConnection();
			String sql = "UPDATE cart SET CART_AMOUNT=? WHERE CART_PK=?";
			pstatement = connection.prepareStatement(sql);
			pstatement.setInt(1, cartAmount);
			pstatement.setInt(2, cartPk);

			result = pstatement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("update cart error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		return result;
	}

	// DB Delete Method
	public int delete(int cartPk, String userId) {
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;

		try {
			connection = DBUtil.makeConnection();
			String sql = "DELETE FROM cart WHERE CART_PK = ? AND USER_ID = ?";
			pstatement = connection.prepareStatement(sql);
			pstatement.setInt(1, cartPk);
			pstatement.setString(2, userId);
			
			result = pstatement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("delete cart error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		
		return result;
	}
	
	public int clear(String userId) {
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;

		try {
			connection = DBUtil.makeConnection();
			String sql = "DELETE FROM cart WHERE USER_ID = ?";
			pstatement = connection.prepareStatement(sql);
			pstatement.setString(1, userId);
			
			result = pstatement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("clear cart error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		
		return result;
	}
}
