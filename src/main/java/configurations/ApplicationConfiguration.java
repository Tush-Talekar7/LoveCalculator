package configurations;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;



@EnableWebMvc
@Configuration
@ComponentScan( basePackages = {"controllers","services","allDAO","api"})
public class ApplicationConfiguration {
	

    @Bean
    public InternalResourceViewResolver viewResolver()
    {    	  	
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/Views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
    
    @Bean
    public JavaMailSender getJavaMailSender()
    {    	
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com"); // Replace with your mail server
        mailSender.setPort(587);

        mailSender.setUsername("sagartalekar2005@gmail.com");
        mailSender.setPassword("cywkmflqzjnstqiq");

        Properties props = new Properties();
        props.put("mail.smtp.starttls.enable", true);
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        
        mailSender.setJavaMailProperties(props);
       
        return mailSender;
        
    }
    
  
    @Bean
    public JdbcTemplate getJdbcTemplate()
    {  	
    	System.out.println("Database Connected");
    	
    	return new JdbcTemplate(getDataSource());
    }
    
    @Bean
    public DataSource getDataSource()
    {
    	DriverManagerDataSource data = new DriverManagerDataSource();
    	
    	data.setUrl("jdbc:mysql://localhost:3306/sahara");
    	data.setUsername("root");
    	data.setPassword("root");
    	data.setDriverClassName("com.mysql.cj.jdbc.Driver");
    	
    	return data;
    }
    
}
