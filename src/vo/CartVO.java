package vo;

public class CartVO {
	private int cartPk;
	private int cartId;
	private int cartAmount;
	private String userId;
	private int productId;

	public CartVO() {
	}

	public CartVO(int cartPk, int cartId, int cartAmount, String userId, int productId) {
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
