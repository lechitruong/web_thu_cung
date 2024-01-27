package com.demo.models;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.entities.OrderDetails;
import com.demo.entities.Orders;

import DB.ConnectDB;

public class OrderDetailsModel {

	public boolean create(OrderDetails orderDetail) {
		boolean result = true;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("insert into orderdetails(orderId, petId,quantity,money) values (?,?,?,?)");
			preparedStatement.setInt(1, orderDetail.getOrderId());
			preparedStatement.setInt(2, orderDetail.getPetId());
			preparedStatement.setInt(3, orderDetail.getQuanlity());
			preparedStatement.setInt(4, orderDetail.getMoney());
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
	public boolean update(OrderDetails orderDetail) {
		boolean result = true;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("update orderdetails set orderId =?, quantity=?,money=? where id = ? ");
			preparedStatement.setInt(1, orderDetail.getOrderId());
			preparedStatement.setInt(2, orderDetail.getPetId());
			preparedStatement.setInt(3, orderDetail.getQuanlity());
			preparedStatement.setInt(4, orderDetail.getMoney());
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
					.prepareStatement("delete from orderdetails where id = ? ");
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


	public List<OrderDetails> findAll() {
		List<OrderDetails> orderdetails = new ArrayList<>();

		try {
			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT * FROM orderdetails");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				OrderDetails orderdetail = new OrderDetails();
				orderdetail.setId(rs.getInt("id"));
				orderdetail.setOrderId(rs.getInt("orderId"));
				orderdetail.setPetId(rs.getInt("petId"));
				orderdetail.setQuanlity(rs.getInt("quantity"));
				orderdetail.setMoney(rs.getInt("money"));
				orderdetails.add(orderdetail);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return orderdetails;
	}
	
	public int quantity(int categoryID) {
		int quantity = 0;
		try {
			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT sum(quantity) sum FROM orderdetails ord, pets p WHERE ord.petId = p.id and p.categoryPetId = ? ");
			ps.setInt(1, categoryID);
			ResultSet resultSet = ps.executeQuery();
			while(resultSet.next()) {
				quantity = resultSet.getInt("sum");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			quantity = 0;
		}
		return quantity;
	}
	public int quantity1() {
		int quantity = 0;
		try {
			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT sum(quantity) sum FROM orderdetails ord, pets p WHERE ord.petId = p.id ");
			ResultSet resultSet = ps.executeQuery();
			while(resultSet.next()) {
				quantity = resultSet.getInt("sum");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			quantity = 0;
		}
		return quantity;
	}
	public List<OrderDetails> getAllOrderdetailsById(int id) {
		List<OrderDetails> ordersList = new ArrayList<>();

		try {
			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT * FROM orderdetails where orderId = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				OrderDetails orderDetails = new OrderDetails();
				orderDetails.setId(rs.getInt("id"));
				orderDetails.setOrderId(rs.getInt("orderId"));
				orderDetails.setPetId(rs.getInt("petId"));
				orderDetails.setMoney(rs.getInt("money"));
				orderDetails.setQuanlity(rs.getInt("quantity"));
				ordersList.add(orderDetails);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ordersList;
	}
	public static void main(String[] args) {
		System.out.println(new OrderDetailsModel().getAllOrderdetailsById(16));

	}

}
