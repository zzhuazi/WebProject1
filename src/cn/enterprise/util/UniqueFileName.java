package cn.enterprise.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class UniqueFileName {
	public static String getFileName(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS"); 
		Date date = new Date();
		String str = sdf.format(date);
		System.out.println(str + ".jpg");
		return str + ".jpg";
	}
}
