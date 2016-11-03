package com.demo;

import java.util.ArrayList;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class Test {
	/**
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		DateTimeFormatter format = DateTimeFormat .forPattern("yyyy-MM-dd HH:mm:ss");
        
		ArrayList<Long> list = new ArrayList<Long>();
		{
			DateTime t1 = DateTime.parse("2016-01-25 18:02:00", format);
			list.add(t1.getMillis());
		}  
		{
			DateTime t1 = DateTime.parse("2016-01-25 18:10:50", format);
			list.add(t1.getMillis());
		}  
//		// DJB 默认过期时间2小时
		// 取得30秒前的时间    
        DateTime dt5 = DateTime.now().secondOfMinute().addToCopy(-30);
        System.out.println("当前时间：" + DateTime.now().toString("yyyy-MM-dd HH:mm:ss"));
        Long last = list.get(list.size() -1);
        if (last < dt5.getMillis()) {
			System.out.println("可以发送短信，最后时间点：" +  new DateTime(last).toString("yyyy-MM-dd HH:mm:ss"));
		} else {
			System.out.println("刚刚才发过等30秒再发");
		}
        
        System.out.println("时间队列：");
        
        for (Long t : list) {
        	System.out.println(new DateTime(t).toString("yyyy-MM-dd HH:mm:ss"));
		}
	}
}
