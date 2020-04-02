package william.poc.example.model;

public class Order {
	
	private String orderDate;
	private String orderNumber;
	private String brandName;
	private String userWhoCreatedThisOrder;
	
	public Order() {}

	public Order(String orderDate, String orderNumber, String brandName, 
			String userWhoCreatedThisOrder) {
		super();
		this.orderDate = orderDate;
		this.orderNumber = orderNumber;
		this.brandName = brandName;
		this.userWhoCreatedThisOrder = userWhoCreatedThisOrder;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getUserWhoCreatedThisOrder() {
		return userWhoCreatedThisOrder;
	}

	public void setUserWhoCreatedThisOrder(String userWhoCreatedThisOrder) {
		this.userWhoCreatedThisOrder = userWhoCreatedThisOrder;
	}
	
	
}
