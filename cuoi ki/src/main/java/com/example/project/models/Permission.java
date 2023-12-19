package com.example.project.models;


public class Permission {
	private int id;
	private CatUser catUser;
	private Boolean addQuyen;
	private Boolean editQuyen;
	private Boolean delQuyen;

	public Permission() {
	}

	public Permission(int id, CatUser catUser, Boolean addQuyen, Boolean editQuyen, Boolean delQuyen) {
		this.id = id;
		this.catUser = catUser;
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

	public CatUser getCatUser() {
		return catUser;
	}

	public void setCatUser(CatUser catUser) {
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

	public Boolean getDelquyen() {
		return delQuyen;
	}

	public void setDelquyen(Boolean delquyen) {
		this.delQuyen = delQuyen;
	}

	@Override
	public String toString() {
		return "Permission{" +
				"id=" + id +
				", catUser=" + catUser +
				", addQuyen=" + addQuyen +
				", editquyen=" + editQuyen +
				", delquyen=" + delQuyen +
				'}';
	}
}
