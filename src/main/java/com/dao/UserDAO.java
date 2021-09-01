package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Jobs;
import com.entity.User;

public class UserDAO {

	private Connection conn;
	
	

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}



	public boolean addUser(User us) {
		boolean f = false;
		

try {
			
			String sql="insert into user(name,email,password,qualification,role) values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPassword());
			ps.setString(4, us.getQualification());
			ps.setString(5, "user");
			
			int i=ps.executeUpdate();
			
			if(i>0)
			{
				f=true;
			}

			
		} catch (Exception e) {
e.printStackTrace();		}

		return f;
	}
	
	public User login(String em,String psw)
	{
        User us =null;
		try {
			
			String sql="select * from user where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
            ps.setString(1, em);
            ps.setString(2, psw);			

			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				us=new User();
								
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPassword(rs.getString(4));
				us.setQualification(rs.getString(5));
				us.setRole(rs.getString(6));
                

			}
			
			
		} catch (Exception e) {
e.printStackTrace();		}
		
		return us;
	}
	
	
	public boolean updateUser(User us) {
		boolean f = false;
		

try {
			
			String sql="update user set name=? ,email=?,password=?,qualification=? where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPassword());
			ps.setString(4, us.getQualification());
			ps.setInt(5, us.getId());
			
			int i=ps.executeUpdate();
			
			if(i>0)
			{
				f=true;
			}

			
		} catch (Exception e) {
e.printStackTrace();		}

		return f;
	}

}
