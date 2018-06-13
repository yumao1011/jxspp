package com.jxspp.model.person;

import java.io.Serializable;

/**
 * 用户收货地址实体类
 * 
 * @author yumao
 *
 */
public class Address implements Serializable{
	/** 用户id */
	private Integer id = null;
	/** 用户名 */
	private String userName = null;
	/** 收货人姓名 */
	private String name = null;
	/** 收货人手机号 */
	private String phone = null;
	/** 收货人所在省份 */
	private String province = null;
	/** 收货人所在市 */
	private String city = null;
	/** 收货人所在区 */
	private String district = null;
	/** 收货人详细地址 */
	private String fullAddress = null;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getFullAddress() {
		return fullAddress;
	}
	public void setFullAddress(String fullAddress) {
		this.fullAddress = fullAddress;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", userName=" + userName + ", name=" + name + ", phone=" + phone
				+ ", province=" + province + ", city=" + city + ", district=" + district + ", fullAddress="
				+ fullAddress + "]";
	}
}
