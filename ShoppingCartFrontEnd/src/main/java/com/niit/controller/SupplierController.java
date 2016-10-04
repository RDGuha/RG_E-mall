package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	private Supplier supplier;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	
	@RequestMapping(value = "/suppliers", method = RequestMethod.GET)
	public String listSuppliers(Model model) {
		model.addAttribute("supplier",supplier);
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "supplier";
	}
	
	//For add and update product both
	@RequestMapping(value = "/supplier/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("supplier") Supplier supplier) {

		/*Util util = new Util();
		String id=  util.replace(category.getId(), ",", "");
		category.setName(id);*/
		
		supplierDAO.saveOrUpdate(supplier);

		return "redirect:/suppliers";
		//return "categories";

	}
	
	@RequestMapping("supplier/remove/{id}")
	public String deleteCategory(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			supplierDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/suppliers";
	}

	@RequestMapping("supplier/edit/{id}")
	public String editCategory(@PathVariable("id") String id, Model model) {
		System.out.println("editSupplier");
		model.addAttribute("supplier", this.supplierDAO.get(id));
		model.addAttribute("listSuppliers", this.supplierDAO.list());
		return "supplier";
		//return "redirect:/suppliers";
	}
	
}
