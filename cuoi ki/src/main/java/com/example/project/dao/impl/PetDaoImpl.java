package nlu.petshopproject.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;


import java.sql.ResultSet;

import nlu.petshopproject.dao.PetDao;
import nlu.petshopproject.jdbc.connectDB;
import nlu.petshopproject.model.Pet;

public class PetDaoImpl extends connectDB implements PetDao {

	@Override
	public void insert(Pet pet) {
		String sql = "INSERT INTO pets(petName, petType, petGender, catalogId, price, status, description, content, discount, image, created) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, pet.getPetName());
			ps.setString(2, pet.getPetType());
			ps.setString(3, pet.getPetGender());
			ps.setString(4, pet.getCatalogId());
			ps.setString(5, pet.getPrice());
			ps.setString(6, pet.getStatus());
			ps.setString(7, pet.getDescription());
			ps.setString(8, pet.getContent());
			ps.setString(9, pet.getDiscount());
			ps.setString(10, pet.getImage());
			ps.setString(11, pet.getCreated());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Pet pet) {
		String sql = "UPDATE pets SET petName = ?,petType = ?, petGender = ? , catalogId = ?, price = ?, status = ?, description = ?, content = ?, discount = ?, image = ?, created = ? WHERE id = ?";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, pet.getPetName());
			ps.setString(2, pet.getPetType());
			ps.setString(3, pet.getPetGender());
			ps.setString(4, pet.getCatalogId());
			ps.setString(5, pet.getPrice());
			ps.setString(6, pet.getStatus());
			ps.setString(7, pet.getDescription());
			ps.setString(8, pet.getContent());
			ps.setString(9, pet.getDiscount());
			ps.setString(10, pet.getImage());
			ps.setString(11, pet.getCreated());
			ps.setString(12, pet.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(String id) {
		String sql = "DELETE FROM pets WHERE id = ?";
		new connectDB();
		Connection conn = connectDB.getConnect();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Pet get(int id) {
		String sql = "SELECT * FROM pets WHERE id = ? ";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Pet pet = new Pet();
				pet.setId(rs.getString("id"));
				pet.setPetName(rs.getString("petName"));
				pet.setPetType(rs.getString("petType"));
				pet.setPetGender(rs.getString("petGender"));
				pet.setPrice(rs.getString("price"));
				pet.setStatus(rs.getString("status"));
				pet.setDescription(rs.getString("description"));
				pet.setContent(rs.getString("content"));
				pet.setDiscount(rs.getString("discount"));
				pet.setImage(rs.getString("image"));
				pet.setCreated(rs.getString("created"));
				return pet;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Pet get(String name) {
		return null;
	}

	@Override
	public List<Pet> getAll() {
		List<Pet> pets = new ArrayList<Pet>();
		String sql = "SELECT * FROM pets";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Pet pet = new Pet();

				pet.setId(rs.getString("id"));
				pet.setPetName(rs.getString("petName"));
				pet.setPetType(rs.getString("petType"));
				pet.setPetGender(rs.getString("petGender"));
				pet.setPrice(rs.getString("price"));
				pet.setStatus(rs.getString("status"));
				pet.setDescription(rs.getString("description"));
				pet.setContent(rs.getString("content"));
				pet.setDiscount(rs.getString("discount"));
				pet.setImage(rs.getString("image"));
				pet.setCreated(rs.getString("created"));
				pets.add(pet);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pets;
	}

	@Override
	public List<Pet> getPetById(int id) {
		List<Pet> pets = new ArrayList<Pet>();
		String sql = "SELECT * FROM pets WHERE catalogId=?";
		Connection conn = connectDB.getConnect();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Pet pet = new Pet();

				pet.setId(rs.getString("id"));
				pet.setPetName(rs.getString("petName"));
				pet.setPetType(rs.getString("petType"));
				pet.setPetGender(rs.getString("petGender"));
				pet.setPrice(rs.getString("price"));
				pet.setStatus(rs.getString("status"));
				pet.setDescription(rs.getString("description"));
				pet.setContent(rs.getString("content"));
				pet.setDiscount(rs.getString("discount"));
				pet.setImage(rs.getString("image"));
				pet.setCreated(rs.getString("created"));
				pets.add(pet);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pets;
	}
	

	@Override
	public List<Pet> searchByName(String keyword) {
		List<Pet> petList = new ArrayList<Pet>();
		String sql = "SELECT * FROM pets WHERE petName LIKE ? ";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Pet pet = new Pet();
				pet.setId(rs.getString("id"));
				pet.setPetName(rs.getString("petName"));
				pet.setPetType(rs.getString("petType"));
				pet.setPetGender(rs.getString("petGender"));
				pet.setPrice(rs.getString("price"));
				pet.setStatus(rs.getString("status"));
				pet.setDescription(rs.getString("description"));
				pet.setContent(rs.getString("content"));
				pet.setDiscount(rs.getString("discount"));
				pet.setImage(rs.getString("image"));
				pet.setCreated(rs.getString("created"));
				petList.add(pet);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return petList;
	}

	
	

}
