package nlu.petshopproject.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import nlu.petshopproject.dao.CategoryDao;
import nlu.petshopproject.dao.TransactionDao;
import nlu.petshopproject.jdbc.connectDB;
import nlu.petshopproject.model.Transactions;

public class TransactionDaoImpl extends connectDB implements TransactionDao {
	public void insert(Transactions transaction) { 
		String sql = "INSERT INTO transactions(userSession,userName,userMail,userPhone,address,message,amount,payment,created) VALUES (?,?,?,?,?,?,?,?,?)";
		new connectDB(); 
		Connection con = connectDB.getConnect(); 
 
		try { 
			PreparedStatement ps = con.prepareStatement(sql); 
			ps.setString(1, transaction.getUserSession());
			ps.setString(2, transaction.getUserName());
			ps.setString(3, transaction.getUserMail());
			ps.setString(4, transaction.getUserPhone());
			ps.setString(5, transaction.getAddress());
			ps.setString(6, transaction.getMessage());
			ps.setString(7, transaction.getAmount());
			ps.setString(8, transaction.getPayment());
			ps.setString(9, transaction.getCreated());
			ps.executeUpdate(); 
			
		} catch (SQLException e) { 
			e.printStackTrace(); 
		} 
	} 
	
	@Override 
	public void delete(String id) { 		
		String sql = "Delete from transactions where id=?";
		new connectDB();
		Connection con = connectDB.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,id);
			ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	} 
	
	@Override
	public Transactions get(int id) {		
		Transactions transaction = new Transactions();
		String sql = "SELECT * FROM transactions WHERE id=?";
		new connectDB();
		Connection con = connectDB.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {				
				transaction.setId(rs.getInt("id"));
				transaction.setUserSession(rs.getString("userSession"));
				transaction.setUserName(rs.getString("userName"));
				transaction.setUserMail(rs.getString("userMail"));
				transaction.setUserPhone(rs.getString("userPhone"));
				transaction.setAddress(rs.getString("address"));
				transaction.setMessage(rs.getString("message"));
				transaction.setAmount(rs.getString("amount"));
				transaction.setPayment(rs.getString("payment"));
				transaction.setCreated(rs.getString("created"));
				return transaction;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override 
	public void edit(Transactions transaction) { 
	String sql = "Update transactions set userName =?, userMail =?, userPhone =?, address= ?,message=?,amount=?,payment=?, status=? where id=?";

		new connectDB();
		Connection con = connectDB.getConnect();
		try 
		{
			PreparedStatement ps = con.prepareStatement(sql); 
			ps.setString(1, transaction.getUserName());
			ps.setString(2, transaction.getUserMail());
			ps.setString(3, transaction.getUserPhone());
			ps.setString(4, transaction.getAddress());
			ps.setString(5, transaction.getMessage());
			ps.setString(6, transaction.getAmount());
			ps.setInt(7, Integer.parseInt(transaction.getPayment()));
			ps.setString(8,transaction.getStatus());
			ps.setInt(9,transaction.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}		 
	} 
	
	@Override 
	public Transactions get(String name) { 
		return null; 
	} 
 
	@Override 
	public List<Transactions> getAll() { 
		List<Transactions> transactions = new ArrayList<Transactions>(); 
		String sql = "SELECT * FROM transactions"; 
		Connection conn = connectDB.getConnect(); 
 
		try { 
			PreparedStatement ps = conn.prepareStatement(sql); 
			ResultSet rs = ps.executeQuery(); 
 
			while (rs.next()) { 
				Transactions transaction = new Transactions(); 
				transaction.setId(rs.getInt("id"));
				transaction.setUserSession(rs.getString("userSession"));
				transaction.setUserName(rs.getString("userName"));
				transaction.setUserMail(rs.getString("userMail"));
				transaction.setUserPhone(rs.getString("userPhone"));
				transaction.setAddress(rs.getString("address"));
				transaction.setMessage(rs.getString("message"));
				transaction.setAmount(rs.getString("amount"));
				transaction.setPayment(rs.getString("payment"));
				transaction.setStatus(rs.getString("status"));
				transaction.setCreated(rs.getString("created"));
				transactions.add(transaction); 
			} 
 
		} catch (SQLException e) { 
			e.printStackTrace(); 
		} 
 
		return transactions; 
	}
}
