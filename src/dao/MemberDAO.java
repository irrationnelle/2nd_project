package dao;

import java.sql.*;
import vo.*;

public class MemberDAO {
	
	//하나의 DAO instance 객체를 생성하는 Singleton Pattern을 사용
	private static MemberDAO instance = new MemberDAO();
	public MemberDAO() {}
	public static MemberDAO getInstance(){
		return instance;
	}

	//DB Insert Method
	public int insert(MemberVO member){
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;
		
		try{
		connection = DBUtil.makeConnection();
		String sql = "INSERT INTO MEMBER (ID,PASSWORD,EMAIL) VALUES (?,?,?)";
		pstatement = connection.prepareStatement(sql);
		pstatement.setString(1, member.getId());
		pstatement.setString(2, member.getPassword());
		pstatement.setString(3, member.getEmail());
		
		return pstatement.executeUpdate(); 
	} catch (SQLException e){
		System.out.println("insert member error");
		e.printStackTrace();
	} finally{
		DBUtil.close(pstatement);
		DBUtil.close(connection);
	}
	return result;
	}
	
	//DB Select Method
	public MemberVO select(String id){
		Connection connection = null;
		PreparedStatement pstatement = null;
		ResultSet resultset = null;
		MemberVO result = null;
		try {
			connection = DBUtil.makeConnection();
			String sql = "SELECT ID,PASSWORD,EMAIL FROM MEMBER WHERE ID=?";
			pstatement = connection.prepareStatement(sql);
			
			pstatement.setString(1, id);
			resultset = pstatement.executeQuery();
			if(resultset.next()){
				result = new MemberVO();
				result.setId(resultset.getString(1));
				result.setPassword(resultset.getString(2));
				result.setEmail(resultset.getString(3));
			}
		} catch (SQLException e) {
			System.out.println("select member 에러");
			e.printStackTrace();
		} finally{
			DBUtil.close(resultset);
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		return result;
	}
	
	//DB Update Method
	public void update(MemberVO member){
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;
		
		try {
			connection = DBUtil.makeConnection();
			String sql = "UPDATE MEMBER SET PASSWORD=? EMAIL=? WHERE ID=?";
			pstatement = connection.prepareStatement(sql);
			pstatement.setString(1, member.getPassword());
			pstatement.setString(2, member.getEmail());
			pstatement.setString(3, member.getId());
			
			result = pstatement.executeUpdate();
		} catch (SQLException e){
			System.out.println("update member error");
			e.printStackTrace();
		} finally{
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
	}
	//DB Delete Method
	public int delete(MemberVO member){
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;
		
		try {
			connection = DBUtil.makeConnection();
			String sql = "DELETE FROM MEMBER WHER ID=?";
			pstatement = connection.prepareStatement(sql);
			pstatement.setString(1, member.getId());
			result = pstatement.executeUpdate();
			if (result ==0){
				System.out.println("ID not found");
				}
			}  catch (SQLException e) {
				System.out.println("delete member error");
				e.printStackTrace();
		} finally{
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
	
	return result;
	}
}
