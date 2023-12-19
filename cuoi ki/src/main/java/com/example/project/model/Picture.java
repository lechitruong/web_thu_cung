package models;

import java.util.List;


public class Picture {
	private int id;
	private String picture;
	Pet product;
	
	public Picture(int id) {
		super();
		this.id = id;
	}

	public Picture(String picture, Pet product) {
		super();
		this.picture = picture;
		this.product = product;
	}

	public Picture(Pet product) {
		super();
		this.product = product;
	}

	public Picture(int id, String picture) {
		super();
		this.id = id;
		this.picture = picture;
	}

	public Picture(String picture) {
		super();
		this.picture = picture;
	}

	public Picture() {
	}

	public Picture(int id, String picture, Pet product) {
		this.id = id;
		this.picture = picture;
		this.product = product;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Pet getProduct() {
		return product;
	}

	public void setProduct(Pet product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "Picture{" +
				"id=" + id +
				", picture='" + picture + '\'' +
				", product=" + product +
				'}';
	}
}
