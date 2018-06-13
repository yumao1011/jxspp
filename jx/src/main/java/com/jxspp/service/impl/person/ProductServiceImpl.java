package com.jxspp.service.impl.person;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.dao.ProductDAO;
import com.jxspp.model.person.Product;
import com.jxspp.model.person.ProductComment;
import com.jxspp.service.person.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	@Resource(name="productDAO")
	private ProductDAO productDAO = null;
	
	/**
	 * 查询商品信息列表
	 */
	public List<Product> searchProducts() throws JxsppException {
		List<Product> products = productDAO.searchProducts();
		return products;
	}
	
	/**
	 * 根据商品类型查询商品信息列表
	 */
	public List<Product> searchProductsByType(String type) throws JxsppException {
		List<Product> products = productDAO.searchProductsByType(type);
		return products;
	}
	
	/**
	 * 根据商品id查询商品信息
	 */
	public Product searchProductById(Integer id) throws JxsppException {
		Product product = productDAO.searchProductById(id);
		return product;
	}

	public List<Product> searchProductByName(String productName) {
		List<Product> products = productDAO.searchProductByName(productName);
		return products;
	}

	public List<ProductComment> searchProductComment(Integer productId) {
		List<ProductComment> comments = productDAO.searchProductComment(productId);
		return comments;
	}

}
