package models;


public class CatPet {
	private int id;
	private String catPet;
	private int parrentId;
	
	
	public CatPet(String catPet, int parrentId) {
		super();
		this.catPet = catPet;
		this.parrentId = parrentId;
	}

	public CatPet(String catPet) {
		super();
		this.catPet = catPet;
	}

	public CatPet(int id, String catPet) {
		super();
		this.id = id;
		this.catPet = catPet;
	}

	public CatPet(int id) {
		super();
		this.id = id;
	}

	public CatPet() {
	}

	public CatPet(int id, String name, int catPet) {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCatPet() {
		return catPet;
	}

	public void setCatPet(String catPet) {
		this.catPet = catPet;
	}

	public int getParrentId() {
		return parrentId;
	}

	public void setParrentiI_(int parrentId) {
		this.parrentId = parrentId;
	}

	@Override
	public String toString() {
		return "CatPet{" +
				"id=" + id +
				", catPet='" + catPet + '\'' +
				", parrentId=" + parrentId +
				'}';
	}
}
