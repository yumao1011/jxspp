package com.jxspp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jxspp.model.person.Address;

@Repository("addressDAO")
public interface AddressDAO {
	/**
	 * 根据用户名查找用户地址信息
	 * @param userName
	 * @return
	 */
	public List<Address> searchAddress(@Param("userName")String userName);
	
	/**
	 * 增加用户地址信息
	 * @param address
	 */
	public void addAddress(Address address);
	
	/**
	 * 删除用户信息
	 * @param userName
	 */
	public void deleteAddress(@Param("userName")String userName,@Param("id")Integer id);
}
