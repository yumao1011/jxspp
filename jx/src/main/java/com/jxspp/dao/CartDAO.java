package com.jxspp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jxspp.model.person.Cart;

@Repository("cartDAO")
public interface CartDAO {
	public void addCart(@Param("userName")String userName,@Param("productId")Integer productId,@Param("num")Integer num);
	public List<Integer> searchProductId(@Param("userName")String userName);
	public void deleteCart(@Param("userName")String userName,@Param("productId")Integer productId);
	public Cart selectCart(@Param("userName")String userName,@Param("productId")Integer productId);
	public void updateStatus(@Param("status")Integer status,@Param("userName")String userName);
	public List<Integer> searchProductByStatus(@Param("status")Integer status,@Param("userName")String userName);
}
