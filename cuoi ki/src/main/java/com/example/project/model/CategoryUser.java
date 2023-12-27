package models;



public class CategoryUser {
	private int id;
	private String categoryUser;
	private Boolean addQuyen;
	private Boolean editQuyen;
	private Boolean delQuyen;
	
	public CategoryUser(String categoryUser) {
		super();
		this.categoryUser = categoryUser;
	}

	public CategoryUser(int id) {
		super();
		this.id = id;
	}

	public CategoryUser(int id, String categoryUser) {
		super();
		this.id = id;
		this.categoryUser = categoryUser;
	}

	public CategoryUser(int id, Boolean addQuyen, Boolean editQuyen, Boolean delQuyen) {
		super();
		this.id = id;
		this.addQuyen = addQuyen;
		this.editQuyen = editQuyen;
		this.delQuyen = delQuyen;
	}

	public CategoryUser() {
	}

	public CategoryUser(int id, String categoryUser, Boolean addQuyen, Boolean editQuyen, Boolean delQuyen) {
		this.id = id;
		this.categoryUser = categoryUser;
		this.addQuyen = addQuyen;
		this.editQuyen = editQuyen;
		this.delQuyen = delQuyen;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoryUser() {
		return categoryUser;
	}

	public void setCategoryUser(String categoryUser) {
		this.categoryUser = categoryUser;
	}

	public Boolean getAddQuyen() {
		return addQuyen;
	}

	public void setAddQuyen(Boolean addQuyen) {
		this.addQuyen = addQuyen;
	}

	public Boolean getEditQuyen() {
		return editQuyen;
	}

	public void setEditQuyen(Boolean editQuyen) {
		this.editQuyen = editQuyen;
	}

	public Boolean getDelQuyen() {
		return delQuyen;
	}

	public void setDelQuyen(Boolean delQuyen) {
		this.delQuyen = delQuyen;
	}

	@Override
	public String toString() {
		return "CategoryUser{" +
				"id=" + id +
				", categoryUser='" + categoryUser + '\'' +
				", addQuyen=" + addQuyen +
				", editQuyen=" + editQuyen +
				", delQuyen=" + delQuyen +
				'}';
	}
}
