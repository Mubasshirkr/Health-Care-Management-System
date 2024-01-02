package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Patient;

public class PatientDao {
	
	
	private Connection conn;

	public PatientDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean patientSignup(Patient p) {
	
		boolean f=false;
		try {
			
			String sql="insert into patient_details(name,email,password) values(?,?,?)";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getName());
			ps.setString(2, p.getEmail());
			ps.setString(3, p.getPassword());
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	public Patient login(String em, String psw) {
		Patient p=null;
		try {
			
			
			String sql="select * from patient_details where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, em);
			ps.setString(2, psw);
			
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				p=new Patient();
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setEmail(rs.getString(3));
				p.setPassword(rs.getString(4));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}
	
	
	
	
}
