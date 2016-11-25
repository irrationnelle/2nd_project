package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.ProductVO;

public class ProductDAO {

	private static ProductDAO instance = new ProductDAO();
	private ProductDAO(){}
	public static ProductDAO getInstance(){
		return instance;
	}

	//DB Select Method
//	private int productId;
//	private String productName;
//	private int productAmount;
//	private int productPrice;
//	private String productDetail;
//	private String productImage;
//	private String productBrand;
	public ProductVO select(int productId){
		Connection connection = null;
		PreparedStatement pstatement = null;
		ResultSet resultset = null;
		ProductVO result = null;

		try {
			connection = DBUtil.makeConnection();
			String sql = "SELECT PRODUCT_ID,"
					+ "PRODUCT_NAME,"
					+ "PRODUCT_AMOUNT,"
					+ "PRODUCT_PRICE,"
					+ "PRODUCT_DETAIL,"
					+ "PRODUCT_IMAGE,"
					+ "PRODUCT_BRAND"
					+ " FROM PRODUCT WHERE ID=?";
			pstatement = connection.prepareStatement(sql);

			pstatement.setInt(1, productId);
			resultset = pstatement.executeQuery();
			if(resultset.next()){
				result = new ProductVO();
				result.setProductId(resultset.getInt(1));
				result.setProductName(resultset.getString(2));
				result.setProductAmount(resultset.getInt(3));
				result.setProductPrice(resultset.getInt(4));
				result.setProductDetail(resultset.getString(5));
				result.setProductImage(resultset.getString(6));
				result.setProductBrand(resultset.getString(7));
			}
		} catch (SQLException e) {
			System.out.println("select product ����");
			e.printStackTrace();
		} finally{
			DBUtil.close(resultset);
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		return result;
	}
}
