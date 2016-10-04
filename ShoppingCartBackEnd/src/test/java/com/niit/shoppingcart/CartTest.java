package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.model.Cart;

public class CartTest {

	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		CartDAO cartDAO=(CartDAO) context.getBean("cartDAO");
		Cart cart=(Cart) context.getBean("cart");
		System.out.println("Its working");
	}

}
