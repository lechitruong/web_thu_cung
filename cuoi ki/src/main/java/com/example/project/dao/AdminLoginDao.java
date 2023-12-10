package com.example.petstoreproject.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.example.petstoreproject.jdbc.DBConnect;
import com.example.petstoreproject.model.Admin;



public class  AdminLoginDao {
	public static boolean checkAdminLogin (String username, String password) {
		boolean exist = false;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String sql = "select * from admin where username=? and password=?";
			Connection con = DBConnect.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, username);
			st.setString(2, password);
			ResultSet rs;
			rs = st.executeQuery();
		    exist = rs.next();
		    Admin admin = new Admin();
		    String name = rs.getString("name");
		    admin.setName(name);
		    } catch (Exception e) {
			e.printStackTrace();
		}
		return exist;
	}

}
