package dao;

import java.sql.*;

public class DBUtil {
	
	//데이터베이스 정보 입력
	private static String DRIVER_NAME = "org.mariadb.jdbc.Driver";
	private static String DB_URL = "jdbc:mariadb://70.12.109.114:3306/project";
	private static String DB_ID = "root";
	private static String DB_PW = "sds902";
	
	//DB와 연결하는 Method
	public static Connection makeConnection(){
		Connection connection = null;
		try {
			Class.forName(DRIVER_NAME);
			connection = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 오류");
			e.printStackTrace();
		} catch (SQLException e){
			System.out.println("커넥션 생성 오류");
			e.printStackTrace();
		}
		return connection;
	}
	
	//DB와 연결 후 Connection을 닫아주는 Method
	public static void close(Connection connection){
		if(connection != null){
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//DB와 연결 후 Statement를 닫아주는 Method
	public static void close(Statement statement){
		if(statement != null){
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//DB와 연결 후 PreparedStatement를 닫아주는 Method
	public static void close(PreparedStatement pstatement){
		if(pstatement != null){
			try {
				pstatement.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	//DB와 연결 후 ResultSet을 닫아주는 Method
	public static void close(ResultSet resultset){
		if(resultset != null){
			try {
				resultset.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
