/*package com.niit.shoppingcart.test;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

import org.junit.Test;

public class UserJUnitTest {

	@Autowired
	static UserDAO userDAO;

	@Autowired
	static User user;

	static AnnotationConfigApplicationContext context;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		userDAO = (UserDAO) context.getBean("userDAO");
		user = (User) context.getBean("user");
	}

	@AfterClass
	public static void close() {
		context.close();
		userDAO = null;
		user = null;

	}

	@Test
	public void UserDAOTest() {
		int size = userDAO.list().size();
		assertEquals("UserDAO JUnit Test", 0, size);

	}

	@Test
	public void UserNameTest() {
		user = userDAO.get("NIIT");
		String name = user.getName();
		assertEquals("Name Test Case", "NIIT", name);

	}

}*/
