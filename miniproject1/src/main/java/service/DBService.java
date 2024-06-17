package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBService {
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "test";
	private String pwd = "test";

	static {

		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	static DBService single = null;

	public static DBService getinstance() {

		if (single == null)
			single = new DBService();

		return single;
	}

	private DBService() {
	}

	public Connection getConnection() throws SQLException {

		Connection conn = DriverManager.getConnection(url, user, pwd);

		return conn;
	}

}

