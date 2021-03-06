package com.jxspp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.model.person.Product;
import com.jxspp.service.person.ProductService;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Resource(name="productService")
	private ProductService productService = null;
	
	@RequestMapping("")
	public ModelAndView toIndex(HttpSession session) throws JxsppException {
		ModelAndView view = new ModelAndView("home/home");
		List<Product> products1 = productService.searchProductsByType("1");//膨化食品
		if (products1 != null) {
			view.addObject("products1", products1);
			session.setAttribute("products1", products1);
		}
		List<Product> products2 = productService.searchProductsByType("2");//蔬果干货
		if (products2 != null) {
			view.addObject("products2",products2);
			session.setAttribute("products2", products2);
		}
		List<Product> products3 = productService.searchProductsByType("3");//熟食腊味
		if(products3 != null) {
			view.addObject("products3",products3);
			session.setAttribute("products3", products3);
		}
		return view;
	}
	
	@RequestMapping("/searchProducts")
	public ModelAndView searchProducts() throws JxsppException {
		ModelAndView view = new ModelAndView();
		List<Product> productList = productService.searchProducts();
		if (productList != null) {
			view.addObject("productList",productList);
		}
		view.setViewName("");
		return view;
	}
	
	@RequestMapping(value="/searchProductById",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView searchProductById(Integer id) throws JxsppException {
		ModelAndView view = new ModelAndView();
		Product product = productService.searchProductById(id);
		if (product != null) {
			view.addObject("product",product);
		}
		view.setViewName("");
		return view;
	}
}
