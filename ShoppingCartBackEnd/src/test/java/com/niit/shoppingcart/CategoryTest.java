package com.niit.shoppingcart;



import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;

public class CategoryTest {
	
	
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		
	   CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	   
	   Category category = 	(Category) context.getBean("category");
	   /*category.setId("CG120");
	   category.setName("CGName120");
	   category.setDescription("CGDesc120");
	   
	   
	   categoryDAO.saveOrUpdate(category);
	   
	   
	   
	   */
	   List<Category> list=categoryDAO.list();
	   for(Category c:list)
	   {
		   System.out.println(c.getId());
	   }
	   System.out.println("done");
	   
	   
	/*  if(   categoryDAO.get("sdfsf") ==null)
	  {
		  System.out.println("Category does not exist");
	  }
	  else
	  {
		  System.out.println("Category exist .. the details are ..");
		  System.out.println();
	  }
		*/
		
		
	}

}
