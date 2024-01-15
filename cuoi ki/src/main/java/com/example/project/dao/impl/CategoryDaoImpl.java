package nlu.petshopproject.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;


import java.sql.ResultSet;
import nlu.petshopproject.model.Catalog;
import nlu.petshopproject.model.Pet;
import nlu.petshopproject.dao.CategoryDao;
import nlu.petshopproject.jdbc.connectDB;

public class CategoryDaoImpl extends connectDB implements CategoryDao {

	@Override
	public void insert(Catalog category) {
		String sql = "INSERT INTO catalogs(name,isDog) VALUES (?, ?)";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, category.getName());
			ps.setString(2, category.getIsDog());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Catalog category) {
		String sql = "UPDATE catalogs SET name = ?, parentId = ? WHERE id = ?";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, category.getName());
			ps.setString(2, category.getIsDog());
			ps.setString(3, category.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	@Override
	public Catalog get(int id) {
		String sql = "SELECT * FROM catalog WHERE id = ? ";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalog category = new Catalog();

				category.setId(rs.getString("id"));
				category.setName(rs.getString("name"));
				category.setIsDog(rs.getString("isDog"));

				return category;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Catalog get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Catalog> getAll() {
		List<Catalog> categories = new ArrayList<Catalog>();
		String sql = "SELECT * FROM catalogs";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalog category = new Catalog();

				category.setId(rs.getString("id"));
				category.setName(rs.getString("name"));
				category.setIsDog(rs.getString("isDog"));
				categories.add(category);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return categories;
	}

	@Override
	public void delete(String id) {
		System.out.println("Id :"+ id);
		String sql = "DELETE FROM catalogs WHERE id = ?";
		new connectDB();
		Connection conn = connectDB.getConnect();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public List<Catalog> getCateByPet(int id) {
		List<Catalog> petsCate = new ArrayList<Catalog>();
		String sql = "select catalog.name from catalogs,pet where catalog.id = pet.catalogId and pet.id = ?";
		Connection conn = connectDB.getConnect();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalog catagoryPet = new Catalog();
				catagoryPet.setName(rs.getString("name"));
				petsCate.add(catagoryPet);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return petsCate;
	}
	
	
}
