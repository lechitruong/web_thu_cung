package com.demo.models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;

import com.demo.entities.Pets;
import com.demo.entities.Users;

import DB.ConnectDB;

public class PetModel {
	// ham lay ra danh sach cac pet
	public List<Pets> findAll() {
		List<Pets> pets = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement("select * from pets");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Pets pet = new Pets();
				pet.setId(resultSet.getInt("id"));
				pet.setPetName(resultSet.getString("petName"));
				pet.setPetGender(resultSet.getString("petGender"));
				pet.setDescription(resultSet.getString("description"));
				pet.setDetail(resultSet.getString("detail"));
				pet.setMade(resultSet.getString("made"));
				pet.setAmount(resultSet.getInt("amount"));
				pet.setMoney(resultSet.getString("money"));
				pet.setImage(resultSet.getString("image"));
				pet.setCategoryPetId(resultSet.getInt("categoryPetId"));
				pet.setCatalogId(resultSet.getInt("catalogId"));
				pets.add(pet);

			}
		} catch (Exception e) {
			e.printStackTrace();
			pets = null;
		} finally {
			ConnectDB.disconnect();
		}
		return pets;
	}

	// ham tim ra pets dua vao id
	public Pets findPetById(int id) {
		Pets pet = null;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("select * from pets where id = ? ");
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				pet = new Pets();
				pet.setId(resultSet.getInt("id"));
				pet.setPetName(resultSet.getString("petName"));
				pet.setPetType(resultSet.getString("petType"));
				pet.setPetGender(resultSet.getString("petGender"));
				pet.setDescription(resultSet.getString("description"));
				pet.setDetail(resultSet.getString("detail"));
				pet.setMade(resultSet.getString("made"));
				pet.setAmount(resultSet.getInt("amount"));
				pet.setMoney(resultSet.getString("money"));
				pet.setCreateDate(resultSet.getDate("createDate"));
				pet.setImage(resultSet.getString("image"));
				pet.setCategoryPetId(resultSet.getInt("categoryPetId"));
				pet.setCatalogId(resultSet.getInt("catalogId"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			pet = null;
		} finally {
			ConnectDB.disconnect();
		}
		return pet;
	}

	public List<Pets> findTop10() {
		List<Pets> pets = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("select * from pets order by id desc limit 10");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Pets pet = new Pets();
				pet.setId(resultSet.getInt("id"));
				pet.setPetName(resultSet.getString("petName"));
				pet.setPetGender(resultSet.getString("petGender"));
				pet.setDescription(resultSet.getString("description"));
				pet.setDetail(resultSet.getString("detail"));
				pet.setMade(resultSet.getString("made"));
				pet.setAmount(resultSet.getInt("amount"));
				pet.setMoney(resultSet.getString("money"));
				pet.setCreateDate(resultSet.getDate("createDate"));
				pet.setImage(resultSet.getString("image"));
				pet.setCategoryPetId(resultSet.getInt("categoryPetId"));
				pet.setCatalogId(resultSet.getInt("catalogId"));
				pets.add(pet);

			}
		} catch (Exception e) {
			e.printStackTrace();
			pets = null;
		} finally {
			ConnectDB.disconnect();
		}
		return pets;
	}

	public boolean checkExist(int petID, List<Pets> pets) {
		for (Pets pet : pets) {
			if (pet.getId() == petID)
				return true;
		}
		return false;
	}

	// ham tra ve danh sach cho cho
	public static List<Pets> findAllByCategory(int categoryId) {
		List<Pets> pets = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("select * from pets where categoryPetId = ?");
			preparedStatement.setInt(1, categoryId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Pets pet = new Pets();
				pet.setId(resultSet.getInt("id"));
				pet.setPetName(resultSet.getString("petName"));
				pet.setPetGender(resultSet.getString("petGender"));
				pet.setDescription(resultSet.getString("description"));
				pet.setDetail(resultSet.getString("detail"));
				pet.setMade(resultSet.getString("made"));
				pet.setAmount(resultSet.getInt("amount"));
				pet.setMoney(resultSet.getString("money"));
				pet.setCreateDate(resultSet.getDate("createDate"));
				pet.setImage(resultSet.getString("image"));
				pet.setCategoryPetId(resultSet.getInt("categoryPetId"));
				pet.setCatalogId(resultSet.getInt("catalogId"));
				pets.add(pet);
			}
		} catch (Exception e) {
			e.printStackTrace();
			pets = null;
		} finally {
			ConnectDB.disconnect();
		}
		return pets;
	}

	public List<Pets> findAllByCatalog(int categoryId, int catalogId) {
		List<Pets> pets = new ArrayList<Pets>();
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("select * from pets where catalogId = ? and categoryPetId = ?");
			preparedStatement.setInt(1, catalogId);
			preparedStatement.setInt(2, categoryId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Pets pet = new Pets();
				pet.setId(resultSet.getInt("id"));
				pet.setPetName(resultSet.getString("petName"));
				pet.setPetGender(resultSet.getString("petGender"));
				pet.setDescription(resultSet.getString("description"));
				pet.setDetail(resultSet.getString("detail"));
				pet.setMade(resultSet.getString("made"));
				pet.setAmount(resultSet.getInt("amount"));
				pet.setMoney(resultSet.getString("money"));
				pet.setCreateDate(resultSet.getDate("createDate"));
				pet.setImage(resultSet.getString("image"));
				pet.setCategoryPetId(resultSet.getInt("categoryPetId"));
				pet.setCatalogId(resultSet.getInt("catalogId"));
				pets.add(pet);
			}
		} catch (Exception e) {
			e.printStackTrace();
			pets = null;
		} finally {
			ConnectDB.disconnect();
		}
		return pets;
	}

	// ham tuoi tho cho pet dua vao ngay sinh
	public String ageByPet(String date) {
		int age = 0;
		String result = "";
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate birthdateLocal = LocalDate.parse(date, formatter);
		LocalDate currentDateLocal = LocalDate.now();
		age = (int) ChronoUnit.MONTHS.between(birthdateLocal, currentDateLocal);
		int years = age / 12;
		int months = age % 12;
		if (years == 0) {
			result = months + " tháng";
		} else {
			result = years + " năm " + months + " tháng";
		}
		return result;
	}

	public static void main(String[] args) {
		PetModel petModel = new PetModel();
//		System.out.println(petModel.findTop10());
//		System.out.println(petModel.findPetById(1));
//		System.out.println(petModel.findAllByCategory(3));
//		System.out.println(userModel.checkLogin("acc2", "123"));
//		System.out.println(BCrypt.checkpw("123", "$2a$10$GQtaPy7y2Q3gsPhA.QlJueoo0wGjy.hNK5/U/GTqqxXMGEjtDnkRi"));
//		System.out.println(BCrypt.hashpw("123", BCrypt.gensalt()));
//		System.out.println(petModel.ageByPet("2003-12-08"));
		System.out.println(petModel.findAllByCatalog(3, 16));
	}

}
