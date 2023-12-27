package models;



public class CategoryPet {
	private int id;
	private String categoryPet;
	private int parrentId;
	
	
	public CategoryPet(String categoryPet, int parrentId) {
		super();
		this.categoryPet = categoryPet;
		this.parrentId = parrentId;
	}

	public CategoryPet(String categoryPet) {
		super();
		this.categoryPet = categoryPet;
	}

	public CategoryPet(int id, String categoryPet) {
		super();
		this.id = id;
		this.categoryPet = categoryPet;
	}

	public CategoryPet(int id) {
		super();
		this.id = id;
	}

	public CategoryPet() {
	}

	public CategoryPet(int id, String categoryPet, int parrentId) {
		this.id = id;
		this.categoryPet = categoryPet;
		this.parrentId = parrentId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoryPet() {
		return categoryPet;
	}

	public void setCategoryPet(String categoryPet) {
		this.categoryPet = categoryPet;
	}

	public int getParrentId() {
		return parrentId;
	}

	public void setParrentId(int parrentId) {
		this.parrentId = parrentId;
	}

	@Override
	public String toString() {
		return "CategoryPet{" +
				"id=" + id +
				", categoryPet='" + categoryPet + '\'' +
				", parrentId=" + parrentId +
				'}';
	}
}
