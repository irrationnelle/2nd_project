package vo;

import java.sql.Timestamp;

public class OrderInfoVO {
	private int orderID;
	private Timestamp orderDate;
	private int orderPrice;
	private int orderTotalprice;
	private int orderAmount;
	private int productID;
	
	public OrderInfoVO() {	}

	public OrderInfoVO(int orderID, Timestamp orderDate, int orderPrice, int orderTotalprice, int orderAmount,
			int productID) {
		this.orderID = orderID;
		this.orderDate = orderDate;
		this.orderPrice = orderPrice;
		this.orderTotalprice = orderTotalprice;
		this.orderAmount = orderAmount;
		this.productID = productID;
	}

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	public int getOrderTotalprice() {
		return orderTotalprice;
	}

	public void setOrderTotalprice(int orderTotalprice) {
		this.orderTotalprice = orderTotalprice;
	}

	public int getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(int orderAmount) {
		this.orderAmount = orderAmount;
	}

	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

	@Override
	public String toString() {
		return "OrderInfoVO [orderID=" + orderID + ", orderDate=" + orderDate + ", orderPrice=" + orderPrice
				+ ", orderTotalprice=" + orderTotalprice + ", orderAmount=" + orderAmount + ", productID=" + productID
				+ "]";
	}
}
