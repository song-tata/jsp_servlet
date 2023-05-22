package chap07;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestSQL {

	public static void main(String[] args) {
		System.out.println("Hello, SQL");
		try {
			Connection con =DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/my_db?serverTimezone=UTC","root","0000"); 
			System.out.println("success");
			
		} catch (SQLException e) {
			System.out.println(e);
			
		}
	}

}
