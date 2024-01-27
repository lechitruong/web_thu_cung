package com.demo.entities;

public class OrderDetails {
private int id;
private int orderId;
private int petId;
private int quanlity; 
private int money;
public OrderDetails(int id, int orderId, int petId, int quanlity, int money) {
	super();
	this.id = id;
	this.orderId = orderId;
	this.petId = petId;
	this.quanlity = quanlity;
	this.money = money;
}
public OrderDetails() {
	super();
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getOrderId() {
	return orderId;
}
public void setOrderId(int orderId) {
	this.orderId = orderId;
}
public int getPetId() {
	return petId;
}
public void setPetId(int petId) {
	this.petId = petId;
}
public int getQuanlity() {
	return quanlity;
}
public void setQuanlity(int quanlity) {
	this.quanlity = quanlity;
}
public int getMoney() {
	return money;
}
public void setMoney(int money) {
	this.money = money;
}
@Override
public String toString() {
	return "OrderDetail [id=" + id + ", orderId=" + orderId + ", petId=" + petId + ", quanlity=" + quanlity + ", money="
			+ money + "]";
}

}
