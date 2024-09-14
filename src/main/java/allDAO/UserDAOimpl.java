package allDAO;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import api.UserDTO;
import api.UserRegisterDTO;
import api.userLoginDTO;


@Repository
public class UserDAOimpl implements UserDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public boolean insertUser(UserRegisterDTO user) {

		if(jdbcTemplate == null) System.out.println("Not intialize");
		
		String sql = "INSERT INTO Register_table VALUES(?,?,?)";
		
		int n = jdbcTemplate.update(sql,user.getUserName(),user.getEmail(),user.getPassword());
		
		if(n>0)	return true;		
		
		return false;
	}

	@Override
	public boolean checkUser(userLoginDTO user) {

		String username = user.getUserName();
		String password = user.getPassword();

		String sql = "SELECT * FROM register_table WHERE username = ? AND password = ?";
	
		List<Map<String, Object>> list = jdbcTemplate.queryForList(sql, new Object[]{username, password});
	
		if(list.isEmpty()) return false;
		
		return true;
	}
	
	@Override
	public boolean insertRelation(UserDTO user,String relation)
	{
		if(jdbcTemplate == null) System.out.println("Not intialize");
		
		String sql = "INSERT INTO relation_table VALUES(?,?,?)";
		
		int n = jdbcTemplate.update(sql,user.getUserName(),user.getCrushName(),relation);
		
		if(n>0) return true;
		
		return false;
		
	}
	
	@Override
	public List<Map<String, Object>> getHistory(String userN)
	{	
		String sql = "SELECT DISTINCT crushName, relation FROM relation_table WHERE username = ?";

		List<Map<String, Object>> list = jdbcTemplate.queryForList(sql, new Object[]{userN});
			
		return list;
		
	}

	
}
