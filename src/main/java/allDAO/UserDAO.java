package allDAO;

import java.util.List;
import java.util.Map;

import api.UserDTO;
import api.UserRegisterDTO;
import api.userLoginDTO;

public interface UserDAO 
{
	boolean insertUser(UserRegisterDTO user);
	
	boolean checkUser(userLoginDTO user);
	
	boolean insertRelation(UserDTO user,String relation);

	List<Map<String, Object>> getHistory(String userName);

	 

}
