package vo;

import java.sql.Timestamp;

public class OrderInfoVO {
	private int orderPk;
	private int orderId;
	private Timestamp orderDate;
	private int orderAmount;
	private String orderStatus;
	private int productId;
	private String Id;
	
	public OrderInfoVO(){};
	
	public OrderInfoVO(int orderPk, int orderId, Timestamp orderDate, int orderAmount, String orderStatus, int productId,
			String id) {
		super();
		this.orderPk = orderPk;
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.orderAmount = orderAmount;
		this.orderStatus = orderStatus;
		this.productId = productId;
		Id = id;
	}
	
	public int getOrderPk() {
		return orderPk;
	}
	public void setOrderPk(int orderPk) {
		this.orderPk = orderPk;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public Timestamp getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderAmount() {
		return orderAmount;
	}
	public void setOrderAmount(int orderAmount) {
		this.orderAmount = orderAmount;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	
	
}
