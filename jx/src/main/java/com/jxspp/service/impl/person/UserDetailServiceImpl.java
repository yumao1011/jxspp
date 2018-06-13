package com.jxspp.service.impl.person;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jxspp.dao.UserDetailDAO;
import com.jxspp.model.person.UserDetail;
import com.jxspp.service.person.UserDetailService;

@Service("userDetailService")
public class UserDetailServiceImpl implements UserDetailService {

	/** 用户信息列表DAO */
	@Resource(name="userDetailDAO")
	private UserDetailDAO userDetailDAO = null;
	
	/**
	 * 根据用户名查找用户信息列表
	 */
	public UserDetail getUserDetailByUsername(String userName) {
		UserDetail userDetail = userDetailDAO.getUserDetailByUsername(userName);
		return userDetail;
	}

	/**
	 * 新增用户信息列表
	 */
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
	public void createUserDetail(UserDetail userDetail) {
		userDetailDAO.createUserDetail(userDetail);
	}
	
	/**
	 * 修改用户信息列表
	 */
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
	public void updateUserDetail(UserDetail userDetail) {
		userDetailDAO.updateUserDetail(userDetail);
	}

}
