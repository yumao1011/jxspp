package com.jxspp.controller.person;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.model.person.UserDetail;
import com.jxspp.service.person.UserDetailService;

@RequestMapping("/person")
@Controller
public class InformationController {

	/** 用户信息列表服务 */
	@Resource(name = "userDetailService")
	private UserDetailService userDetailService = null;

	@RequestMapping(value = "/index", method = { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView toIndex(Integer id, String userName) throws JxsppException{
		ModelAndView view = new ModelAndView();
		Map<String, Object> user = new HashMap<String, Object>();
		user.put("id", id);
		user.put("userName", userName);
		view.addObject("user", user);
		view.setViewName("person/index");

		return view;
	}


	@RequestMapping(value = "/userDetail", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView toUserDetail(String userName, Integer id) throws JxsppException {
		ModelAndView view = new ModelAndView();
		UserDetail userDetail = userDetailService.getUserDetailByUsername(userName);
		if (userDetail != null) {
			view.addObject("userDetail", userDetail);
		}
		view.setViewName("person/userDetail");
		return view;
	}

	@RequestMapping(value = "/update", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView update(UserDetail userDetail) throws JxsppException {
		System.out.println(userDetail);
		ModelAndView view = new ModelAndView();
		UserDetail userDetail2 = userDetailService.getUserDetailByUsername(userDetail.getUserName());
		// 判断数据库中是否存在用户信息列表
		if (userDetail2 != null) {
			userDetailService.updateUserDetail(userDetail);
		} else {
			userDetailService.createUserDetail(userDetail);
		}
		view.addObject("userDetail",userDetail);
		view.setViewName("person/userDetail");
		return view;
	}
}
