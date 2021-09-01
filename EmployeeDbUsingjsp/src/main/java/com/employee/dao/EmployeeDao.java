package com.employee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.employee.model.Employee;

public class EmployeeDao 
{
	public int registerEmployee(Employee employee) throws ClassNotFoundException
	{
		String sql="insert into employee"+
				"(id,first_name,last_name,username,password,address,contact) values"+
				"(?,?,?,?,?,?,?)";
		int result=0;

		Class.forName("com.mysql,jdbc.Driver");
		try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Employees","root","root");
				PreparedStatement ps=con.prepareStatement(sql))
		{
			ps.setInt(1, 1);
			ps.setString(2,employee.getFirstname());
			ps.setString(3,employee.getLastname());
			ps.setString(4,employee.getUsername());
			ps.setString(5,employee.getPassword());
			ps.setString(6,employee.getAddress());
			ps.setString(7,employee.getContact());
			
			System.out.println(ps);
			result=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;

	}
}
