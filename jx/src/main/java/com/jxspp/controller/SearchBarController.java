package com.jxspp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jxspp.model.person.Product;
import com.jxspp.service.person.ProductService;

@Controller
@RequestMapping("/searchBar")
public class SearchBarController {
	
	@Resource(name="productService")
	private ProductService productService = null;
	
	@RequestMapping("/search")
	public ModelAndView searchProduct(String productName) {
		ModelAndView view = new ModelAndView();
		List<Product> productsBySearchList = productService.searchProductByName(productName);
		view.addObject("productsBySearchList", productsBySearchList);
		System.out.println(productsBySearchList);
		view.setViewName("home/search");
		return view;
	}
}
