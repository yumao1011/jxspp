package com.jxspp.common.utils;

import org.apache.commons.codec.digest.DigestUtils;

public class MD5Utils {
	
	/**
	 * 使用MD5进行不可逆数据加密
	 * @param source 源数据
	 * @return MD5循环加密10次后的数据
	 */
	public static String toMD5Hex(String source) {
		for (int i = 0; i < 10; i++) {
			source = DigestUtils.md5Hex(source);
		}
		return source;
	}
}
