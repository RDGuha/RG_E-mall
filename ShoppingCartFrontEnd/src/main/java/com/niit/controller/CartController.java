package com.niit.controller;

import java.security.Principal;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;



@Controller
@SessionAttributes({"id","price","userID","productName","quantity","total"})
public class CartController {

	@Autowired
	CartDAO cartDAO;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/addtocart/{id}")
	public String getCart(@PathVariable("id") String id, /*@RequestParam("quantity") int quantity,*/ Principal principal,
			Model model) {
		Product product = productDAO.get(id);
		String name=principal.getName();
		Cart cart = new Cart();
		cart.setProductName(product.getName());
		cart.setPrice(product.getPrice());
		cart.setQuantity(1);
		//cart.setTotal(quantity * product.getPrice());
		cart.setStatus('N');
		cart.setUserID(name);
		cartDAO.saveOrUpdate(cart);
		model.addAttribute("username", name);
		return "redirect:/mycart";
	}

	@RequestMapping(value = "/mycart",method = RequestMethod.GET)
	public String getmycart(Model model,Principal principal) {
		String name=principal.getName();
		model.addAttribute("cartDetails", this.cartDAO.list());
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("username", name);
		return "userHome";
	}

	@RequestMapping("/cart/delete/{id}")
	public String deletecart(@PathVariable("id") String id,Principal principal, Model model)  throws Exception  {
		String name=principal.getName();
		model.addAttribute("username", id);
		cartDAO.delete(id);
		return "redirect:/mycart";
	}
	
	@RequestMapping(value="/cart/proceed/{id}")
	public String processcart(@PathVariable("id") String id,Model model){
		Cart cart=cartDAO.get(id);
		model.addAttribute("cartId", cart.getId());
		model.addAttribute("userId", cart.getUserID());
		model.addAttribute("price", cart.getPrice());
		model.addAttribute("productname", cart.getProductName());
		model.addAttribute("quantity", cart.getQuantity());
		//model.addAttribute("total", cart.getTotal());
		//return "redirect:/checkout?cartId="+cartId;
		return "redirect:/checkout";
	}

}

