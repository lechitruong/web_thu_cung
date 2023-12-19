package com.example.project.models;


public class Item {
	private int id;
	private Pet product;
	private int quantity;
	private long price;
	private Order order;
	
	public Item(int id) {
		super();
		this.id = id;
	}

	public Item(Pet product, int quantity, long price, Order order) {
		super();
		this.product = product;
		this.quantity = quantity;
		this.price = price;
		this.order = order;
	}

	public Item() {
	}

	public Item(int id, Pet product, int quantity, long price, Order order) {
		this.id = id;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
		this.order = order;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Pet getProduct() {
		return product;
	}

	public void setProduct(Pet product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	@Override
	public String toString() {
		return "Item{" +
				"id=" + id +
				", product=" + product +
				", quantity=" + quantity +
				", price=" + price +
				", order=" + order +
				'}';
	}
}
