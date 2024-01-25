package com.demo.entities;

import java.util.Date;

public class Ships {
private int id;
private int userId;
private int orderId;
private Date shipDate;
private String deliveryAddress;
private boolean status;
public Ships(int id, int userId, int orderId, Date shipDate, String deliveryAddress, boolean status) {
	super();
	this.id = id;
	this.userId = userId;
	this.orderId = orderId;
	this.shipDate = shipDate;
	this.deliveryAddress = deliveryAddress;
	this.status = status;
}
public Ships() {
	super();
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public int getOrderId() {
	return orderId;
}
public void setOrderId(int orderId) {
	this.orderId = orderId;
}
public Date getShipDate() {
	return shipDate;
}
public void setShipDate(Date shipDate) {
	this.shipDate = shipDate;
}
public String getDeliveryAddress() {
	return deliveryAddress;
}
public void setDeliveryAddress(String deliveryAddress) {
	this.deliveryAddress = deliveryAddress;
}
public boolean isStatus() {
	return status;
}
public void setStatus(boolean status) {
	this.status = status;
}
@Override
public String toString() {
	return "Ship [id=" + id + ", userId=" + userId + ", orderId=" + orderId + ", shipDate=" + shipDate
			+ ", deliveryAddress=" + deliveryAddress + ", status=" + status + "]";
}

}
