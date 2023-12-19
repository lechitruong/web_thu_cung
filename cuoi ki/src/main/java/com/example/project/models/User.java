package com.example.project.models;



public class User {
	private int id;
	private String username;
	private String fullname;
	private String password;
	private String money;
	CatUser catUser;
	
	public User(String username, String fullname, String password, String money, CatUser catUser) {
		super();
		this.username = username;
		this.fullname = fullname;
		this.password = password;
		this.money = money;
		this.catUser = catUser;
	}

	public User(String username) {
		super();
		this.username = username;
	}

	public User(int id, String fullname, String password, CatUser catUser) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.password = password;
		this.catUser = catUser;
	}

	public User(int id, String fullname, CatUser catUser) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.catUser = catUser;
	}

	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public User(String username, String fullname, String password) {
		super();
		this.username = username;
		this.fullname = fullname;
		this.password = password;
	}

	public User(int id) {
		super();
		this.id = id;
	}

	public User() {
	}

	public User(int id, String username, String fullname, String password, String money, CatUser catUser) {
		this.id = id;
		this.username = username;
		this.fullname = fullname;
		this.password = password;
		this.money = money;
		this.catUser = catUser;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public CatUser getCatUser() {
		return catUser;
	}

	public void setCatUser(CatUser catUser) {
		this.catUser = catUser;
	}

	@Override
	public String toString() {
		return "User{" +
				"id=" + id +
				", username='" + username + '\'' +
				", fullname='" + fullname + '\'' +
				", password='" + password + '\'' +
				", money='" + money + '\'' +
				", catUser=" + catUser +
				'}';
	}
}
