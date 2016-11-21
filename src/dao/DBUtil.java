package dao;

import java.sql.*;

public class DBUtil {
	
	//�����ͺ��̽� ���� �Է�
	private static String DRIVER_NAME = "org.mariadb.jdbc.Driver";
	private static String DB_URL = "jdbc:mariadb://70.12.109.114:3306/project";
	private static String DB_ID = "root";
	private static String DB_PW = "sds902";
	
	//DB�� �����ϴ� Method
	public static Connection makeConnection(){
		Connection connection = null;
		try {
			Class.forName(DRIVER_NAME);
			connection = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
		} catch (ClassNotFoundException e) {
			System.out.println("����̹� �ε� ����");
			e.printStackTrace();
		} catch (SQLException e){
			System.out.println("Ŀ�ؼ� ���� ����");
			e.printStackTrace();
		}
		return connection;
	}
	
	//DB�� ���� �� Connection�� �ݾ��ִ� Method
	public static void close(Connection connection){
		if(connection != null){
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//DB�� ���� �� Statement�� �ݾ��ִ� Method
	public static void close(Statement statement){
		if(statement != null){
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//DB�� ���� �� PreparedStatement�� �ݾ��ִ� Method
	public static void close(PreparedStatement pstatement){
		if(pstatement != null){
			try {
				pstatement.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	//DB�� ���� �� ResultSet�� �ݾ��ִ� Method
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
