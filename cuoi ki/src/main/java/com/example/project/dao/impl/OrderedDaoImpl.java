package nlu.petshopproject.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import nlu.petshopproject.dao.OrderedDao;
import nlu.petshopproject.jdbc.connectDB;
import nlu.petshopproject.model.Ordered;

public class OrderedDaoImpl implements OrderedDao{

	@Override
	public void insert(Ordered ordered) {
		String sql = "INSERT INTO ordered(petId, transactionId,qty) VALUES (?, ?, ?)";
		Connection con = connectDB.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(ordered.getPetId()));
			ps.setInt(2, Integer.parseInt(ordered.getTransactionId()));
			ps.setInt(3, ordered.getQty());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Ordered ordered) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Ordered get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Ordered get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Ordered> getAll() {
		List<Ordered> ordereds = new ArrayList<Ordered>();
		String sql = "SELECT * FROM ordereds";
		Connection con = connectDB.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement(sql); 
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Ordered ordered = new Ordered();
				ordered.setId(rs.getString("id"));
				ordered.setPetId(rs.getString("petId"));
				ordered.setTransactionId(rs.getString("transactionId"));
				ordered.setQty(Integer.parseInt(rs.getString("qty")));
				ordereds.add(ordered);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ordereds;
	}

}
