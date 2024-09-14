package api;

public class UserRegisterDTO
{
	private String userName;
	private String email;
	private String password;
	private String cPassword;
	
	
	public UserRegisterDTO(String userName, String email, String password, String cPassword) {
		super();
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.cPassword = cPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getcPassword() {
		return cPassword;
	}
	public void setcPassword(String cPassword) {
		this.cPassword = cPassword;
	}
	@Override
	public String toString() {
		return "UserRegisterDTO [userName=" + userName + ", email=" + email + ", password=" + password + ", cPassword="
				+ cPassword + "]";
	}
	
	
	
	

}
