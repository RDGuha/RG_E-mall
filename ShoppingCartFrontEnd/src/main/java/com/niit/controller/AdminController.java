package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.User;

@Controller
public class AdminController {
	
	@Autowired
	private Category category;
	
	@Autowired
	private Product product;
	
	@Autowired
	private Supplier supplier;
	

	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	
	@Autowired
	private ProductDAO productDAO;
	
	
	

	@RequestMapping("/manageCategories")
	public ModelAndView categories() {
		ModelAndView mv = new ModelAndView("/adminHome");
		mv.addObject("category", category);
		mv.addObject("InCategoryPage", "true");
		mv.addObject("categoryList", categoryDAO.list());
		return mv;
	}
	
	@RequestMapping("/manageProducts")
	public ModelAndView products() {
		ModelAndView mv = new ModelAndView("/adminHome");
		mv.addObject("product", product);
		mv.addObject("InProductPage", "true");
		mv.addObject("productList", productDAO.list());
		mv.addObject("categoryList", this.categoryDAO.list());
		mv.addObject("supplierList", this.supplierDAO.list());
		return mv;
	}

	@RequestMapping("/manageSuppliers")
	public ModelAndView suppliers() {
		ModelAndView mv = new ModelAndView("/adminHome");
		mv.addObject("supplier", supplier);
		mv.addObject("InSupplierPage", "true");
		mv.addObject("supplierList", supplierDAO.list());
		return mv;
	}
	
}
