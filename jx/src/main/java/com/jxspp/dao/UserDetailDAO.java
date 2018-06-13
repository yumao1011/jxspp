package com.jxspp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jxspp.model.person.UserDetail;

@Repository("userDetailDAO")
public interface UserDetailDAO {
	/**
	 * 通过用户名得到用户信息列表
	 * @param userName
	 * @return
	 */
	public UserDetail getUserDetailByUsername(@Param("userName")String userName);
	
	/**
	 * 新增用户信息列表
	 * @param userDetail
	 */
	public void createUserDetail(@Param("userDetail")UserDetail userDetail);
	
	/**
	 * 修改用户信息列表
	 * @param userDetail
	 */
	public void updateUserDetail(@Param("userDetail")UserDetail userDetail);
}
