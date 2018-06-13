package com.jxspp.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.common.utils.MD5Utils;
import com.jxspp.service.LoginService;
import com.jxspp.service.RegisterService;

@Controller
@RequestMapping("/register")
public class RegisterController {
	/** 注册服务类 */
	@Resource(name = "registerService")
	private RegisterService registerService = null;
	
	/** 登录服务类 */
	@Resource(name = "loginService")
	private LoginService loginService = null;
	
	@RequestMapping("")
	public ModelAndView toRegister() throws JxsppException{
		ModelAndView view = new ModelAndView("home/register");
		return view;
	}
	
	@RequestMapping(value = "/register",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView register(String phone,String email,String password) {
		ModelAndView view = new ModelAndView();
		System.out.println("phone:"+phone+"email:"+email);
		if (phone != null) {
			Integer count = loginService.searchCountByUsername(phone);
			System.out.println("count:"+count);
			if (count==0) {
				password = MD5Utils.toMD5Hex(password);
				registerService.saveUserInfo(phone, password);
				view.setViewName("home/login");
			}else {
				view.setViewName("home/register");
				view.addObject("phoneRegisterMessage","该手机号已被注册");
			}
		}else if(email != null){
			Integer count = loginService.searchCountByUsername(email);
			if(count == 0) {
				password = MD5Utils.toMD5Hex(password);
				registerService.saveUserInfo(email, password);
				view.setViewName("home/login");
			}else {
				view.setViewName("home/register");
				view.addObject("emailegisterMessage","该邮箱已被注册");
			}
		}
		return view;
	}
}
