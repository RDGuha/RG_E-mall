package com.niit.shoppingcart;



import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;

public class ProductTest {
	
	
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		
	   ProductDAO productDAO = 	(ProductDAO) context.getBean("productDAO");
	   
	   Product product = 	(Product) context.getBean("product");
	   //Category c=(Category)context.getBean("category");
	 //  c.se
	   product.setId("PD100");
	   product.setName("Apple iphone");
	   product.setDescription("iphone 5s"); 
	   product.setPrice(30000);
	 //  product.setCategory(c);
	   
	   
	   productDAO.saveOrUpdate(product);
	   
	   
	   
	   
	/*  if(   productDAO.get("sdfsf") ==null)
	  {
		  System.out.println("Product does not exist");
	  }
	  else
	  {
		  System.out.println("Product exist .. the details are ..");
		  System.out.println();
	  }
		*/
		
		
	}

}
