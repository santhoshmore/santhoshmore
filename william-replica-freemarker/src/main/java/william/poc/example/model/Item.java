package william.poc.example.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "item")
public class Item {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "item_id")
	@Length(min = 13, max = 13)
	private String itemId;
	@Column(name = "price")
	private BigDecimal price;
	@Column(name = "discount")
	private BigDecimal discount;
	@Column(name = "quantity")
	private int quantity;
	@Column(name = "total")
	private Integer total;
	@Column(name = "sales_tax")
	private BigDecimal salesTax;
	
	public Item() {}

	public Item(BigDecimal price, BigDecimal discount, int quantity, Integer total, BigDecimal salesTax) {
		super();
		this.price = price;
		this.discount = discount;
		this.quantity = quantity;
		this.total = total;
		this.salesTax = salesTax;
	}
	
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	
	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getDiscount() {
		return discount;
	}

	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public BigDecimal getSalesTax() {
		return salesTax;
	}

	public void setSalesTax(BigDecimal salesTax) {
		this.salesTax = salesTax;
	}
	
	
}
