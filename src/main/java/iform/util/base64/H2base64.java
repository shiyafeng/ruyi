package iform.util.base64;

 
public class H2base64 {
 
	public static String decode(String str) {
	  if (str==null) return null;
	  return Base64.decode(str,"utf-8");
	}
}
