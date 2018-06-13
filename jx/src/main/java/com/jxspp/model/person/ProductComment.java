package com.jxspp.model.person;

import java.io.Serializable;

/**
 * 用户评论实体类
 * @author yumao
 *
 */
public class ProductComment implements Serializable{
	private Integer id;
	private Integer productId;
	private String userName;
	private String comment;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return "ProductComment [id=" + id + ", productId=" + productId + ", userName=" + userName + ", comment="
				+ comment + "]";
	}
	
}
