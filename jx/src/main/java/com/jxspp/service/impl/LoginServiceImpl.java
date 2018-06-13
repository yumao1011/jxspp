package com.jxspp.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jxspp.dao.LoginDAO;
import com.jxspp.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	/** 登录服务DAO */
	@Resource(name = "loginDAO")
	private LoginDAO loginDAO = null;
	
	/**
	 * 根据用户名查找用户密码
	 */
	public String searchPwdByUsername(String userName) {
		String password = loginDAO.searchPwdByUsername(userName);
		return password;
	}
	
	/**
	 * 根据用户名查找用户数量
	 */
	public Integer searchCountByUsername(String userName) {
		Integer count = loginDAO.searchCountByUsername(userName);
		return count;
	}

	/**
	 * 根据用户名查找用户id
	 */
	public Integer searchIdByUsername(String userName) {
		Integer id = loginDAO.searchIdByUsername(userName);
		return id;
	}

}
