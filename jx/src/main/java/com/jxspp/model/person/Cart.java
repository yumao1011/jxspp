package com.jxspp.model.person;

import java.io.Serializable;
/**
 * 购物车实体类
 * @author yumao
 *
 */
public class Cart implements Serializable{
	private Integer id;
	private String userName;
	private Integer productId;
	private String num;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	private Integer status;
}
