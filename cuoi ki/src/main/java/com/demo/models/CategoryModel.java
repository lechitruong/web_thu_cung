package com.demo.models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.CategoryPets;
import com.demo.entities.Pets;

import DB.ConnectDB;

public class CategoryModel {
	public List<CategoryPets> findAll() {
		List<CategoryPets> categories = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from categorypets");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				CategoryPets category = new CategoryPets();
				category.setId(resultSet.getInt("id"));
				category.setName(resultSet.getString("name"));
				categories.add(category);
			}
		} catch (Exception e) {
			e.printStackTrace();
			categories = null;
		} finally {
			ConnectDB.disconnect();
		}
		return categories;
	}
	// ham tim ra pets dua vao id
		public CategoryPets findCategoryById(int id) {
			CategoryPets category = null;
			try {
				PreparedStatement preparedStatement = ConnectDB.connection()
						.prepareStatement("select * from categorypets where id = ? ");
				preparedStatement.setInt(1, id);
				ResultSet resultSet = preparedStatement.executeQuery();
				while (resultSet.next()) {
					category = new CategoryPets();
					category.setId(resultSet.getInt("id"));
					category.setName(resultSet.getString("name"));
				}
			} catch (Exception e) {
				e.printStackTrace();
				category = null;
			} finally {
				ConnectDB.disconnect();
			}
			return category;
		}
		public boolean checkExist(int categoryId, List<CategoryPets> categories) {
			for (CategoryPets category : categories) {
				if(category.getId() == categoryId)
					return true;
			}
			return false;
		}
}
