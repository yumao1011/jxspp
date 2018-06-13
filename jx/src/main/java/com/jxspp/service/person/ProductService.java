package com.jxspp.service.person;

import java.util.List;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.model.person.Product;
import com.jxspp.model.person.ProductComment;

public interface ProductService {
	/**
	 * 查询商品信息列表
	 * @return
	 * @throws JxsppException
	 */
	public List<Product> searchProducts()throws JxsppException;
	
	/**
	 * 根据商品类型查询商品信息列表
	 * @param type 商品类型
	 * @return
	 * @throws JxsppException
	 */
	public List<Product> searchProductsByType(String type)throws JxsppException;
	
	/**
	 * 根据商品id查询商品信息
	 * @param id 商品id
	 * @return
	 * @throws JxsppException
	 */
	public Product searchProductById(Integer id)throws JxsppException;
	
	public List<Product> searchProductByName(String productName);
	
	public List<ProductComment> searchProductComment(Integer productId);
}
