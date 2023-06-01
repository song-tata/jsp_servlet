package com.mycompany.dbcon;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionPool {
	private static DataSource _ds = null;
	//db에 접근할 연결 할당
	
	public static Connection get() throws SQLException, NamingException {
		if(_ds == null) {
			_ds = (DataSource) (new InitialContext().lookup("java:comp/env/jdbc/mysql"));
		}
		return _ds.getConnection();
	}
}
