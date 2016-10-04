/*package com.niit.shoppingcart.test;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Category;

public class CategoryJUnitTest {

@Autowired
static CategoryDAO categoryDAO;

@Autowired 
static Category category;

static AnnotationConfigApplicationContext context;

@BeforeClass
public static void init() {
	context = new AnnotationConfigApplicationContext();
	context.scan("com.niit");
	context.refresh();
	categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	category = (Category) context.getBean("category");
}

@AfterClass
public static void close() {
	context.close();
	categoryDAO = null;
	category = null;

}

@Test
public void CategoryDAOTest() {
	int size = categoryDAO.list().size();
	assertEquals("CategoryDAO JUnit Test", 0, size);
}

@Test
public void CategoryNameTest() {
	category = categoryDAO.get("CG01");
	String name = category.getName();
	assertEquals("Name Test Case", "Mobile", name);

}


}
*/