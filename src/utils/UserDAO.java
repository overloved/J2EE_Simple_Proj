package utils;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 * UserDAO gets the requested values from the database using DB query.
 * It will return an boolean value back to UserBean.
 * @author Yao
 *
 */
public class UserDAO {
	
	public static Connection conn = null;
	public static ResultSet rs = null;
	
	public static UserBean login(UserBean bean) {
		Statement statement = null;
		String username = bean.getUsername();
		String password = bean.getPassword();
		String query = "SELECT * FROM users WHERE username = '" + username + 
				"' AND password = '" + password + "'";
		
		try {
			conn = DBManager.getConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(query);
			boolean userExists = rs.next();
			
			if (!userExists) {
				System.out.println("The information you entered does not match any user");
			}
			else if (userExists) {
				String firstName = rs.getString("FirstName");
				String lastName = rs.getString("LastName");
				String sex = rs.getString("Sex");
				String age = rs.getString("Age");
				bean.setFirstName(firstName);
				bean.setLastName(lastName);
				bean.setSex(sex);
				bean.setAge(age);
				bean.setValid(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
}
