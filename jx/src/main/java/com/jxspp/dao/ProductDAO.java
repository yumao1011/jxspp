package com.jxspp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jxspp.model.person.Product;
import com.jxspp.model.person.ProductComment;

@Repository("productDAO")
public interface ProductDAO {
	/**
	 * 查询商品信息列表
	 * @return
	 */
	public List<Product> searchProducts();
	
	/**
	 * 根据商品类型查询商品信息列表
	 * @param type 商品类型
	 * @return
	 */
	public List<Product> searchProductsByType(@Param("type")String type);
	
	/**
	 * 根据商品id查询商品信息
	 * @param id 商品id
	 * @return
	 */
	public Product searchProductById(@Param("id")Integer id);
	
	public List<Product> searchProductByName(@Param("productName")String productName);
	
	public List<ProductComment> searchProductComment(@Param("productId")Integer productId);
}
