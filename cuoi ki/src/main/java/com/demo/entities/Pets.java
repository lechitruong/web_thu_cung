package com.demo.entities;

import java.util.Date;

public class Pets {
	private int id;
	private String petName;
	private String petType;
	private String petGender;
	private String description;
	private String detail;
	private String made;
	private int amount;
	private String money;
	private Date createDate;
	private String image;
	private int categoryPetId;
	private int catalogId;
	public Pets(int id, String petName, String petType, String petGender, String description, String detail, String made,
			int amount, String money, Date createDate, String image, int categoryPetId, int catalogId) {
		super();
		this.id = id;
		this.petName = petName;
		this.petType = petType;
		this.petGender = petGender;
		this.description = description;
		this.detail = detail;
		this.made = made;
		this.amount = amount;
		this.money = money;
		this.createDate = createDate;
		this.image = image;
		this.categoryPetId = categoryPetId;
		this.catalogId = catalogId;
	}
	public Pets() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetType() {
		return petType;
	}
	public void setPetType(String petType) {
		this.petType = petType;
	}
	public String getPetGender() {
		return petGender;
	}
	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getMade() {
		return made;
	}
	public void setMade(String made) {
		this.made = made;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getCategoryPetId() {
		return categoryPetId;
	}
	public void setCategoryPetId(int categoryPetId) {
		this.categoryPetId = categoryPetId;
	}
	
	public int getCatalogId() {
		return catalogId;
	}
	public void setCatalogId(int catalogId) {
		this.catalogId = catalogId;
	}
	@Override
	public String toString() {
		return "Pets [id=" + id + ", petName=" + petName + ", petType=" + petType + ", petGender=" + petGender
				+ ", description=" + description + ", detail=" + detail + ", made=" + made + ", amount=" + amount
				+ ", money=" + money + ", createDate=" + createDate + ", image=" + image + ", categoryPetId="
				+ categoryPetId + ", catalogId=" + catalogId + "]";
	}

	
}
