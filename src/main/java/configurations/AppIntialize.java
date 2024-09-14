package configurations;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppIntialize extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		Class []arr= {ApplicationConfiguration.class};
		
		return arr;
	}

	@Override
	protected String[] getServletMappings() {
		System.out.println("intitiaze");
		String []arr = {"/"};
		return arr;
	}

}
