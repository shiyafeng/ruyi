package iform.tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;

public class JDBCProxy {
	@SuppressWarnings("finally")
	public static String query(String url, String username, String password, String query) {
		Connection conn = null; 
		String arr="<table cellpadding=0 cellspacing=0 style=\"border-collapse:collapse\">";
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(url, username, password);
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(query);
			int count = rs.getMetaData().getColumnCount();
			arr+="<tr style=\"background-color:#B9D891;color:white;\">";
            for(int i=1;i<=count;i++){
            	arr+="<td>"+rs.getMetaData().getColumnLabel(i)+"</td>";
            }
            arr+="</tr>";
			while (rs.next()) {
	            arr+="<tr>";
				for (int i = 1; i <= count; i++) {
					arr +="<td>"+rs.getString(i) + "</td>";
		 
				}
				arr += "</tr>";

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return arr+"</table><br>";

		}
	}
 
	@SuppressWarnings("finally")
	public static String query(String url, String username, String password, String query,JSONArray counts) {
		Connection conn = null; 
		String arr="<table cellpadding=0 cellspacing=0 style=\"border-collapse:collapse\">";
		String counttext="<tr><td>"+counts.getString(0)+"</td>";
        List<Double> list=new ArrayList<Double>();
        
        for(int i=0;i<counts.length()-1;i++){
        	list.add(new Double(0));
        }
        
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(url, username, password);
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(query);
			int count = rs.getMetaData().getColumnCount();
			arr+="<tr style=\"background-color:#B9D891;color:white;\">";
            for(int i=1;i<=count;i++){
            	arr+="<td>"+rs.getMetaData().getColumnLabel(i)+"</td>";
            }
            arr+="</tr>";
			while (rs.next()) {
	            arr+="<tr>";
				for (int i = 1; i <= count; i++) {
					arr +="<td>"+rs.getString(i) + "</td>";
		            if(i>1&&counts.getBoolean(i-1))
		            	list.set(i-2,list.get(i-2)+rs.getDouble(i));
		           
				}
				arr += "</tr>";

			}
			NumberFormat formatter = new DecimalFormat("#0");
		 
		 for(int i=0;i<list.size();i++){
			 if(formatter.format(list.get(i)).equals("0"))
			 counttext+="<td></td>";
			 else
			 counttext+="<td>"+formatter.format(list.get(i))+"</td>";
		 }
		 counttext+="</tr>";
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return arr+counttext+"</table><br>";

		}
	}
}

