package com.jxspp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.model.person.Product;
import com.jxspp.model.person.ProductComment;
import com.jxspp.service.person.ProductService;

@Controller
@RequestMapping("/detail")
public class DetailController {
	
	@Resource(name="productService")
	private ProductService productService = null;
	
	@RequestMapping(value = "/search",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView searchProductDetailById(Integer id) throws JxsppException{
		ModelAndView view = new ModelAndView();
		Product product = productService.searchProductById(id);
		if (product != null) {
			view.addObject("product", product);
		}
		List<ProductComment> comments = productService.searchProductComment(id);
		view.addObject("comments",comments);
		System.out.println(comments);
		view.setViewName("home/Detail");
		return view;
	}
}
