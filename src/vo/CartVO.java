package vo;

public class CartVO {
	private int cartPk;
	private int cartId;
	private int cartAmount;
	private String userId;

	private int productId;
	private String productName;
	private int productPrice;
	private String productImage;

	public CartVO() {	}

	public CartVO(int cartPk, int cartId, int cartAmount, String userId, int productId, String productName, int productPrice, String productImage) {
		this.cartPk = cartPk;
		this.cartId = cartId;
		this.cartAmount = cartAmount;
		this.userId = userId;
		this.productId = productId;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productImage = productImage;
	}

	public int getCartPk() {
		return cartPk;
	}

	public void setCartPk(int cartPk) {
		this.cartPk = cartPk;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getCartAmount() {
		return cartAmount;
	}

	public void setCartAmount(int cartAmount) {
		this.cartAmount = cartAmount;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	@Override
	public String toString() {
		return "CartVO [cartPk=" + cartPk + ", cartId=" + cartId + ", cartAmount=" + cartAmount + ", userId=" + userId
				+ ", productId=" + productId + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productImage=" + productImage + "]";
	}
}