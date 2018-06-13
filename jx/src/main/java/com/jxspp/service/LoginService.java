package com.jxspp.service;

public interface LoginService {
	/**
	 * 根据用户名查找密码
	 * @param userName 用户名
	 * @return 密码
	 */
	public String searchPwdByUsername(String userName);
	
	/**
	 * 根据用户名查找用户数量
	 * @param userName 用户
	 * @return 数量
	 */
	public Integer searchCountByUsername(String userName);
	
	/**
	 * 根据用户名查找用户id
	 * @param userName
	 * @return
	 */
	public Integer searchIdByUsername(String userName);
}
