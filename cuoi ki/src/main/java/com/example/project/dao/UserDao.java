package com.example.project.dao;

import java.util.List;

import com.example.project.models.User;

public interface UserDao {
	
	void insert(User user);

	void edit(User user);
	
	void delete(int id);

	User get(String name);

	User get(int id);
	
	List<User> getAll();
}
