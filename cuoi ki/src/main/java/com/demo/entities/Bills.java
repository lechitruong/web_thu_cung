package com.demo.entities;

import java.util.Date;

public class Bills {
private int id;
private int biilId;
private int totalMoney;
private String paymentMethod;
private boolean paymentStatus;
private Date createAt;
public Bills(int id, int biilId, int totalMoney, String paymentMethod, boolean paymentStatus, Date createAt) {
	super();
	this.id = id;
	this.biilId = biilId;
	this.totalMoney = totalMoney;
	this.paymentMethod = paymentMethod;
	this.paymentStatus = paymentStatus;
	this.createAt = createAt;
}
public Bills() {
	super();
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getBiilId() {
	return biilId;
}
public void setBiilId(int biilId) {
	this.biilId = biilId;
}
public int getTotalMoney() {
	return totalMoney;
}
public void setTotalMoney(int totalMoney) {
	this.totalMoney = totalMoney;
}
public String getPaymentMethod() {
	return paymentMethod;
}
public void setPaymentMethod(String paymentMethod) {
	this.paymentMethod = paymentMethod;
}
public boolean getPaymentStatus() {
	return paymentStatus;
}
public void setPaymentStatus(boolean paymentStatus) {
	this.paymentStatus = paymentStatus;
}
public Date getCreateAt() {
	return createAt;
}
public void setCreateAt(Date createAt) {
	this.createAt = createAt;
}
@Override
public String toString() {
	return "Bill [id=" + id + ", biilId=" + biilId + ", totalMoney=" + totalMoney + ", paymentMethod=" + paymentMethod
			+ ", paymentStatus=" + paymentStatus + ", createAt=" + createAt + "]";
}

}
