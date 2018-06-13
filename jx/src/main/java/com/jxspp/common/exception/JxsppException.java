package com.jxspp.common.exception;

/**
 * 江西特产购物平台自定义异常
 * 
 * @author yumao
 *
 */
public class JxsppException extends Exception {
	/** 异常编码 */
	private ExceptionCode code = ExceptionCode.UNKNOWN_ERROR;

	/**
	 * 构造函数
	 */
	public JxsppException() {
		super();
	}

	/**
	 * 构造函数
	 * 
	 * @param code
	 *            异常编码
	 */
	public JxsppException(ExceptionCode code) {
		super();
		this.code = code;
	}

	/**
	 * 构造函数
	 * 
	 * @param message
	 *            异常消息
	 */
	public JxsppException(String message) {
		super(message);
	}

	/**
	 * 构造函数
	 * 
	 * @param code
	 *            异常编码
	 * @param message
	 *            异常消息
	 */
	public JxsppException(ExceptionCode code, String message) {
		super(message);
		this.code = code;
	}

	/**
	 * 构造函数
	 * 
	 * @param cause
	 *            异常原因
	 */
	public JxsppException(Throwable cause) {
		super(cause);
	}

	/**
	 * 构造函数
	 * 
	 * @param code
	 *            异常编码
	 * @param casue
	 *            异常原因
	 */
	public JxsppException(ExceptionCode code, Throwable casue) {
		super(casue);
		this.code = code;
	}

	/**
	 * 构造函数
	 * 
	 * @param message
	 *            异常消息
	 * @param cause
	 *            异常原因
	 */
	public JxsppException(String message, Throwable cause) {
		super(message, cause);
	}

	/**
	 * 构造函数
	 * 
	 * @param code
	 *            异常编码
	 * @param message
	 *            异常消息
	 * @param cause
	 *            异常原因
	 */
	public JxsppException(ExceptionCode code, String message, Throwable cause) {
		super(message, cause);
		this.code = code;
	}

	/**
	 * 得到异常编码
	 * 
	 * @return
	 */
	public ExceptionCode getExceptionCode() {
		return code;
	}
}
