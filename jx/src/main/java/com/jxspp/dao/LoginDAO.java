package com.jxspp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository("loginDAO")
public interface LoginDAO {
	/**
	 * 根据用户名查找用户 密码
	 * @param userName
	 * @return
	 */
	public String searchPwdByUsername(@Param(value="userName")String userName);
	
	/**
	 * 根据用户名查找用户数量
	 * @param userName
	 * @return
	 */
	public Integer searchCountByUsername(@Param(value="userName")String userName);
	
	/**
	 * 根据用户名查找用户id
	 * @param userName
	 * @return
	 */
	public Integer searchIdByUsername(@Param(value="userName")String userName);
}
