package com.example.project.models;



public class Comment {
	private int id;
	private String nameComment;
	private String createComment;
	private String message;
	private int idPet;
	
	public Comment(int id, String nameComment, String message) {
		super();
		this.id = id;
		this.nameComment = nameComment;
		this.message = message;
	}

	public Comment(String nameComment, String createComment, String message) {
		super();
		this.nameComment = nameComment;
		this.createComment = createComment;
		this.message = message;
	}

	public Comment(String nameComment, String message, int idPet) {
		super();
		this.nameComment = nameComment;
		this.message = message;
		this.idPet = idPet;
	}

	public Comment() {
	}

	public Comment(int id, String nameComment, String createComment, String message, int idPet) {
		this.id = id;
		this.nameComment = nameComment;
		this.createComment = createComment;
		this.message = message;
		this.idPet = idPet;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameComment() {
		return nameComment;
	}

	public void setNameComment(String nameComment) {
		this.nameComment = nameComment;
	}

	public String getCreateComment() {
		return createComment;
	}

	public void setCreateComment(String create_comment) {
		this.createComment = createComment;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getIdPet() {
		return idPet;
	}

	public void setId_per(int idPet) {
		this.idPet = idPet;
	}

	@Override
	public String toString() {
		return "Comment{" +
				"id=" + id +
				", nameComment='" + nameComment + '\'' +
				", createComment='" + createComment + '\'' +
				", message='" + message + '\'' +
				", id_per=" + idPet +
				'}';
	}
}
