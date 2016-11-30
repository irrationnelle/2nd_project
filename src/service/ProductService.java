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
		final int PAGE_PER_COUNT = 6; // ���������� ������ ���ǰ���
		
		int startRow = (currentPage-1)*PAGE_PER_COUNT;
		int endRow = startRow+PAGE_PER_COUNT;
		
		// ���� �������� ������ ���� DB���� ��ȸ
		List<ProductVO> productList = 
				dao.selectList(startRow, endRow);
		
		// �� �Խñ� ���� ��ȸ
		int productTotalCount = dao.selectCount();
		
		// �� �������� ���
		int totalPage = productTotalCount/PAGE_PER_COUNT;
		if(productTotalCount%PAGE_PER_COUNT != 0)
			totalPage++;
		
		// ������ �ϴ��� ���������� ���
		int startPage = (currentPage-1)/10*10+1;
		
		// ������ �ϴ��� �������� ���
		int endPage = startPage+9;
		if(endPage>totalPage)
			endPage = totalPage;
		
		return new ProductPageVO(productList,startPage,endPage,
											currentPage,totalPage);
	}
	
	
	
	
}
