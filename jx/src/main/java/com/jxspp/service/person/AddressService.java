package com.jxspp.service.person;

import java.util.List;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.model.person.Address;

public interface AddressService {
	/**
	 * 查找用户的地址信息
	 * @param userName
	 * @return
	 */
	public List<Address> searchAddress(String userName)throws JxsppException;
	
	/**
	 * 添加用户地址信息
	 * @throws JxsppException
	 */
	public void addAddress(Address address)throws JxsppException;
	
	/**
	 * 删除用户信息
	 * @param userName
	 * @throws JxsppException
	 */
	public void deleteAddress(String userName,Integer id) throws JxsppException;
}
