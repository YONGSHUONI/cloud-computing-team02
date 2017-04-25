package cloud.clouddb.cloud_user;

import cloud.clouddb.*;
import cloud.clouddb.cloud_account.*;
import cloud.clouddb.cloud_role.*;

import java.sql.*;
import java.util.*;

public class UserDAO {
	private ConnectionDAO connect = new ConnectionDAO();
	
	// get username known id
	public String getUsernameFromId(int user_id){
		String username = null;
		Connection connection = this.connect.getConnection();
		String sql = "select * from Users where id = ?"; 
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, user_id);
			ResultSet results = statement.executeQuery();
			while(results.next()){
				username = results.getString("username");
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.connect.closeConnection(connection);
		}
		return username;
	}
	
	
	// get user all information from his username
	public User getUser(String username, User user){
		Connection connection = this.connect.getConnection();
		String sql = "select * from Users where username = ?"; 
		user.setUsername(username);
		
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, username);
			ResultSet results = statement.executeQuery();
			
			while(results.next()){
				user.setId(results.getInt("id"));
			//	user.setPassword(results.getString("password"));
				if(results.getString("email")!=null){user.setEmail(results.getString("email"));}
				if(results.getString("surname")!=null){user.setSurname(results.getString("surname"));}
				if(results.getString("forename")!=null){user.setForename(results.getString("forename"));}
				if(results.getInt("account_id")!=0){user.setAccount_id(results.getInt("account_id"));}
				if(results.getInt("role_id")!=0){user.setRole_id(results.getInt("role_id"));}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.connect.closeConnection(connection);
		}
		return user;
	}
	
	// Login, verify password with username
	public boolean verifyPassword(User user){
		Connection connection = this.connect.getConnection();
		String sql = "select * from Users where username = ?"; 
		
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, user.getUsername());
			ResultSet results = statement.executeQuery();
			
			while(results.next()){
				if(results.getString("password").equals(user.getPassword())){
					return true;
				}
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.connect.closeConnection(connection);
		}
		return false;
	}
	
	// Sign up, use for check if username is same
	public boolean ifSameUsername(User user){
		Connection connection = this.connect.getConnection();
		String sql = "select * from Users where username = ?"; 
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, user.getUsername());
			ResultSet results = statement.executeQuery();
			
			if(results.next()){
				return false;
			}else{
				return true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			this.connect.closeConnection(connection);
		}
		return false;
	}
	
	//Sign up, store new user. 
	 public boolean storeUser(User user){
	        Connection connection = this.connect.getConnection();
	        String sql = "insert into Users (password,username,email,surname,forename) values(?,?,?,?,?)";
	         
	        // replace placeholder ?
	        try {
	            PreparedStatement statement = connection.prepareStatement(sql);
	            statement.setString(1, user.getPassword());
	            statement.setString(2, user.getUsername());
	            statement.setString(3, user.getEmail());
	            statement.setString(4, user.getSurname());
	            statement.setString(5, user.getForename());
//	          statement.setInt(6, user.getAccount_id());
//	          statement.setInt(7, user.getRole_id());
	            // execute insert statement
	            statement.execute();
	             
	            sql = "select * from Users where username = ?";
	            statement = connection.prepareStatement(sql);
	            statement.setString(1, user.getUsername());
	            ResultSet results = statement.executeQuery();
	             
	            while(results.next()){
	                user.setId(results.getInt("id"));
	            }
	             
	            AccountDAO acc = new AccountDAO();
	            RoleDAO role = new RoleDAO();
	            user.setAccount_id(acc.initAccount(user.getId()));
	            user.setRole_id(role.initRole(user.getId()));
	             
	            sql = "UPDATE Users SET account_id = ?, role_id = ? where id = ?";
	            statement = connection.prepareStatement(sql);
	            statement.setInt(1,user.getAccount_id());
	            statement.setInt(2, user.getRole_id());
	            statement.setInt(3, user.getId());
	            statement.execute();
	             
	            return true;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally{
	            this.connect.closeConnection(connection);
	        }
	        return false;
	    }

//	public static void main(String[] args){
//		UserDAO dao = new UserDAO();
//		User user = new User("sefa","null");
//		dao.getUser(user.getUsername(), user);
//		System.out.println(user.getRole_id());
//	}
}
