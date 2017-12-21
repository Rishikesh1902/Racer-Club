package com.RC_back.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.RC_back.dao.IUserDAO;
import com.RC_back.model.User;

public class UsersTestCase {
	private static AnnotationConfigApplicationContext context;
	private static IUserDAO userDAO;
	private User user;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.RC_back");
		context.refresh();
		userDAO=(IUserDAO)context.getBean("userDAO");
	}
	
//	@Test
//	public void testAddUser()
//	{
//		user=new User();
//		user.setEnabled(false);
//		user.setUserName("CHANY");
//		user.setUserFullName("CHALNDLER BING");
//		user.setUserMobile("8010017053");
//		user.setUserPassword("user@19");
//		user.setrole("User");
//		user.setUserSecurityQ("Name of best friend");
//		user.setUserSecurityA("JOEY");
//		user.setUserEmail("chandler@friends.com");
//		
//		assertEquals("Successfully added a user inside the table .",true,userDAO.addUser(user));
//	}
//	
//	@Test
//	public void testGetUser()
//	{
//		user=userDAO.getUser(1);
//		assertEquals("Retrieving data based on id from table","Edward Cullen",user.getUserFullName());
//	}
//	
//	@Test
//	public void testUpdateUser()
//	{
//		user=userDAO.getUser(1);
//		user.setEnabled(false);
//		user.setUserName("CHALNDLER BING");
//		user.setUserMobile("8826488032");
//		user.setUserPassword("MONICA");
//		user.setUserRole("User");
//		user.setUserSecurityQ("Name of best friend");
//		user.setUserSecurityA("JOEY");
//		user.setUserEmail("chandler@friends.com");
//		
//		assertEquals("Updating user based on id from table",true,userDAO.updateUser(user));
//	}
//	
//	@Test
//	public void testDeleteUser()
//	{
//		assertEquals("Deleting user based on id from table",true,userDAO.deleteUser(1));
//	}

}
