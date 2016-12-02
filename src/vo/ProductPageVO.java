package vo;

import java.util.List;

public class ProductPageVO {
	private List<ProductVO> productList;
	private int requestPage;
	private int startPage;
	private int endPage;
	private int totalPage;
	private int productCategory = -1;
	
	public ProductPageVO(){}

	public ProductPageVO(List<ProductVO> productList, int requestPage, int startPage, int endPage, int totalPage,
			int productCategory) {
		super();
		this.productList = productList;
		this.requestPage = requestPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.totalPage = totalPage;
		this.productCategory = productCategory;
	}

	public List<ProductVO> getProductList() {
		return productList;
	}

	public void setProductList(List<ProductVO> productList) {
		this.productList = productList;
	}

	public int getRequestPage() {
		return requestPage;
	}

	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(int productCategory) {
		this.productCategory = productCategory;
	}

	@Override
	public String toString() {
		return "ProductPageVO [productList=" + productList + ", requestPage=" + requestPage + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", totalPage=" + totalPage + ", productCategory=" + productCategory + "]";
	}
}
