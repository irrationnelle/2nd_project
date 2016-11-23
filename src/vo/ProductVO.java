package vo;

public class ProductVO {
	private int productId;
	private String productName;
	private int productAmount;
	private int productPrice;
	private String productDetail;
	private String productImage;
	private String productBrand;
	
	public ProductVO() {	}

	public ProductVO(int productId, String productName, int productAmount, int productPrice, String productDetail,
			String productImage, String productBrand) {
		this.productId = productId;
		this.productName = productName;
		this.productAmount = productAmount;
		this.productPrice = productPrice;
		this.productDetail = productDetail;
		this.productImage = productImage;
		this.productBrand = productBrand;
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

	public int getProductAmount() {
		return productAmount;
	}

	public void setProductAmount(int productAmount) {
		this.productAmount = productAmount;
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

	public String getProductBrand() {
		return productBrand;
	}

	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}

	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", productName=" + productName + ", productAmount=" + productAmount
				+ ", productPrice=" + productPrice + ", productDetail=" + productDetail + ", productImage="
				+ productImage + ", productBrand=" + productBrand + "]";
	}
}
