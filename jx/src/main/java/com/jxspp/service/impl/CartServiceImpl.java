package com.jxspp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jxspp.dao.CartDAO;
import com.jxspp.service.CartService;

@Service("cartService")
public class CartServiceImpl implements CartService{
	
	@Resource(name="cartDAO")
	private CartDAO cartDAO = null;
	
	@Transactional(rollbackFor=Exception.class)
	public void addCart(Integer productId, String userName, Integer num) {
		cartDAO.addCart(userName, productId, num);
	}
	
	
	public List<Integer> searchProductId(String userName) {
		List<Integer> products = cartDAO.searchProductId(userName);
		return products;
	}
	

	@Transactional(rollbackFor=Exception.class)
	public void deleteCart(String userName, Integer productId) {
		cartDAO.deleteCart(userName, productId);
	}


	public void updateStatus(Integer status,String userName) {
		cartDAO.updateStatus(status,userName);
	}
	
	public List<Integer> searchProductByStatus(String userName,Integer status) {
		List<Integer> products = cartDAO.searchProductByStatus(status, userName);
		return products;
	}
	

}
