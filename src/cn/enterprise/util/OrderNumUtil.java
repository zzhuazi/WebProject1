package cn.enterprise.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class OrderNumUtil {
	/*
	 * ����Ψһ�Ķ�����ţ�ʱ��+�û�id��
	 */
	public static String getNum(int uid, int gid) {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS"); 
		Date date = new Date();
		String str = sdf.format(date);
		String num = uid+ str + gid;
		return num;
	}
}
