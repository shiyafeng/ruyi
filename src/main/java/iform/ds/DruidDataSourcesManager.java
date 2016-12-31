package iform.ds;
 
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.DependsOn;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.alibaba.druid.pool.DruidDataSource;

 @Component
 @DependsOn("org.springframework.jdbc.datasource.init.DataSourceInitializer#0")
public class DruidDataSourcesManager {
  @Autowired
  private JdbcTemplate jdbcTemplate;
  public Map<Integer,Map<String,JdbcTemplate>> pool=new Hashtable<Integer,Map<String,JdbcTemplate>>();
  @PostConstruct
  public void init(){
       
	  new Thread(new Runnable(){

		@Override
		public void run() {  
			 List<Integer> projectid=jdbcTemplate.queryForList("select distinct projectid from datasource",Integer.class);
			 for(int i=0;i<projectid.size();i++){
				 Map<String,JdbcTemplate> map=new HashMap<String, JdbcTemplate>();
				 List<Map<String,Object>> list=jdbcTemplate.queryForList("select * from datasource where projectid="+projectid.get(i));
				 for(int j=0;j<list.size();j++){
					 String k=list.get(j).get("NAME").toString();
					 String username=list.get(j).get("USERNAME").toString();
					 String password=list.get(j).get("PASSWORD").toString();
					 String url=list.get(j).get("URL").toString();
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
		
					 map.put(k, new JdbcTemplate(ds));
				 }
				 
				 pool.put(projectid.get(i), map);
				}
				 
		}}).start();;
	 
			
 
  }
  
}
