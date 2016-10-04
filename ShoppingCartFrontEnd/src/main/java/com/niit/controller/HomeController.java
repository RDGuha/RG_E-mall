package com.niit.controller;

import java.io.File;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/*import org.slf4j.Logger;
import org.slf4j.LoggerFactory;*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.User;

@Controller
public class HomeController {

	//Logger log = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	User user;

	@Autowired
	Category category;

	@Autowired
	UserDAO userDAO;

	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	Product product;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	SupplierDAO supplierDAO;

	@RequestMapping("/")
	public ModelAndView showHome(HttpSession session, Principal principal, HttpServletRequest request, Model model) {

		// log.debug("Starting of the method showHome");
		ModelAndView mv = new ModelAndView("home");

		mv.addObject("InHomePage", "true");

		session.setAttribute("category", category);

		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		return mv;
	}

	@RequestMapping("/home")
	public ModelAndView showHomePage(HttpSession session, Principal principal, HttpServletRequest request,
			Model model) {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("InHomePage", "true");
		session.setAttribute("category", category);

		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		return mv;
	}

	@RequestMapping("/loginHere")
	public ModelAndView showLogin(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, HttpSession session, Principal principal,
			HttpServletRequest request, Model model) {
		if (error != null) {
			model.addAttribute("error", "invalid username and password");
		}

		if (logout != null) {
			model.addAttribute("msg", "You have successfully logged out");
		}
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("user", new User());
		mv.addObject("InLoginPage", "true");

		session.setAttribute("category", category);

		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());

		return mv;
	}

	@RequestMapping("/admin")
	public ModelAndView showAdminPage() {

		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("InAdminPage", "true");

		return mv;
	}

	@RequestMapping("/registerHere")
	public ModelAndView showRegister(HttpSession session, Principal principal, HttpServletRequest request,
			Model model) {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("user", user);
		mv.addObject("InRegisterPage", "true");
		mv.addObject("header", "true");

		session.setAttribute("category", category);

		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());

		return mv;
	}

	@RequestMapping("/category")
	public ModelAndView showCategoryPage() {

		ModelAndView mv = new ModelAndView("category");
		mv.addObject("InCategoryPage", "true");

		return mv;
	}

	// ${Registration success}
	@RequestMapping(value = "user/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute User user) {
		userDAO.saveOrUpdate(user);
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("successMessage", "You are successfully register");

		return mv;
	}

	@RequestMapping("/LogOut")
	public ModelAndView showLoggedOutPage(HttpSession session, Principal principal, HttpServletRequest request,
			Model model) {

		ModelAndView mv = new ModelAndView("LoggedOut");

		session.setAttribute("category", category);

		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());

		return mv;
	}

	@RequestMapping("/aboutUs")
	public ModelAndView showAbout(HttpSession session, Principal principal, HttpServletRequest request, Model model) {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("InAboutPage", "true");
		mv.addObject("header", "true");

		session.setAttribute("category", category);

		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());

		return mv;
	}
	
	@RequestMapping("/contactUs")
	public ModelAndView showContact(HttpSession session, Principal principal, HttpServletRequest request, Model model) {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("InContactPage", "true");
		mv.addObject("header", "true");

		session.setAttribute("category", category);

		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());

		return mv;
	}

}
