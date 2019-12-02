package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import oracle.jdbc.driver.OracleDriver;

public class Model 
{
	private Connection con=null;
	private String url="jdbc:oracle:thin:@//localhost:1521/XE";
	private String userid="JAVAPROJECT";
	private String password="ORACLE";
	PreparedStatement pstmt=null;
	String sql="SELECT * FROM EMPLOYEES WHERE FIRST_NAME=?";
	ResultSet res;
	String name;
	String first_name;
	String last_name;
	String email;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Model()
	{
		try
		{
			DriverManager.registerDriver(new OracleDriver());
			con=DriverManager.getConnection(url,userid,password);
		}
		catch(SQLException e)
		{
			System.out.println("Error occur");
			e.printStackTrace();
		}
	}
	public boolean fetchResult() throws Exception
	{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,name);
			res=pstmt.executeQuery();
				if(res.next()==true)
				{
					first_name=res.getString(2);
					last_name=res.getString(3);
					email=res.getString(4);
					return true;
				}
				else 
				{
					return false;
				}
	}
}
