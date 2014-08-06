package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Database Manager is to connect the database through JDBC
 * With inputs: database name, username and password.
 * @author Yao
 *
 */
public class DBManager {
	public static Connection conn;
	public DBManager() {
		// TODO Auto-generated constructor stub
	}
	
	public static Connection getConnection() {
		try {
			String url = Constant.DB_URL;
			String dbName = Constant.DB_NAME;
			String username = Constant.USERNAME;
			String password = Constant.PASSWORD;
			
			Class.forName("com.mysql.jdbc.Driver");
			try {
				conn = DriverManager.getConnection(url + dbName, username, password);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
