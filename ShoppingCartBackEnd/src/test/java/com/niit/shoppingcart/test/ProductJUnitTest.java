/*package com.niit.shoppingcart.test;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Product;

public class ProductJUnitTest {

@Autowired
static ProductDAO productDAO;

@Autowired 
static Product product;

static AnnotationConfigApplicationContext context;

@BeforeClass
public static void init() {
	context = new AnnotationConfigApplicationContext();
	context.scan("com.niit");
	context.refresh();
	productDAO = (ProductDAO) context.getBean("productDAO");
	product = (Product) context.getBean("product");
}

@AfterClass
public static void close() {
	context.close();
	productDAO = null;
	product = null;

}

@Test
public void ProductDAOTest() {
	int size = productDAO.list().size();
	assertEquals("ProductDAO JUnit Test", 0, size);
}

/*@Test
public void ProductNameTest() {
	product = productDAO.get("PRD01");
	String name = product.getName();
	assertEquals("Name Test Case", "Iphone", name);

}


}*/
