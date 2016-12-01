package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.OrderInfoVO;

public class OrderInfoDAO {

	private static OrderInfoDAO instance = new OrderInfoDAO();

	private OrderInfoDAO() {
	}

	public static OrderInfoDAO getInstance() {
		return instance;
	}

	// order_pk int primary key not null auto_increment,
	// order_id int not null,
	// order_date datetime not null,
	// order_amount int not null,
	// order_status varchar(100) not null,
	// user_id varchar(50) not null,
	// product_id int not null,
	// foreign key(user_id) references member(id),
	// foreign key(product_id) references product(product_id)
	// DB Insert Method
	public int insert(OrderInfoVO orderInfo) {
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;

		try {
			connection = DBUtil.makeConnection();
			String sql = "INSERT INTO order_info (ORDER_PK," + "ORDER_ID," + "ORDER_DATE," + "ORDER_AMOUNT,"
					+ "ORDER_STATUS," + "USER_ID" + "PRODUCT_ID) VALUES" + "" + "(?,?,?,?,?,?,?)";

			pstatement = connection.prepareStatement(sql);
			pstatement.setInt(1, orderInfo.getOrderPk());
			pstatement.setInt(2, orderInfo.getOrderId());
			pstatement.setTimestamp(3, orderInfo.getOrderDate());
			pstatement.setInt(4, orderInfo.getOrderAmount());
			pstatement.setString(5, orderInfo.getOrderStatus());
			pstatement.setString(6, orderInfo.getId());
			pstatement.setInt(7, orderInfo.getProductId());

			return pstatement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insert orderinfo error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		return result;
	}
	
	// DB Select Method
	public OrderInfoVO select(String userId, int orderId) {
		Connection connection = null;
		PreparedStatement pstatement = null;
		ResultSet resultset = null;
		OrderInfoVO result = null;

		try {
			connection = DBUtil.makeConnection();
			String sql = "SELECT ORDER_PK,ORDER_ID,ORDER_DATE,ORDER_AMOUNT,"
					+ "ORDER_STATUS,PRODUCT_ID,USER_ID WHERE USER_ID=? AND ORDER_ID=?";
			pstatement = connection.prepareStatement(sql);

			pstatement.setString(1, userId);
			pstatement.setInt(2, orderId);
			resultset = pstatement.executeQuery();
			if (resultset.next()) {
				result = new OrderInfoVO();
				result.setOrderPk(resultset.getInt(1));
				result.setOrderId(resultset.getInt(2));
				result.setOrderDate(resultset.getTimestamp(3));
				result.setOrderAmount(resultset.getInt(4));
				result.setOrderStatus(resultset.getString(5));
				result.setProductId(resultset.getInt(6));
				result.setId(resultset.getString(7));
			}

		} catch (SQLException e) {
			System.out.println("select orderinfo error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}

		return result;
	}

	//DB SelectByOrderPk Method
	public OrderInfoVO selectByOrderPk(OrderInfoVO orderInfo){
		Connection connection = null;
		PreparedStatement pstatement = null;
		ResultSet resultset = null;
		OrderInfoVO result = orderInfo;
		try {
			connection = DBUtil.makeConnection();
			String sql = "SELECT ORDER_PK,ORDER_ID,ORDER_DATE,ORDER_AMOUNT,"
					+ "ORDER_STATUS,PRODUCT_ID,USER_ID WHERE ORDER_PK = ?";
			pstatement = connection.prepareStatement(sql);
			
			pstatement.setInt(1, orderInfo.getOrderPk());
			resultset = pstatement.executeQuery();
			
			if (resultset.next()) {
				result = new OrderInfoVO();
				result.setOrderPk(resultset.getInt(1));
				result.setOrderId(resultset.getInt(2));
				result.setOrderDate(resultset.getTimestamp(3));
				result.setOrderAmount(resultset.getInt(4));
				result.setOrderStatus(resultset.getString(5));
				result.setProductId(resultset.getInt(6));
				result.setId(resultset.getString(7));
			}

		} catch (SQLException e) {
			System.out.println("selectByOrderPk orderinfo error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		return result;
	}
	
	// DB Delete Method
	public int delete(OrderInfoVO orderInfo) {
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;

		try {
			connection = DBUtil.makeConnection();
			String sql = "DELETE FROM order_info WHERE ORDER_ID = ? AND USER_ID = ?";
			pstatement = connection.prepareStatement(sql);
			pstatement.setInt(1, orderInfo.getOrderId());
			pstatement.setString(2, orderInfo.getId());
			result = pstatement.executeUpdate();

			if (result == 0) {
				System.out.println("Order not found");
			}
		} catch (SQLException e) {
			System.out.println("orderInfo delete error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		return result;
	}

	// DB Update Method
	public void update(OrderInfoVO orderInfo) {
		Connection connection = null;
		PreparedStatement pstatement = null;

		try {
			connection = DBUtil.makeConnection();
			String sql = "UPDATE orderInfo SET ORDER_STATUS=? WHERE ORDER_ID=? AND USER_ID=?";
			pstatement = connection.prepareStatement(sql);
			pstatement.setString(1, orderInfo.getOrderStatus());
			pstatement.setInt(2, orderInfo.getOrderId());
			pstatement.setString(3, orderInfo.getId());

			pstatement.executeQuery();
		} catch (SQLException e) {
			System.out.println("update orderInfo error");
			e.printStackTrace();
		} finally {
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
	}
}
