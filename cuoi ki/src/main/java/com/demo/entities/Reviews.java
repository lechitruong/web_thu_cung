package com.demo.entities;

public class Reviews {
private int id;
private int starRating;
private int userId;
private String note;
private int petId;
private boolean status;
public Reviews(int id, int starRating, int userId, String note, int petId, boolean status) {
	super();
	this.id = id;
	this.starRating = starRating;
	this.userId = userId;
	this.note = note;
	this.petId = petId;
	this.status = status;
}
public Reviews() {
	super();
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getStarRating() {
	return starRating;
}
public void setStarRating(int starRating) {
	this.starRating = starRating;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getNote() {
	return note;
}
public void setNote(String note) {
	this.note = note;
}
public int getPetId() {
	return petId;
}
public void setPetId(int petId) {
	this.petId = petId;
}
public boolean isStatus() {
	return status;
}
public void setStatus(boolean status) {
	this.status = status;
}
@Override
public String toString() {
	return "Reviews [id=" + id + ", starRating=" + starRating + ", userId=" + userId + ", note=" + note + ", petId="
			+ petId + ", status=" + status + "]";
}

}
