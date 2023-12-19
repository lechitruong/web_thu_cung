package models;



public class CatUser {
	private int id;
	private String catUser;
	private Boolean addQuyen;
	private Boolean editQuyen;
	private Boolean delQuyen;
	
	public CatUser(String catUser) {
		super();
		this.catUser = catUser;
	}

	public CatUser(int id) {
		super();
		this.id = id;
	}

	public CatUser(int id, String catUser) {
		super();
		this.id = id;
		this.catUser = catUser;
	}

	public CatUser(int id, Boolean addQuyen, Boolean editQuyen, Boolean delQuyen) {
		super();
		this.id = id;
		this.addQuyen = addQuyen;
		this.editQuyen = editQuyen;
		this.delQuyen = delQuyen;
	}

	public CatUser() {
	}

	public CatUser(int id, String catuser, boolean addQuyen, boolean editQuyen, boolean delQuyen) {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCatUser() {
		return catUser;
	}

	public void setCatUser(String catUser) {
		this.catUser = catUser;
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
		return "CatUser{" +
				"id=" + id +
				", catUser='" + catUser + '\'' +
				", addQuyen=" + addQuyen +
				", editQuyen=" + editQuyen +
				", delQuyen=" + delQuyen +
				'}';
	}
}
