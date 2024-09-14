package api;

public class userLoginDTO 
{

	private String userName;
	private String password;
	
	public userLoginDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public userLoginDTO(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "userLoginDTO [userName=" + userName + ", password=" + password + "]";
	}
	
	
}
