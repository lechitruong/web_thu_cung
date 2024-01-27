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
import com.demo.entities.Users;

import DB.ConnectDB;

public class OrderModel {

	public boolean insert(Orders orders) {
		boolean result = true;
		try {

			PreparedStatement ps = ConnectDB.connection().prepareStatement(
					"INSERT INTO orders(userId, fullName, email, phoneNumber, address, note, orderDate, status, totalMoney) "
							+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
			ps.setInt(1, orders.getUserId());
			ps.setString(2, orders.getFullName());
			ps.setString(3, orders.getEmail());
			ps.setString(4, orders.getPhoneNumber());
			ps.setString(5, orders.getAddress());
			ps.setString(6, orders.getNote());
			ps.setDate(7, new java.sql.Date(orders.getOrderDate().getTime()));
			ps.setBoolean(8, orders.isStatus());
			ps.setInt(9, orders.getTotalMoney());
			result = ps.executeUpdate() > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public boolean update(Orders order) {
		boolean result = true;
		try {
			PreparedStatement preparedStatement = ConnectDB.connection()
					.prepareStatement("update orders set userId = ?, fullName = ?, "
							+ "email = ?, phoneNumber = ?, address = ?, note = ?, orderDate = ? ,status = ?, totalMoney=?"
							+ " where id = ? ");
			preparedStatement.setInt(1, order.getUserId());
			preparedStatement.setString(2, order.getFullName());
			preparedStatement.setString(3, order.getEmail());
			preparedStatement.setString(4, order.getPhoneNumber());
			preparedStatement.setString(5, order.getAddress());
			preparedStatement.setString(6, order.getNote());
			preparedStatement.setDate(7, new java.sql.Date(order.getOrderDate().getTime()));
			preparedStatement.setBoolean(8, order.isStatus());
			preparedStatement.setInt(9, order.getTotalMoney());
			preparedStatement.setInt(10, order.getId());
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
					.prepareStatement("delete from orders where id = ? ");
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

	public Orders get(int id) {
		Orders orders = new Orders();
		try {

			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT * FROM orders WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				orders.setId(rs.getInt("id"));
				orders.setUserId(rs.getInt("userId"));
				orders.setFullName(rs.getString("fullName"));
				orders.setEmail(rs.getString("email"));
				orders.setPhoneNumber(rs.getString("phoneNumber"));
				orders.setAddress(rs.getString("address"));
				orders.setNote(rs.getString("note"));
				orders.setOrderDate(rs.getDate("orderDate"));
				orders.setStatus(rs.getBoolean("status"));
				orders.setTotalMoney(rs.getInt("totalMoney"));
				return orders;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public Orders getLastOrder() {
		Orders orders = new Orders();
		try {

			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT * FROM orders order by id desc limit 1");


			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				orders.setId(rs.getInt("id"));
				orders.setUserId(rs.getInt("userId"));
				orders.setFullName(rs.getString("fullName"));
				orders.setEmail(rs.getString("email"));
				orders.setPhoneNumber(rs.getString("phoneNumber"));
				orders.setAddress(rs.getString("address"));
				orders.setNote(rs.getString("note"));
				orders.setOrderDate(rs.getDate("orderDate"));
				orders.setStatus(rs.getBoolean("status"));
				orders.setTotalMoney(rs.getInt("totalMoney"));
				return orders;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}


	public List<Orders> getAll() {
		List<Orders> ordersList = new ArrayList<>();

		try {
			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT * FROM orders");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Orders orders = new Orders();
				orders.setId(rs.getInt("id"));
				orders.setUserId(rs.getInt("userId"));
				orders.setFullName(rs.getString("fullName"));
				orders.setEmail(rs.getString("email"));
				orders.setPhoneNumber(rs.getString("phoneNumber"));
				orders.setAddress(rs.getString("address"));
				orders.setNote(rs.getString("note"));
				orders.setOrderDate(rs.getDate("orderDate"));
				orders.setStatus(rs.getBoolean("status"));
				orders.setTotalMoney(rs.getInt("totalMoney"));
				ordersList.add(orders);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ordersList;
	}
	
	public List<Orders> getAllByUserID(int userID) {
		List<Orders> ordersList = new ArrayList<>();

		try {
			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT * FROM orders where userId = ?");
			ps.setInt(1, userID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Orders orders = new Orders();
				orders.setId(rs.getInt("id"));
				orders.setUserId(rs.getInt("userId"));
				orders.setFullName(rs.getString("fullName"));
				orders.setEmail(rs.getString("email"));
				orders.setPhoneNumber(rs.getString("phoneNumber"));
				orders.setAddress(rs.getString("address"));
				orders.setNote(rs.getString("note"));
				orders.setOrderDate(rs.getDate("orderDate"));
				orders.setStatus(rs.getBoolean("status"));
				orders.setTotalMoney(rs.getInt("totalMoney"));
				ordersList.add(orders);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ordersList;
	}

	public List<OrderDetails> getAllOrderdetails() {
		List<OrderDetails> ordersList = new ArrayList<>();

		try {
			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT * FROM orderdetails");
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
	public Orders findByName(String name) {
		Orders order = new Orders();

		try {
			PreparedStatement ps = ConnectDB.connection().prepareStatement("SELECT * FROM orders where fullName like ?");
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				order.setId(rs.getInt("id"));
				order.setUserId(rs.getInt("userId"));
				order.setFullName(rs.getString("fullName"));
				order.setEmail(rs.getString("email"));
				order.setPhoneNumber(rs.getString("phoneNumber"));
				order.setAddress(rs.getString("address"));
				order.setNote(rs.getString("note"));
				order.setOrderDate(rs.getDate("orderDate"));
				order.setStatus(rs.getBoolean("status"));
				order.setTotalMoney(rs.getInt("totalMoney"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return order;
	}
	public static void main(String[] args) {
//		System.out.println(new OrderModel().getAllByUserID(1));
		System.out.println(new OrderModel().get(14));
	}
}
