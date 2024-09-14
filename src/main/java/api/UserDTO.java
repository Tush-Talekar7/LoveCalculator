package api;

public class UserDTO 
{
	private String userName;
	private String crushName;
	
	
	
	public UserDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public UserDTO(String userName, String crushName) {
		super();
		this.userName = userName;
		this.crushName = crushName;
	}


	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCrushName() {
		return crushName;
	}
	public void setCrushName(String crushName) {
		this.crushName = crushName;
	}


	@Override
	public String toString() {
		return "UserDTO [userName=" + userName + ", crushName=" + crushName + "]";
	}
	
	
	
	

}
