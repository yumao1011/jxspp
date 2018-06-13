package com.jxspp.service.person;

import com.jxspp.model.person.UserDetail;

public interface UserDetailService {
	/**
	 * 根据用户名查找用户信息列表
	 * @param userName
	 * @return
	 */
	public UserDetail getUserDetailByUsername(String userName);
	
	/**
	 * 新增用户信息列表
	 * @param userDetail
	 */
	public void createUserDetail(UserDetail userDetail);
	
	/**
	 * 修改用户信息列表
	 * @param userDetail
	 */
	public void updateUserDetail(UserDetail userDetail);
}
