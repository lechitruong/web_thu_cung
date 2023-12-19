package com.example.project.dao;

import java.util.List;

import com.example.petstoreproject.model.Review;


public interface ReviewDao {
	void insert(Review review);

	void edit(Review review);

	void delete(int id);

	Review get(int id);
	
	Review get(String name);

	List<Review> getAll();
	
	List<Review> getReviewById(int id);
}
