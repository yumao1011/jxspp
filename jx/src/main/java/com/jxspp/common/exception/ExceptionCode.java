package com.jxspp.common.exception;

/**
 * 异常编码枚举
 * 
 * @author yumao
 *
 */
public enum ExceptionCode {
	/** 未知错误 */
	UNKNOWN_ERROR(9999, "未知错误");

	/** 属性相关 */
	/** 异常编码值 */
	private int value = 0;
	/** 异常编码描述 */
	private String description = null;

	/**
	 * 构造函数
	 * 
	 * @param value 异常编码值
	 * @param description 异常编码描述
	 */
	private ExceptionCode(int value, String description) {
		this.value = value;
		this.description = description;
	}

	/**
	 * 获取异常编码值
	 * 
	 * @return 异常编码值
	 */
	public int getValue() {
		return value;
	}

	/**
	 * 获取异常编码描述
	 * 
	 * @return 异常编码描述
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * 获取异常编码描述
	 * 
	 * @param value 异常编码值
	 * @return 异常编码描述
	 */
	public static String getDescription(int value) {
		for (ExceptionCode field : values()) {
			if (field.value == value) {
				return field.description;
			}
		}
		return null;
	}

	/**
	 * 根据值获取异常编码
	 * 
	 * @param value 异常编码值
	 * @return 异常编码
	 */
	public static ExceptionCode fromValue(int value) {
		for (ExceptionCode field : values()) {
			if (field.value == value) {
				return field;
			}
		}
		return null;
	}

	/**
	 * 包含异常编码值
	 * 
	 * @param value 异常编码值
	 * @return 是否包含
	 */
	public static boolean contains(int value) {
		for (ExceptionCode field : values()) {
			if (field.value == value) {
				return true;
			}
		}
		return false;
	}

}