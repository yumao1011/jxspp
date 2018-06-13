package com.jxspp.controller;

import java.util.HashMap;
import java.util.Map;

import javax.activation.MailcapCommandMap;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.common.utils.MD5Utils;
import com.jxspp.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {

	/** 登录服务类 */
	@Resource(name = "loginService")
	private LoginService loginService = null;

	@RequestMapping("")
	public ModelAndView toLogin() throws JxsppException{
		ModelAndView view = new ModelAndView();
		view.setViewName("home/login");
		return view;
	}

	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView login(String userName, String password,HttpSession session) throws JxsppException {
		ModelAndView view = new ModelAndView();
		if (userName != null && password != null) {
			//对源密码进行MD5加密
			password = MD5Utils.toMD5Hex(password);
			System.out.println("加密后的密码："+password);
			String password2 = loginService.searchPwdByUsername(userName);
			if (password.equals(password2)) {
				Integer id = loginService.searchIdByUsername(userName);
				Map<String, Object> user = new HashMap<String, Object>();
				user.put("userName", userName);
				user.put("id", id);
				//将用户信息放入session中
				session.setAttribute("user", user);
				view.setViewName("home/home");
				view.addObject("message",null);
			} else {
				view.setViewName("home/login");
				view.addObject("message", "用户名或密码错误!");
			}
		}else {
			view.setViewName("home/login");
			view.addObject("message","用户名或密码不能为空!");
		}
		return view;
	}
}
