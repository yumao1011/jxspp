package com.jxspp.model.person;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 用户信息列表实体类
 * 
 * @author yumao
 *
 */
public class UserDetail implements Serializable {
	/** 标志id */
	private Integer id = null;
	/** 用户名 */
	private String userName = null;
	/** 昵称 */
	private String nickName = null;
	/** 性别 */
	private String sex = null;
	/** 电话 */
	private String phone = null;
	/** 邮箱 */
	private String email = null;
	/** 姓名 */
	private String name = null;
	/** 生日 */
	@DateTimeFormat(pattern="yyyy/mm/dd")
	private Date birthday = null;

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

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

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "UserDetail [id=" + id + ", userName=" + userName + ", nickName=" + nickName + ", sex=" + sex
				+ ", phone=" + phone + ", email=" + email + ", name=" + name + ", birthday=" + birthday + "]";
	}
	
}
