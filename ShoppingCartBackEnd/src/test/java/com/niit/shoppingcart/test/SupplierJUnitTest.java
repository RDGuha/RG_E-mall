/*package com.niit.shoppingcart.test;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;

public class SupplierJUnitTest {
	
	@Autowired
	static SupplierDAO supplierDAO;
	
	@Autowired
	static Supplier supplier;
	
	static AnnotationConfigApplicationContext context;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		supplier = (Supplier) context.getBean("supplier");
	}
	
	@AfterClass
	public static void close() {
		context.close();
		supplierDAO = null;
		supplier = null;

	}

	@Test
	public void SupplierDAOTest() {
		int size = supplierDAO.list().size();
		assertEquals("SupplierDAO JUnit Test", 1, size);
	}

	@Test
	public void SupplierNameTest() {
		supplier = supplierDAO.get("SUP01");
		String name = supplier.getName();
		assertEquals("Name Test Case", "ER Mart", name);

	}
	
	



}*/
