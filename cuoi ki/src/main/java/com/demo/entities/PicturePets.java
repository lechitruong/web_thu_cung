package com.demo.entities;

public class PicturePets {
private int id;
private int petId;
private String image;
public PicturePets(int id, int petId, String image) {
	super();
	this.id = id;
	this.petId = petId;
	this.image = image;
}
public PicturePets() {
	super();
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getPetId() {
	return petId;
}
public void setPetId(int petId) {
	this.petId = petId;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
@Override
public String toString() {
	return "PicturePet [id=" + id + ", petId=" + petId + ", image=" + image + "]";
}

}
