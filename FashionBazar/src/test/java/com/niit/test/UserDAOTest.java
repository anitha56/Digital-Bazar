package com.niit.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDAO;
import com.niit.dao.UserDAO;
import com.niit.model.User;

public class UserDAOTest {
	static UserDAO userDAO;
	@BeforeClass
	public static void Initialize()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	@Test
	
	public void registerUserTest()
	{
		User user=new User();
		user.setUsername("Anitha");
		user.setCustomername("ani");
		user.setEmailId("anitha@gmail.com");
		user.setEnabled("no");
		user.setMobileno("9097798472");
		user.setPassword("anitha12345");
		user.setRole("customer");
		assertTrue("Problem in registering the user",userDAO.registerUser(user));
	}
	@Test
	@Ignore
	public void modifyUserTest()
	{
		User user=userDAO.getUser("Anitha");
		user.setMobileno("9487393622");
		assertTrue("problem in updating the user",userDAO.modifyUser(user));
	}
    @Test
    @Ignore
    public void getUser()
    {
    	assertNotNull("object should be null",userDAO.getUser("Anitha"));
    	User user=userDAO.getUser("Anitha");
    	System.out.println("Username: "+user.getUsername());
    	System.out.println("Password: "+user.getPassword());
    	System.out.println("Customer Name: "+user.getCustomername());
    	System.out.println("Email Id:"+user.getEmailId());
    	System.out.println("Mobile Number: "+user.getMobileno());
    	
    }
}
