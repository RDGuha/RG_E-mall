package com.niit.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class ProductController {
	
	@Autowired
	private Product product; 
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	private Path path;
	

	
	@Autowired
	private Category category;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	
	
	
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "product";
	}
	
	//For add and update product both
			@RequestMapping(value = "/product/add", method = RequestMethod.POST)
			public String addProduct(@ModelAttribute("product") Product product,HttpSession session, HttpServletRequest request) {

				/*Util util = new Util();
				String id=  util.replace(category.getId(), ",", "");
				category.setName(id);*/
				
				Category category=categoryDAO.getByName(product.getCategory().getName());
				categoryDAO.saveOrUpdate(category);
				
				Supplier supplier=supplierDAO.getByName(product.getSupplier().getName());
				supplierDAO.saveOrUpdate(supplier);
				
				product.setCategory(category);
				product.setSupplier(supplier);
				
				product.setCategory_id(category.getId());
				product.setSupplier_id(supplier.getId());
				
				try {
					MultipartFile filea = product.getImage();

					InputStream inputStream = null;
					OutputStream outputStream = null;
					if (filea.getSize() > 0) {
					inputStream = filea.getInputStream();
					File dir=null;
					
					try{
						dir=new File("E:\\productimages");
						if(!dir.exists())
						{
							dir.mkdirs();
							System.out.println("directory created");
						}
					
					}
					catch(Exception e)
					{
						System.out.println(e.toString());
					}
					System.out.println("IMAGE");
					outputStream = new FileOutputStream(dir+"\\"+product.getId()+".jpg");
					System.out.println("====22=========");
					System.out.println(filea.getOriginalFilename());
					System.out.println("=============");
					int readBytes = 0;
					byte[] buffer = new byte[8192];
					while ((readBytes = inputStream.read(buffer, 0, 8192)) != -1) {
					System.out.println("===ddd=======");
					outputStream.write(buffer, 0, readBytes);
					}
					outputStream.close();
					inputStream.close();
					
					String rootDirectory = request.getSession().getServletContext().getRealPath("/");
					path = Paths.get(rootDirectory + "/WEB-INF/resources/productimages" + product.getId() + ".jpg");
					
					session.setAttribute("uploadFile", "E:\\productimages\\"+product.getId()+".jpg");
					//session.setAttribute("uploadFile", "resources/productimages/"+product.getId()+".jpg");
					session.setAttribute("uploadFile", path.toString());
					System.out.println("Image Inserted");
				} 
				}
				catch (Exception e) {
					System.out.println("Image Not inserted");
				}
				productDAO.saveOrUpdate(product);

				return "redirect:/products";
				//return "product";

			}
			
			@RequestMapping("product/remove/{id}")
			public String deleteCategory(@PathVariable("id") String id, ModelMap model) throws Exception {

				try {
					productDAO.delete(id);
					model.addAttribute("message", "Successfully Added");
				} catch (Exception e) {
					model.addAttribute("message", e.getMessage());
					e.printStackTrace();
				}
				// redirectAttrs.addFlashAttribute(arg0, arg1)
				return "redirect:/products";
			}

			@RequestMapping("product/edit/{id}")
			public String editCategory(@PathVariable("id") String id, Model model) {
				System.out.println("editProduct");
				model.addAttribute("product", this.productDAO.get(id));
				model.addAttribute("listProducts", this.productDAO.list());
				model.addAttribute("categoryList", this.categoryDAO.list());
				model.addAttribute("supplierList", this.supplierDAO.list());
				return " product";
			}
			
	
			
	
			
			@RequestMapping("product/show/{id}")
			public String getSelectedProduct(@PathVariable("id") String id, Principal principal, Model model) {
				/*String name = principal.getName();
				model.addAttribute("username", name);*/
				product = productDAO.get(id);
				return "redirect:/userpage";
			}

			@RequestMapping("/userpage")
			public String getHomePage(Model model, Principal principal, HttpSession session) {
				//String name = principal.getName();
				String id = product.getId();
				
				model.addAttribute("id", id);
				//model.addAttribute("username", name);
				//File dir=null;
				
				/*try{
					dir=new File("E:\\productimages");
					
				}
				catch(Exception e)
				{
					System.out.println(e.toString());
				}*/
				model.addAttribute("uploadFile", "resources/productimages/"+product.getId()+".jpg");
				session.setAttribute("uploadFile","resources/productimages/"+product.getId()+".jpg");
				model.addAttribute("selectedProduct", this.productDAO.get(id));
				model.addAttribute("category", new Category());
				model.addAttribute("categoryList", this.categoryDAO.list());
				return "userHome";
			}
			
			
			@RequestMapping("/buy")
			public ModelAndView buy(Model model,HttpServletRequest request)
			{
				ModelAndView mv;
				String message;
				mv=new ModelAndView("home");
				mv.addObject("InHomePage",true );
				message = "Successfully Bought";
				/*String name=request.getParameter("username");
				model.addAttribute("username", name);*/
				return mv;
			}
			//it is to display category page
			
			@RequestMapping("category/show/{id}")
			public String getSelectedCategory(@PathVariable("id") String id, Principal principal, Model model) {
				
				category = categoryDAO.get(id);
				return "redirect:/DisplayCategory";
			}

			@RequestMapping("/DisplayCategory")
			public String getCategoryPage(Model model, Principal principal, HttpSession session) {
				
				String id = category.getId();
				
				model.addAttribute("id", id);
				
				/*model.addAttribute("uploadFile", "resources/productimages/"+product.getId()+".jpg");
				session.setAttribute("uploadFile","resources/productimages/"+product.getId()+".jpg");*/
				model.addAttribute("selectedCategory", this.categoryDAO.get(id));
				model.addAttribute("category", new Category());
				model.addAttribute("categoryList", this.categoryDAO.list());
				model.addAttribute("productLists", this.productDAO.list());
				
				return "userHome";
			}
			
}
