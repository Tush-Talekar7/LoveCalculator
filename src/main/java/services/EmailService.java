package services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService implements EmailServiceInterface {

    @Autowired
    private JavaMailSender emailSender;

  
  @Override
	public void sendMail(String emailId,String relation,String userName,String crushName) {
		
    	
    	System.out.println(emailId);
    	
    	 if (emailSender == null) {
             throw new IllegalStateException("EmailSender is not initialized");
         }
		
		  SimpleMailMessage message = new SimpleMailMessage();
	        message.setTo(emailId);
	        message.setSubject("Result Predicted by LoveCalculator");
	        message.setText("Hello "+userName+"\n You and "+crushName+" "+relation);
	        emailSender.send(message);
		
	}
}
