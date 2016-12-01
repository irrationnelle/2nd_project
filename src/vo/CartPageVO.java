package vo;

import java.util.List;

public class CartPageVO {
	private List<CartVO> cartList;
	private int sortCount;
	private int totalPrice;
	
	public CartPageVO() {	}

	public CartPageVO(List<CartVO> cartList, int sortCount, int totalPrice) {
		super();
		this.cartList = cartList;
		this.sortCount = sortCount;
		this.totalPrice = totalPrice;
	}

	public List<CartVO> getCartList() {
		return cartList;
	}

	public void setCartList(List<CartVO> cartList) {
		this.cartList = cartList;
	}

	public int getSortCount() {
		return sortCount;
	}

	public void setSortCount(int sortCount) {
		this.sortCount = sortCount;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "CartPageVO [cartList=" + cartList + ", sortCount=" + sortCount + ", totalPrice=" + totalPrice + "]";
	}
}
