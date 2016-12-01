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
			String sql = "SELECT CART_PK CART_AMOUNT, PRODUCT_ID FROM cart WHERE CART_ID = ? AND USER_ID = ?";
			pstatement = connection.prepareStatement(sql);

			pstatement.setInt(1, cartId);
			pstatement.setString(2, userId);
			resultset = pstatement.executeQuery();
			if (resultset.next()) {
				result = new CartVO();
				result.setCartPk(resultset.getInt(1));
				result.setCartId(resultset.getInt(2));
				result.setCartAmount(resultset.getInt(3));
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
	public List<CartVO> selectList(int startRow, int endRow) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet resultset = null;
		List<CartVO> cartList = new ArrayList<>();

		try {
			con = DBUtil.makeConnection();
			String sql = "SELECT * FROM cart ORDER BY CART_ID DESC LIMIT ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			resultset = pstmt.executeQuery();
			while (resultset.next()) {
				CartVO cart = new CartVO();
				cart.setCartPk(resultset.getInt(1));
				cart.setCartId(resultset.getInt(2));
				cart.setCartAmount(resultset.getInt(3));
				cart.setUserId(resultset.getString(4));
				cart.setProductId(resultset.getInt(5));

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
	public void update(CartVO cart) {
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;

		try {
			connection = DBUtil.makeConnection();
			String sql = "UPDATE cart SET CART_ID=? CART_AMOUNT=? WHERE CART_PK=? AND USER_ID AND PRODUCT_ID=?";
			pstatement = connection.prepareStatement(sql);
			pstatement.setInt(1, cart.getCartId());
			pstatement.setInt(2, cart.getCartAmount());
			pstatement.setInt(3, cart.getCartPk());
			pstatement.setString(4, cart.getUserId());
			pstatement.setInt(5, cart.getProductId());

			result = pstatement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("update cart error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
	}

	// DB Delete Method
	public void delete(CartVO cart) {
		Connection connection = null;
		PreparedStatement pstatement = null;

		try {
			connection = DBUtil.makeConnection();
			String sql = "DELETE FROM cart WHERE CART_PK = ? AND USER_ID = ?";
			pstatement = connection.prepareStatement(sql);
			pstatement.setInt(1, cart.getCartPk());
			pstatement.setString(2, cart.getUserId());
			pstatement.executeQuery();

		} catch (SQLException e) {
			System.out.println("delete cart error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
	}
}
