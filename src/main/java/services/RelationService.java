package services;

import org.springframework.stereotype.Service;

import api.UserDTO;

@Service
public class RelationService implements RelationServiceInterface 
{
	
	public String checkRelation(UserDTO user)
	{
		String userName = user.getUserName();
		String crushName = user.getCrushName();
		
		int lu = userName.length();
		int cu = crushName.length();
		
		int r = (lu+cu)%5;
		
		switch(r)
		{
			case 0: return " are FRIEND";
			
			case 1: return " are in LOVE";
			
			case 2: return " have AFFECTION";
			
			case 3: return " going to MARRY";
			
			case 4: return " are ENEMY";
			
			default: return "UNKNOWN";
			

		}
		
	
	}

}
