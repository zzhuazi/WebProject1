package cn.enterprise.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class OrderNumUtil {
	/*
	 * 生成唯一的订单编号（时间+用户id）
	 */
	public static String getNum(int uid, int gid) {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS"); 
		Date date = new Date();
		String str = sdf.format(date);
		String num = uid+ str + gid;
		return num;
	}
}
