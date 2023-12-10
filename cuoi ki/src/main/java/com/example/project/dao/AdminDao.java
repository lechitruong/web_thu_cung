package com.example.petstoreproject.dao;
 
import java.util.List;

import com.example.petstoreproject.model.Admin;
 
public interface AdminDao { 
	void insert(Admin admin); 
 
	void edit(Admin admin); 
	
	void delete(String id); 
 
	Admin get(int id); 
	 
	Admin get(String name); 
 
	List<Admin> getAll(); 
	
} 
