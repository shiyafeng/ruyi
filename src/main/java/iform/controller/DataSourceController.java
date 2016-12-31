package iform.controller;

  
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.druid.pool.DruidDataSource;
  
import iform.dao.DataSourceDao;
import iform.ds.DruidDataSourcesManager;
 
@Controller
@RequestMapping("ds")
public class DataSourceController {
    @Autowired
	private DruidDataSourcesManager manager;
    @Autowired
   	private DataSourceDao dataSourceDao;
   
    @RequestMapping("keyValue")
    @ResponseBody
    public List<Map<String,Object>> keyValue(String projectname,String ds,String sql){
    	return manager.pool.get(dataSourceDao.getIDByName(projectname)).get(ds).queryForList(sql);
   
    }
    
    
    
    
    @RequestMapping("singleValue")
    @ResponseBody
    public String singleValue(String projectname,String ds,String sql){
    
    	List<Map<String,Object>> list=manager.pool.get(dataSourceDao.getIDByName(projectname)).get(ds).queryForList(sql);
    	 if(list.size()==0){
    		 return "";
    	 }else{
    		Iterator<?> it= list.get(0).keySet().iterator();
    	    String k=(String)it.next();
    	    return list.get(0).get(k).toString();
    	 }
    	
    	
    }
    
    @RequestMapping("multValue")
    @ResponseBody
    public List<Map<String,Object>> multValue(String projectname,String ds,String sql){
     	return  manager.pool.get(dataSourceDao.getIDByName(projectname)).get(ds).queryForList(sql);
  
    }
     
    
    @RequestMapping("execDML")
    @ResponseBody
    public int execDML(String projectname,String ds,String sql){
      return manager.pool.get(dataSourceDao.getIDByName(projectname)).get(ds).update(sql);
     }
    
	@RequestMapping("saveOrUpdate")
     @ResponseBody
     public void saveOrUpdate(int project,String data) throws JSONException{
    	 dataSourceDao.saveOrUpdate(project,data);
    	  JSONObject json=new JSONObject(data);
 			Iterator<?> it=json.keys();
 			HashMap<String ,JdbcTemplate> map=new HashMap<String, JdbcTemplate>();
 			manager.pool.remove(project);
 			while(it.hasNext()){
 				String k=(String)it.next();
 				String username=json.getJSONObject(k).getString("username");
 				String password=json.getJSONObject(k).getString("password");
 				String url=json.getJSONObject(k).getString("url");
 				DruidDataSource ds=new DruidDataSource();
 				ds.setUsername(username);
 				ds.setUrl(url);
 				ds.setPassword(password);
 				ds.setInitialSize(5);
 				ds.setMaxActive(200);
 				ds.setTimeBetweenEvictionRunsMillis(60000);
 				ds.setMinEvictableIdleTimeMillis(300000);
 			 
 				if(url.contains("oracle"))
 	 				ds.setValidationQuery("select 1 from dual");
 				else if(url.contains("db2"))
	 				ds.setValidationQuery("select 1 from sysibm.sysdummy1");
 				else if(url.contains("postgresql"))
 				    ds.setValidationQuery("select version()");
 				else
 					ds.setValidationQuery("select 1");
 				ds.setTestWhileIdle(true);
 				ds.setTestOnBorrow(false);
 				ds.setTestOnReturn(false);
 				ds.setMaxOpenPreparedStatements(-1);
 				ds.setRemoveAbandoned(true);
 				ds.setRemoveAbandonedTimeout(1800);
 				ds.setLogAbandoned(true);
 				
 				map.put(k,new JdbcTemplate(ds));
 			}
 			manager.pool.put(project, map);
    		 
    	 
     }
    
     @RequestMapping("get")
     @ResponseBody
     public String get(int project){
    	return  dataSourceDao.get(project).toString();
     }
   
	
	
}
