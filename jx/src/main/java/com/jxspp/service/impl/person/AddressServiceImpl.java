package com.jxspp.service.impl.person;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.dao.AddressDAO;
import com.jxspp.model.person.Address;
import com.jxspp.service.person.AddressService;

@Service("addressService")
public class AddressServiceImpl implements AddressService{
	
	/** 用户地址DAO */
	@Resource(name="addressDAO")
	private AddressDAO addressDAO = null;
	
	/**
	 * 查找用户的地址信息
	 */
	public List<Address> searchAddress(String userName) throws JxsppException{
		List<Address> addressList = addressDAO.searchAddress(userName); 
			return addressList;
	}
	
	/**
	 * 添加用户地址信息
	 */
	@Transactional(rollbackFor=Exception.class)
	public void addAddress(Address address) throws JxsppException {
		if (address != null) {
			addressDAO.addAddress(address);
		}
		
	}
	
	/**
	 * 删除用户信息
	 */
	@Transactional(rollbackFor=Exception.class)
	public void deleteAddress(String userName,Integer id) throws JxsppException {
		addressDAO.deleteAddress(userName,id);
	}

}
