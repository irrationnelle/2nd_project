package vo;

public class ProductVO {
	private int productId;
	private String productName;
	private int productStock;
	private int productPrice;
	private String productDetail;
	private String productImage;
	private String productImagedetail01;
	private String productImagedetail02;
	private String productImagedetail03;
	private String productDetailEX;
	private int productCategory = -1;
	
	public ProductVO() {	}

	public ProductVO(int productId, String productName, int productStock, int productPrice, String productDetail,
			String productImage, String productImagedetail01, String productImagedetail02, String productImagedetail03,
			String productDetailEX, int productCategory) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productStock = productStock;
		this.productPrice = productPrice;
		this.productDetail = productDetail;
		this.productImage = productImage;
		this.productImagedetail01 = productImagedetail01;
		this.productImagedetail02 = productImagedetail02;
		this.productImagedetail03 = productImagedetail03;
		this.productDetailEX = productDetailEX;
		this.productCategory = productCategory;
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

	public String getProductImagedetail01() {
		return productImagedetail01;
	}

	public void setProductImagedetail01(String productImagedetail01) {
		this.productImagedetail01 = productImagedetail01;
	}

	public String getProductImagedetail02() {
		return productImagedetail02;
	}

	public void setProductImagedetail02(String productImagedetail02) {
		this.productImagedetail02 = productImagedetail02;
	}

	public String getProductImagedetail03() {
		return productImagedetail03;
	}

	public void setProductImagedetail03(String productImagedetail03) {
		this.productImagedetail03 = productImagedetail03;
	}

	public String getProductDetailEX() {
		return productDetailEX;
	}

	public void setProductDetailEX(String productDetailEX) {
		this.productDetailEX = productDetailEX;
	}

	public int getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(int productCategory) {
		this.productCategory = productCategory;
	}

	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", productName=" + productName + ", productStock=" + productStock
				+ ", productPrice=" + productPrice + ", productDetail=" + productDetail + ", productImage="
				+ productImage + ", productImagedetail01=" + productImagedetail01 + ", productImagedetail02="
				+ productImagedetail02 + ", productImagedetail03=" + productImagedetail03 + ", productDetailEX="
				+ productDetailEX + ", productCategory=" + productCategory + "]";
	}
}
