package com.soft.util;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 时间类型转换工具类
 * @author lxs
 * @date2019年10月18日 下午4:16:04
 */
public class DateUtil {

	// 获取当前日期时间
	public static Timestamp getNow() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = format.format(new Date());
		return Timestamp.valueOf(date);
	}
	
	// 获取今天日期
	public static String getToday() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String date = format.format(new Date());
		return date;
	}
	
	// 字符串转日期
	public static Date strToDate(String strDate) throws Exception {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = format.parse(strDate);
		
		return date;
	}
	
	// 日期格式化（年-月-日）
	public static String dateToStr(Date date) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy年MM月dd日");
		return format.format(date);
	}
	
}
