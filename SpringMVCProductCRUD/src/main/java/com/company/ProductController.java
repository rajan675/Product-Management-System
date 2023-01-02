package com.company;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ProductController {
	@Autowired
	private ProductDAO productDAO;
	
    @RequestMapping("/")
	public String home(Model m) {
     List<Product> products=productDAO.getProducts();	
     m.addAttribute("products",products);
		return "index"; 
	}
    @RequestMapping("/addProduct")
    public String addProduct(Model m) {
    	m.addAttribute("title","Add Product");
    	return "addProduct";
    }
    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public RedirectView addHandler(@ModelAttribute Product product, HttpServletRequest request) {
    	System.out.println(product);
    	productDAO.productCreate(product);
    	RedirectView redirectView = new  RedirectView();
    	redirectView.setUrl(request.getContextPath()+"/");
    	return redirectView;
    }
    @RequestMapping("/delete/{id}")
    public RedirectView deleteHandler(@PathVariable("id")int id ,HttpServletRequest request) {
    	this.productDAO.delete(id);
    	RedirectView redirectView = new  RedirectView();
    	redirectView.setUrl(request.getContextPath()+"/");
    	return redirectView;
    }
    @RequestMapping("/update/{id}")
    public String updateHandler(@PathVariable("id") int id,Model m) {
     Product product=this.productDAO.getProduct(id);
    	m.addAttribute("product",product);
    	return "update";
    }
}
