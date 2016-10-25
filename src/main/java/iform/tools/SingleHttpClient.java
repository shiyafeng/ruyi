package iform.tools;

import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
 
public class SingleHttpClient {
	
	private static DefaultHttpClient httpClient;
	static {
	 httpClient = new DefaultHttpClient(new ThreadSafeClientConnManager());
	
	}
	 
	public static DefaultHttpClient getInstance() {
		return httpClient;

	}

}
