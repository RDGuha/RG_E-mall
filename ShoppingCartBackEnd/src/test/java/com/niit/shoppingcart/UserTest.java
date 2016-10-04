package com.niit.shoppingcart;



import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

public class UserTest {
	
	
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		
	   UserDAO userDAO = 	(UserDAO) context.getBean("userDAO");
	   
	   User user = 	(User) context.getBean("user");
	   user.setId("U-120");
	   user.setName("Rohan");
	   user.setEmail("abc@gmail.com");
	   user.setMobile("1234567890");
	   user.setAddress("Delhi");
	   user.setAdmin(false);

	   
	   
	   userDAO.saveOrUpdate(user);
	   
	   
	   
	   
	/*  if(   userDAO.get("sdfsf") ==null)
	  {
		  System.out.println("User does not exist");
	  }
	  else
	  {
		  System.out.println("User exist .. the details are ..");
		  System.out.println();
	  }
		*/
		
		
	}

}
