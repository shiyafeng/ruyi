package iform.dao;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class DataSourceDao {

	 @Autowired
	 private JdbcTemplate jdbcTemplate;
	 
	 public int getIDByName(String project){
		 return jdbcTemplate.queryForObject("select id from projectdef where code='"+project+"'",Integer.class);
		  
		}
		
	 
	public JSONObject get(int project){
		List<Map<String,Object>> list=jdbcTemplate.queryForList("select * from datasource where projectid="+project);
		JSONObject obj=new JSONObject();
		for(int i=0;i<list.size();i++){
			Map<String,Object> row=list.get(i);
			JSONObject childObj=new JSONObject();
			try {
				childObj.put("username", row.get("USERNAME").toString());
			    childObj.put("password", row.get("PASSWORD").toString());
			    childObj.put("url", row.get("URL").toString());
				obj.put(row.get("NAME").toString(), childObj);
			} catch (JSONException e) {
 				e.printStackTrace();
			}
		}
		 
		return obj ;
	}
	
	public void saveOrUpdate(int project,String data) {
 
		try {
			jdbcTemplate.update("delete from datasource where projectid="+project);
			JSONObject json=new JSONObject(data);
			Iterator<?> it=json.keys();
			while(it.hasNext()){
				String k=(String)it.next();
				String username=json.getJSONObject(k).getString("username");
				String password=json.getJSONObject(k).getString("password");
				String url=json.getJSONObject(k).getString("url");
				jdbcTemplate.update("insert into datasource(projectid,name,username,password,url) values(?,?,?,?,?)",
						new Object[]{project,k,username,password,url});
			}
			
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	 
		 
	 }
	
}
