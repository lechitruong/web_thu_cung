package com.demo.entities;

import java.util.Date;

public class Orders {
private int id;
private int userId;
private String fullName;
private String email;
private String phoneNumber;
private String address;
private String note;
private Date orderDate;
private boolean status;
private int totalMoney;
public Orders(int id, int userId, String fullName, String email, String phoneNumber, String address, String note,
		Date orderDate, boolean status, int totalMoney) {
	super();
	this.id = id;
	this.userId = userId;
	this.fullName = fullName;
	this.email = email;
	this.phoneNumber = phoneNumber;
	this.address = address;
	this.note = note;
	this.orderDate = orderDate;
	this.status = status;
	this.totalMoney = totalMoney;
}
public Orders() {
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
public String getFullName() {
	return fullName;
}
public void setFullName(String fullName) {
	this.fullName = fullName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getNote() {
	return note;
}
public void setNote(String note) {
	this.note = note;
}
public Date getOrderDate() {
	return orderDate;
}
public void setOrderDate(Date orderDate) {
	this.orderDate = orderDate;
}
public boolean isStatus() {
	return status;
}
public void setStatus(boolean status) {
	this.status = status;
}
public int getTotalMoney() {
	return totalMoney;
}
public void setTotalMoney(int totalMoney) {
	this.totalMoney = totalMoney;
}
@Override
public String toString() {
	return "Order [id=" + id + ", userId=" + userId + ", fullName=" + fullName + ", email=" + email + ", phoneNumber="
			+ phoneNumber + ", address=" + address + ", note=" + note + ", orderDate=" + orderDate + ", status="
			+ status + ", totalMoney=" + totalMoney + "]";
}

}
