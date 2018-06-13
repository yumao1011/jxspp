package com.jxspp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository("registerDAO")
public interface RegisterDAO {
	/**
	 * 存贮用户注册信息
	 * @param userName
	 * @param password
	 */
	public void saveUserInfo(@Param(value="userName")String userName,@Param(value="password")String password);
}
