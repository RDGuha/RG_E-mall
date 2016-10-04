package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

public class TestUserDAO {

	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	
	AnnotationConfigApplicationContext context;
	
	@Before
	public void init()
	{
		context = new AnnotationConfigApplicationContext();
		userDAO =(UserDAO) context.getBean("userDAO");
	}
	
	public void UserTestCase()
	{
		int size = userDAO.list().size();
		assertEquals("User list case", 5, size);
	}
	

}
