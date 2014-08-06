package utils;

/**
 * 
 * This class will be tested only when no database exists.
 * Never be used.
 * @author Yao
 *
 */
public class LoginUtil {
	private String username = "admin";
	private String password = "1234";
	
	public LoginUtil() {
		
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}
}
