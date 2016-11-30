package service;

import java.util.List;

import dao.ProductDAO;
import vo.ProductPageVO;
import vo.ProductVO;

public class ProductService {
	private static ProductService instance = new ProductService();
	public static ProductService getInstance(){
		return instance;
	}
	
	private ProductService(){}
	private ProductDAO dao = ProductDAO.getInstance();
	
	public boolean showDetails(ProductVO product){
		ProductVO clickedProduct = dao.select(product.getProductId());
		if(clickedProduct !=null){
			return true;
		} else {
			return false;
		}
	}
	
	
	public ProductPageVO makePage(int 
			currentPage){
		final int PAGE_PER_COUNT = 6; // 한페이지에 보여질 글의갯수
		
		int startRow = (currentPage-1)*PAGE_PER_COUNT;
		int endRow = startRow+PAGE_PER_COUNT;
		
		// 현재 페이지에 보여줄 글을 DB에서 조회
		List<ProductVO> productList = 
				dao.selectList(startRow, endRow);
		
		// 총 게시글 갯수 조회
		int productTotalCount = dao.selectCount();
		
		// 총 페이지수 계산
		int totalPage = productTotalCount/PAGE_PER_COUNT;
		if(productTotalCount%PAGE_PER_COUNT != 0)
			totalPage++;
		
		// 페이지 하단의 시작페이지 계산
		int startPage = (currentPage-1)/10*10+1;
		
		// 페이지 하단의 끝페이지 계산
		int endPage = startPage+9;
		if(endPage>totalPage)
			endPage = totalPage;
		
		return new ProductPageVO(productList,startPage,endPage,
											currentPage,totalPage);
	}
	
	
	
	
}
