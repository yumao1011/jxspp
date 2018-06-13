package com.jxspp.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jxspp.dao.RegisterDAO;
import com.jxspp.service.RegisterService;

@Service("registerService")
public class RegisterServiceImpl implements RegisterService{
	/** 注册类DAO */
	@Resource(name = "registerDAO")
	private RegisterDAO registerDAO = null;
	
	@Transactional(propagation = Propagation.REQUIRED,rollbackFor=Exception.class)
	public void saveUserInfo(String userName, String password) {
		registerDAO.saveUserInfo(userName, password);
	}
}
