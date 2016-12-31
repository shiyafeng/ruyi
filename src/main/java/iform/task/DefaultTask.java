package iform.task;

 
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
 
import org.json.JSONArray;
 
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.DependsOn;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.mongodb.BasicDBObject;
 
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;

import iform.tools.DateCommon;
import iform.tools.JDBCProxy;
import iform.tools.MailInfo;
import iform.tools.SimpleMail;

@Component
@DependsOn("org.springframework.jdbc.datasource.init.DataSourceInitializer#0")
public class DefaultTask {
  
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private SimpleDateFormat sdf=new SimpleDateFormat("HH:mm");
	private SimpleDateFormat sdf2=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private void invorkMail(List<Map<String,Object>> list){
		 for(int n=0;n<list.size();n++){
			 try {
				  String s=list.get(n).get("MOD").toString();
				  String sender=list.get(n).get("SENDER").toString();
				  String mailserver=list.get(n).get("MAILSERVER").toString();
				  String mailport=list.get(n).get("PORT").toString();
				  String receiver=list.get(n).get("RECEIVER").toString();
				  String title=list.get(n).get("TITLE").toString();
				  String text=list.get(n).get("TEXT").toString();
				  String copyer=list.get(n).get("COPYER").toString();
				  String pass=list.get(n).get("PASSWORD").toString();
			  
				  title=title.replaceAll("today", DateCommon.today("yyyyMMdd"));
				  text=text.replaceAll("today", DateCommon.today("MM月dd日"));
				  text=text.replaceAll("yesterday", DateCommon.yesterday("MM月dd日"));
				  String table="";
				  s=s.replaceAll("today ", DateCommon.today("yyyy-MM-dd")+" ");
				  s=s.replaceAll("yesterday ", DateCommon.yesterday("yyyy-MM-dd")+" ");
				JSONArray arr=new JSONArray(s);
				for(int i=0;i<arr.length();i++){
					String type=arr.getJSONObject(i).getString("type");
					if(type.toLowerCase().startsWith("rdb")){
						String url=arr.getJSONObject(i).getString("url");
						String username=arr.getJSONObject(i).getString("username");
						String password=arr.getJSONObject(i).getString("password");
						String query=arr.getJSONObject(i).getString("sql");
						if(arr.getJSONObject(i).has("count")) 
						table+=JDBCProxy.query(url, username, password, query,arr.getJSONObject(i).getJSONArray("count"));
						 else 
						table+=JDBCProxy.query(url, username, password, query);
						 
						
					}
					
					if(type.toLowerCase().startsWith("mongo")){
					 table+="<table cellpadding=0 cellspacing=0 style=\"border-collapse:collapse\">";
					JSONArray arr2	=arr.getJSONObject(i).getJSONArray("values");
					for(int j=0;j<arr2.length();j++){
					JSONArray arr3=arr2.getJSONArray(j);
					String ip="";
					String db="";
					String collection="";		
					int port=0;
					for(int k=0;k<arr3.length();k++){
						 if(arr3.get(k) instanceof String){
							if(k==0) table+="<tr style=\"background-color:#B9D891;color:white;\">";
							table+="<td>"+arr3.get(k)+"</td>";
							if(k==arr3.length()-1) table+="</tr>";
						 }else{
						    if(arr3.getJSONObject(k).has("value")){
						    	ip=arr3.getJSONObject(k).getString("ip");
						    	db=arr3.getJSONObject(k).getString("db");
						    	collection=arr3.getJSONObject(k).getString("collection");
						    	port=arr3.getJSONObject(k).getInt("port");
						    	table+="<tr><td>"+arr3.getJSONObject(k).getString("value")+"</td>";
						    }else if(arr3.getJSONObject(k).length()==0){
						    	Mongo m=new Mongo(ip, port);  
								DB d=m.getDB(db);  
								DBCollection  col = d.getCollection(collection);
								BasicDBObject obj= new BasicDBObject();
								table+="<td>"+col.count(obj)+"</td>";
								m.close();
							 
						    }else if(arr3.getJSONObject(k).length()==1){
						    	if(arr3.getJSONObject(k).has("fixdata")){
						    		long fixdata=arr3.getJSONObject(k).getLong("fixdata");
						    		Mongo m=new Mongo(ip, port);  
									DB d=m.getDB(db);  
									DBCollection  col = d.getCollection(collection);
									BasicDBObject obj= new BasicDBObject();
									long tmp=col.count(obj)+fixdata;
									table+="<td>"+tmp+"</td>";
									m.close();
						    	}else{
						    		Mongo m=new Mongo(ip, port);  
									DB d=m.getDB(db);  
									DBCollection  col = d.getCollection(collection);
									BasicDBObject obj= new BasicDBObject();
								 
							    	
							    	Iterator<?> it=arr3.getJSONObject(k).getJSONObject("bson").keys();
							    	while(it.hasNext()){
							    		String key=(String)it.next();
							    		if(arr3.getJSONObject(k).getJSONObject("bson").get(key) instanceof String){
							    		obj.append(key,arr3.getJSONObject(k).getJSONObject("bson").getString(key));	
							    		}else{
							    			BasicDBObject obj2= new BasicDBObject();
							    			JSONObject o=arr3.getJSONObject(k).getJSONObject("bson").getJSONObject(key);
							    			Iterator<?> it2=o.keys();
							    			while(it2.hasNext()){
							    				String key2=(String)it2.next();
							    				if(o.getString(key2).matches("^\\d{4}-\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}")){
							    				 obj2.append(key2,sdf2.parse(o.getString(key2)));
							    				}else
							    				obj2.append(key2, o.getString(key2));
							    			 
							    			}
							    			obj.append(key,obj2);	
							    		}
							    		
							    	}
							    	
							    	  table+="<td>"+col.count(obj)+"</td>";
									m.close();
						    	}
						    	
							 
						    }
						    else{
						    	long fixdata=arr3.getJSONObject(k).getLong("fixdata");
						    	Mongo m=new Mongo(ip, port);  
								DB d=m.getDB(db);  
								DBCollection  col = d.getCollection(collection);
								BasicDBObject obj= new BasicDBObject();
							 
						    	
						    	Iterator<?> it=arr3.getJSONObject(k).getJSONObject("bson").keys();
						    	while(it.hasNext()){
						    		String key=(String)it.next();
						    		if(arr3.getJSONObject(k).getJSONObject("bson").get(key) instanceof String ){
						    		obj.append(key,arr3.getJSONObject(k).getJSONObject("bson").getString(key));	
						    		}else{
						    			BasicDBObject obj2= new BasicDBObject();
						    			JSONObject o=arr3.getJSONObject(k).getJSONObject("bson").getJSONObject(key);
						    			Iterator<?> it2=o.keys();
						    			while(it2.hasNext()){
						    				String key2=(String)it2.next();
						    				if(o.getString(key2).matches("^\\d{4}-\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}"))
						    				 obj2.append(key2,sdf2.parse(o.getString(key2)));
						    				else
						    				obj2.append(key2, o.getString(key2));
						    			 
						    			}
						    			obj.append(key,obj2);	
						    		}
						    		System.out.println(obj);
						    	}
						    	  long tmp=col.count(obj)+fixdata;
						    	  table+="<td>"+tmp+"</td>";
								m.close();
						    }
						 
						 }
					}
					table+="</tr>";
					}
					
					
					String count="<tr>";
					if(arr.getJSONObject(i).has("count")){
						JSONArray arrcount=arr.getJSONObject(i).getJSONArray("count");
						count+=arrcount.getString(0)+" ";
						for(int y=1;y<arrcount.length();y++){
							if(arrcount.getBoolean(y)){
								String[] tmp1=table.split("\n");
								long c=0;
								for(int yy=1;yy<tmp1.length;yy++){
									String[] tmp2=tmp1[yy].split(" ");
								    for(int yyy=1;yyy<tmp2.length;yyy++)
								    	if(y==yyy) c+=Long.parseLong(tmp2[yyy]);
								} 
								count+="<td>"+c+"</td>";
							}else count+="<td></td>";
							
						}
						
					 }
					table+=count+"</tr></table>";
					
					}
				
				}
				
						
				 MailInfo mailInfo = new MailInfo();  
			        mailInfo.setMailServerHost(mailserver);   
			        mailInfo.setValidate(true);  
			        mailInfo.setMailServerPort(mailport);
			        mailInfo.setUsername(sender);  
			        mailInfo.setPassword(pass);
			        mailInfo.setFromAddress(sender);  
			        mailInfo.setToAddress(receiver.split(","));  
			        mailInfo.setCcAddress(copyer.split(","));
			        mailInfo.setSubject(title);  
			          
			     
			        StringBuffer demo = new StringBuffer();  
			        demo.append("<!DOCTYPE html><html><head>")  
			        .append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">") 
			        .append("<style type=\"text/css\">")  
			        .append("table tr{background-color:#F7FBF3;}")  
			        .append(" table td{border:solid 1px white; font-size:13px;padding:5px; }")  
			        .append("</style>")  
			        .append("</head>")  
			        .append("<body>")  
			        .append(text)  
			        .append(table)
			        .append("</body>")  
			        .append("</html>");  
			        mailInfo.setContent(demo.toString());  
			        SimpleMail.sendHtmlMail(mailInfo); 
				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			 
		 }
	}
	
	@Scheduled(cron = "0 * * * * ?")  
	public void exec(){
	List<Map<String,Object>> list=jdbcTemplate.queryForList("SELECT ID,SENDER,MAILSERVER,PORT,RECEIVER,COPYER,PASSWORD,TTS,TITLE,TEXT,from_base64(MOD) MOD from dailymail where tts='"+sdf.format(new Date())+"'");
    if(list.size()>0){
      invorkMail(list);	
    }
	}
}
