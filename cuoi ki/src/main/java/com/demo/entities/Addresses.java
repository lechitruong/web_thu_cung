package com.demo.entities;

public class Addresses {
private int id;
private int userId;
private String addressDetail;
private String stateName;
private String cityName;
private String wardName;
public Addresses(int id, int userId, String addressDetail, String stateName, String cityName, String wardName) {
	super();
	this.id = id;
	this.userId = userId;
	this.addressDetail = addressDetail;
	this.stateName = stateName;
	this.cityName = cityName;
	this.wardName = wardName;
}

public Addresses() {
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
public String getAddressDetail() {
	return addressDetail;
}
public void setAddressDetail(String addressDetail) {
	this.addressDetail = addressDetail;
}
public String getStateName() {
	return stateName;
}
public void setStateName(String stateName) {
	this.stateName = stateName;
}
public String getCityName() {
	return cityName;
}
public void setCityName(String cityName) {
	this.cityName = cityName;
}
public String getWardName() {
	return wardName;
}
public void setWardName(String wardName) {
	this.wardName = wardName;
}

@Override
public String toString() {
	return "Address [id=" + id + ", userId=" + userId + ", addressDetail=" + addressDetail + ", stateName=" + stateName
			+ ", cityName=" + cityName + ", wardName=" + wardName + "]";
}

}
