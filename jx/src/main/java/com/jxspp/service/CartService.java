package com.jxspp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CartService {
	public void addCart(Integer productId,String userName,Integer num);
	
	public List<Integer> searchProductId(String userName);
	
	public void deleteCart(String userName,Integer productId);
	
	public void updateStatus(Integer status,String userName);
	
	public List<Integer> searchProductByStatus(String userName,Integer status);
}
