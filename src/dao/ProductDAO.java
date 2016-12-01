package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
//	private int productStock;
//	private int productPrice;
//	private String productDetail;
//	private String productImage;
	public ProductVO select(int productId){
		Connection connection = null;
		PreparedStatement pstatement = null;
		ResultSet resultset = null;
		ProductVO result = null;

		try {
			connection = DBUtil.makeConnection();
			String sql = "SELECT PRODUCT_ID,"
					+ "PRODUCT_NAME,"
					+ "PRODUCT_STOCK,"
					+ "PRODUCT_PRICE,"
					+ "PRODUCT_DETAIL,"
					+ "PRODUCT_IMAGE,"
					+ "PRODUCT_IMAGEDETAIL01,"
					+ "PRODUCT_IMAGEDETAIL02,"
					+ "PRODUCT_IMAGEDETAIL03,"
					+ "PRODUCT_detail_ex"
					+ " FROM product WHERE PRODUCT_ID=?";
			pstatement = connection.prepareStatement(sql);

			pstatement.setInt(1, productId);
			resultset = pstatement.executeQuery();
			if(resultset.next()){
				result = new ProductVO();
				result.setProductId(resultset.getInt(1));
				result.setProductName(resultset.getString(2));
				result.setProductStock(resultset.getInt(3));
				result.setProductPrice(resultset.getInt(4));
				result.setProductDetail(resultset.getString(5));
				result.setProductImage(resultset.getString(6));
				result.setProductImagedetail01(resultset.getString(7));
				result.setProductImagedetail02(resultset.getString(8));
				result.setProductImagedetail03(resultset.getString(9));
				result.setProductDetailEX(resultset.getString(10));
			}
		} catch (SQLException e) {
			System.out.println("select product 에러");
			e.printStackTrace();
		} finally{
			DBUtil.close(resultset);
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
		return result;
	}
	
	public List<ProductVO> selectList(int startRow, int endRow){
		Connection con = null;
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		List<ProductVO> productList = new ArrayList<>();
		
		try {
			con = DBUtil.makeConnection();
			String sql=
			"SELECT * FROM product ORDER BY PRODUCT_ID DESC LIMIT ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ProductVO product = new ProductVO();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductStock(rs.getInt(3));
				product.setProductPrice(rs.getInt(4));
				product.setProductDetail(rs.getString(5));
				product.setProductImage(rs.getString(6));
				product.setProductImagedetail01(rs.getString(7));
				product.setProductImagedetail02(rs.getString(8));
				product.setProductImagedetail03(rs.getString(9));
				product.setProductDetailEX(rs.getString(10));
	
				productList.add(product);
			}
		} catch (SQLException e) {
			System.out.println("selectList 에러");
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
			DBUtil.close(con);	
		}
		return productList;	
	}

	public void update(ProductVO product){
		Connection connection = null;
		PreparedStatement pstatement = null;
		int result = 0;
		
		try {
			connection = DBUtil.makeConnection();
			String sql = "UPDATE product SET (PRODUCT_ID,"
					+ "PRODUCT_NAME,"
					+ "PRODUCT_STOCK,"
					+ "PRODUCT_PRICE,"
					+ "PRODUCT_DETAIL,"
					+ "PRODUCT_IMAGE,"
					+ "PRODUCT_BRAND)"
					+ "VALUES (?,?,?,?,?,?,?)";
			pstatement = connection.prepareStatement(sql);
			pstatement.setInt(1, product.getProductId());
			pstatement.setString(2, product.getProductName());
			pstatement.setInt(3, product.getProductStock());
			pstatement.setInt(4, product.getProductPrice());
			pstatement.setString(5, product.getProductDetail());
			pstatement.setString(6, product.getProductImage());
		
			result = pstatement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("update product error");
			e.printStackTrace();
		} finally{
			DBUtil.close(pstatement);
			DBUtil.close(connection);
		}
	}
	
	public int selectCount(){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		int count = 0;
		
		try {
			con = DBUtil.makeConnection();
			String sql = "SELECT COUNT(*) FROM product";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			count = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(stmt);
			DBUtil.close(con);
		}
		return count;
	}
}
