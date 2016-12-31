package iform.tools;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateCommon {
 
	public static String today(String format) {
		Calendar calendar = Calendar.getInstance();
		return new SimpleDateFormat(format).format(calendar.getTime());
	}

	public static String yesterday(String format){
		   	 Calendar calendar = Calendar.getInstance();
		   	  
		   	   String nowDate = new SimpleDateFormat(format).format(calendar.getTime()); 
		   	   Calendar c=Calendar.getInstance();
		   	   Date date=null;
		   	   try {
		   		 date=new SimpleDateFormat(format).parse(nowDate);
		   	   } catch (Exception e) {
		   		e.printStackTrace();
		   	   }
		   	   c.setTime(date);
		   	   int day=c.get(Calendar.DATE);
		   	   c.set(Calendar.DATE, day-1);
		   	   return new SimpleDateFormat(format).format(c.getTime()); 
		  
		   }
}
