package nlu.petshopproject.dao.impl;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

//import com.vienmv.dao.impl.String;
//import com.vienmv.model.Category;

import nlu.petshopproject.dao.BoardnewDao;
import nlu.petshopproject.jdbc.connectDB;
import nlu.petshopproject.model.Boardnew;

public class BoardnewDaoImpl extends connectDB implements BoardnewDao{

	// Define the connection URL, driver class, username and password for MySQL
	private static final String CONNECTION_URL = "jdbc:mysql://localhost:3306/petshop?serverTimezone=UTC";
	private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "";

	// Get a connection to the MySQL database
	private Connection getConnection() {
		Connection con = null;
		try {
			// Load the driver class
			Class.forName(DRIVER_CLASS);
			// Get the connection object
			con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	@Override
	public void insert(Boardnew boardnew) {
		String sql = "INSERT INTO boardnew(title, content,image_link, author, created) VALUES (?, ?, ?, ?, ?)";
		// Get the connection
		Connection con = getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, boardnew.getTitle());
			ps.setString(2, boardnew.getContent());
			ps.setString(3, boardnew.getImage());
			ps.setString(4, boardnew.getAuthor());
			ps.setString(5, boardnew.getCreated());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// Close the connection
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM boardnew WHERE id=?";
		// Get the connection
		Connection con = getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// Close the connection
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	@Override
	public void edit(Boardnew boardnew) {
		String sql = "UPDATE boardnew SET title=?,content=?,image_link=?,author=?,created=? WHERE id=?";
		// Get the connection
		Connection con = getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, boardnew.getTitle());
			ps.setString(2, boardnew.getContent());
			ps.setString(3, boardnew.getImage());
			ps.setString(4, boardnew.getAuthor());
			ps.setString(5, boardnew.getCreated());
			ps.setString(6, boardnew.getId());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// Close the connection
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	@Override
	public Boardnew get(int id) {

		String sql = "SELECT * FROM boardnew WHERE id = ? ";
		// Get the connection
		Connection con = getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Boardnew boardnew = new Boardnew();

				boardnew.setId(rs.getString("id"));
				boardnew.setTitle(rs.getString("title"));
				boardnew.setContent(rs.getString("content"));
				boardnew.setImage(rs.getString("image"));
				boardnew.setAuthor(rs.getString("author"));
				boardnew.setCreated(rs.getString("created"));
				//System.out.println("cc"+rs.getString("title"));
				return boardnew;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// Close the connection
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public Boardnew get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Boardnew> getAll() {
		List<Boardnew> boardnews = new ArrayList<Boardnew>();
		String sql = "SELECT * FROM boardnew";
		// Get the connection
		Connection conn = getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Boardnew boardnew = new Boardnew();

				boardnew.setId(rs.getString("id"));
				boardnew.setTitle(rs.getString("title"));
				boardnew.setContent(rs.getString("content"));
				boardnew.setImage(rs.getString("image"));
				boardnew.setAuthor(rs.getString("author"));
				boardnew.setCreated(rs.getString("created"));
				boardnews.add(boardnew);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// Close the connection
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return boardnews;
	}

}
