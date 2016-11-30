package vo;

public class ProductVO {
	private int productId;
	private String productName;
	private int productStock;
	private int productPrice;
	private String productDetail;
	private String productImage;
	
	public ProductVO() {	}

	public ProductVO(int productId, String productName, int productStock, int productPrice, String productDetail,
			String productImage, String productBrand) {
		this.productId = productId;
		this.productName = productName;
		this.productStock = productStock;
		this.productPrice = productPrice;
		this.productDetail = productDetail;
		this.productImage = productImage;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductStock() {
		return productStock;
	}

	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductDetail() {
		return productDetail;
	}

	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}


	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", productName=" + productName + ", productStock=" + productStock
				+ ", productPrice=" + productPrice + ", productDetail=" + productDetail + ", productImage="
				+ productImage + "]";
	}
}
