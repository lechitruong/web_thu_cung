package com.demo.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.Pets;
import com.demo.entities.Reviews;

import DB.ConnectDB;

public class ReviewModel {
	public boolean create(Reviews review) {
		boolean result = true;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection().prepareStatement(
					"insert into pets(starRating, userId,note,petId, status, ) values (?,?,?,?,?)");
			preparedStatement.setInt(1, review.getStarRating());
			preparedStatement.setInt(2, review.getUserId());
			preparedStatement.setString(3, review.getNote());
			preparedStatement.setInt(4, review.getPetId());
			preparedStatement.setBoolean(5, review.isStatus());
			result = preparedStatement.executeUpdate() > 0;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			result = false;
		} finally {
			ConnectDB.disconnect();
		}
		return result;
	}

// ham update
	public boolean update(Reviews review) {
		boolean result = true;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("update reviews set starRating =?, userId=?,note=?,petId=?, status=? where id = ? ");
			preparedStatement.setInt(1, review.getStarRating());
			preparedStatement.setInt(2, review.getUserId());
			preparedStatement.setString(3, review.getNote());
			preparedStatement.setInt(4, review.getPetId());
			preparedStatement.setBoolean(5, review.isStatus());
			preparedStatement.setInt(6, review.getId());
			result = preparedStatement.executeUpdate() > 0;
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
		} finally {
			ConnectDB.disconnect();
		}
		return result;
	}

// ham xoa user
	public boolean delete(int id) {
		boolean result = true;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("delete from reviews where id = ? ");
			preparedStatement.setInt(1, id);
			result = preparedStatement.executeUpdate() > 0;
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
		} finally {
			ConnectDB.disconnect();
		}
		return result;
	}

//	public Reviews get(int id) {
//		return null;
//	}
//
//	public Reviews get(String name) {
//		return null;
//	}

	public List<Reviews> getAll() {
		List<Reviews> feedbacks = new ArrayList<Reviews>();

		try {
			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT * FROM reviews");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
//            	Feedbacks feedback = new Feedbacks();
//            	feedback.setId(rs.getInt("id"));
//            	feedback.setStarRating(rs.getInt("starRating"));
//            	feedback.setUserId(rs.getInt("userId"));
//            	feedback.setNote(rs.getString("note"));
//            	feedback.setPetId(rs.getInt("petId"));
//            	feedback.setStatus(rs.getBoolean("status"));
//            	feedback.add(feedback);
				Reviews feedback = new Reviews(rs.getInt("id"), rs.getInt("starRating"), rs.getInt("userId"),
						rs.getString("note"), rs.getInt("petId"), rs.getBoolean("status"));
				feedbacks.add(feedback);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return feedbacks;
	}

	public List<Reviews> getFeedbackById(int id) {
		List<Reviews> feedbacks = new ArrayList<Reviews>();
		try {
			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT * FROM reviews WHERE petId=?");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Reviews feedback = new Reviews(rs.getInt("id"), rs.getInt("starRating"), rs.getInt("userId"),
						rs.getString("note"), rs.getInt("petId"), rs.getBoolean("status"));
				feedbacks.add(feedback);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return feedbacks;
	}
}
