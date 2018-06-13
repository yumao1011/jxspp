package com.jxspp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.xml.registry.infomodel.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.dao.CartDAO;
import com.jxspp.model.person.Product;
import com.jxspp.service.CartService;
import com.jxspp.service.person.ProductService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Resource(name="cartService")
	private CartService cartService = null;
	
	@Resource(name="productService")
	private ProductService productService = null;
	
	@RequestMapping("/addCart")
	public ModelAndView addCart(String userName,Integer productId,Integer num) throws JxsppException {
		ModelAndView view = new ModelAndView();
		cartService.addCart(productId, userName, num);
		view.setViewName("home/cart");
		List<Integer> products = cartService.searchProductId(userName);
		ArrayList<Product> productList = new ArrayList<Product>();
		for (Integer productId1 : products) {
			Product product = productService.searchProductById(productId1);
			productList.add(product);
			System.out.println(product);
		}
		view.addObject("productList", productList);
		return view;
	}
	
	@RequestMapping("/toCart")
	public ModelAndView tocart(String userName) throws JxsppException {
		System.out.println(userName);
		ModelAndView view = new ModelAndView();
		view.setViewName("home/cart");
		List<Integer> products = cartService.searchProductId(userName);
		ArrayList<Product> productList = new ArrayList<Product>();
		for (Integer productId : products) {
			Product product = productService.searchProductById(productId);
			productList.add(product);
			System.out.println(product);
		}
		view.addObject("productList", productList);
		return view;
	} 
	
	@RequestMapping("/deleteCart")
	public ModelAndView deletecart(String userName,Integer productId) throws JxsppException {
		System.out.println(userName);
		ModelAndView view = new ModelAndView();
		view.setViewName("home/cart");
		cartService.deleteCart(userName, productId);
		List<Integer> products = cartService.searchProductId(userName);
		ArrayList<Product> productList = new ArrayList<Product>();
		for (Integer productId1 : products) {
			Product product = productService.searchProductById(productId1);
			productList.add(product);
			System.out.println(product);
		}
		view.addObject("productList", productList);
		return view;
	}
	
	@ResponseBody
	@RequestMapping("/editCart/{type}")
	public String editCart(String userName,Integer id,@PathVariable("type")int type,HttpSession session) throws JxsppException {
		User user = (User)session.getAttribute("user");
		
		List<Integer> products = cartService.searchProductId(userName);
		ArrayList<Product> productList = new ArrayList<Product>();
		for (Integer productId1 : products) {
			Product product = productService.searchProductById(productId1);
			productList.add(product);
			System.out.println(product);
		}
		return "";
	}
	
}
