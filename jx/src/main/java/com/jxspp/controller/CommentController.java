package com.jxspp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.model.person.Product;
import com.jxspp.service.CartService;
import com.jxspp.service.person.CommentService;
import com.jxspp.service.person.ProductService;

@Controller
@RequestMapping("/comment")
public class CommentController {
	@Resource(name="cartService")
	private CartService cartService = null;
	
	@Resource(name="productService")
	private ProductService productService = null;
	
	@Resource(name="commentService")
	private CommentService commentService = null;
	
	@RequestMapping("/toComment")
	public ModelAndView toComment(String userName) throws JxsppException {
		ModelAndView view = new ModelAndView("person/commentlist");
		Integer productId = cartService.searchProductByStatus(userName, 1).get(0);//每次只查询一条未评论订单
		Product commentProduct = productService.searchProductById(productId);
		view.addObject("commentProduct", commentProduct);
		return view;
	}
	
	@RequestMapping("/addComment")
	public ModelAndView toComment(String userName,Integer productId,String comment) throws JxsppException {
		commentService.addComment(userName, productId, comment);
		ModelAndView view = new ModelAndView("person/commentlist");
		Integer productId2 = cartService.searchProductByStatus(userName, 1).get(0);//每次只查询一条未评论订单
		Product commentProduct = productService.searchProductById(productId2);
		view.addObject("commentProduct", commentProduct);
		return view;
	}
	
}
