package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import vo.OrderInfoVO;

public class OrderInfoDAO {
	
	private static OrderInfoDAO instance = new OrderInfoDAO();
	private OrderInfoDAO(){}
	public static OrderInfoDAO getInstance(){
		return instance;
	}
	
	

	
	//DB Insert Method
	public int insert(OrderInfoVO orderInfo){
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;
		
		try {
			connection = DBUtil.makeConnection();
			String sql = "INSERT INTO ORDER_INFO ()";
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}
}
