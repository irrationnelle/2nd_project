package vo;

public class CartVO {
	private int cartPk;
	private String cartId;
	private int cartAmount;
	private String userId;
	private String productId;

	public CartVO() {
	}

	public CartVO(int cartPk, String cartId, int cartAmount, String userId, String productId) {
		super();
		this.cartPk = cartPk;
		this.cartId = cartId;
		this.cartAmount = cartAmount;
		this.userId = userId;
		this.productId = productId;
	}

	public int getCartPk() {
		return cartPk;
	}

	public void setCartPk(int cartPk) {
		this.cartPk = cartPk;
	}

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
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

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

}
