package com.jxspp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.model.person.Address;
import com.jxspp.service.CartService;
import com.jxspp.service.person.AddressService;

@Controller
@RequestMapping("/pay")
public class PayController {
	/** 用户地址服务 */
	@Resource(name="addressService")
	private AddressService addressService = null;
	
	@Resource(name="cartService")
	private CartService cartService = null;
	/**
	 * 查询用户地址信息列表
	 * @return
	 * @throws JxsppException 
	 */
	@RequestMapping(value="/topay",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView searchAddress(String userName,String total) throws JxsppException {
		ModelAndView view = new ModelAndView();
		List<Address> addressList = addressService.searchAddress(userName);
		if (addressList != null) {
			view.addObject("addressList",addressList);
		}
		System.out.println(total);
		cartService.updateStatus(1,userName);
		view.setViewName("home/pay");
		return view;
	}
	
	@ResponseBody
	@RequestMapping(value="/putTotal",method= {RequestMethod.GET,RequestMethod.POST})
	public String putTotal(String userName,String total,HttpSession session) throws JxsppException {
		System.out.println(total);
		session.setAttribute("total", total);
		return "true";
		}
	
	@RequestMapping(value="/paySuccess",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView paySuccess(String userName) throws JxsppException {
		ModelAndView view = new ModelAndView();
		view.setViewName("home/success");
		return view;
	}
}
