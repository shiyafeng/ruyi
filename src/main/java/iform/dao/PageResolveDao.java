package iform.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class PageResolveDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public Map<String, Object> getPageCodeAndName(int project) {
		return jdbcTemplate.queryForMap("select * from projectdef where id=" + project);

	}
	 
	public List<Map<String, Object>> openContent(int project) {
		return jdbcTemplate.queryForList("SELECT pid,path,version,created FROM FORMDEF where projectid=" + project);

	}
	
	public String getToken(int project) {
		return jdbcTemplate.queryForObject("select token from projectdef where id=" + project,String.class);

	}
	
	public String getTokenByName(String projectname) {
		return jdbcTemplate.queryForObject("select token from projectdef where code='" + projectname+"'",String.class);

	}
	
	
	public void delPage(int pid,int project,int ver) {
	   jdbcTemplate.update("delete from FORMDEF where version="+ver+" and pid="+pid+" and projectid=" + project);

	}
	
	public boolean created(int pid, int project) {
		int c = jdbcTemplate.queryForObject(
				"select count(*) from formdef where projectid=" + project + " and pid=" + pid, Integer.class);
		return c > 0 ? true : false;
	}
	
	public boolean createdName(String path, int project) {
		int c = jdbcTemplate.queryForObject(
				"select count(*) from formdef where projectid=" + project + " and path='" + path+"'", Integer.class);
		return c > 0 ? true : false;
	}
	
	public String getPath(int pid, int project) {
		List<Map<String, Object>> list = jdbcTemplate
				.queryForList("select path from formdef where projectid=" + project + " and pid=" + pid);
		String parent = jdbcTemplate.queryForObject("SELECT code FROM PROJECTDEF where id=" + project, String.class);
		if (list.size() == 0)
			return "";
		else
			return "/public/" + parent + "/" + list.get(0).get("path").toString();

	}

	public String load(int pid, int projectid, int ver) {

		return jdbcTemplate.queryForObject(
				"select json from formdef where  projectid=" + projectid + "  and version=" + ver + " and pid=" + pid,
				String.class);

	}
	
	public int getMaxPID(int projectid) {
     try{
		 int m= jdbcTemplate.queryForObject(
				"select max(pid) from formdef where  projectid=" + projectid,
				Integer.class);
		 return m;
     }catch(Exception e){
    	 return 0;
     }
	}

	public String getFormDef(String project, String path) {
		int v = jdbcTemplate
				.queryForObject("select max(version) from projectdef,formdef where  projectid= projectdef.id and code='"
						+ project + "' and path='" + path + "'", Integer.class);

		return jdbcTemplate
				.queryForObject("select json from projectdef,formdef where  projectid= projectdef.id and version=" + v
						+ " and code='" + project + "' and path='" + path + "'", String.class);

	}

	
	public String getFormDef(String project, String path,int ver) {
		 

		return jdbcTemplate
				.queryForObject("select json from projectdef,formdef where  projectid= projectdef.id and version=" + ver
						+ " and code='" + project + "'   and path='" + path + "'", String.class);

	}

	public boolean update(int project, int pid, int ver, String json) {
	    jdbcTemplate.update("update formdef set json='" + json + "',created=now() where projectid="+project+" and version="+ver+" and pid="+pid);
		return true;
	}
	
	public boolean save(int project, int pid, String path, String json) {
		if (path == null) {
			int v = jdbcTemplate.queryForObject(
					"select max(version) from formdef where pid=" + pid + " and projectid=" + project, Integer.class);
			v++;
			path = jdbcTemplate.queryForObject(
					"select path from formdef where pid=" + pid + " and projectid=" + project + " limit 1",
					String.class);
			jdbcTemplate.update("insert into formdef(pid,projectid,path,version,json,created) values(" + pid + "," + project
					+ ",'" + path + "'," + v + ",'" + json + "',now())");
		} else
			jdbcTemplate.update("insert into formdef(pid,projectid,path,version,json,created) values(" + pid + "," + project
					+ ",'" + path + "',1,'" + json + "',now())");
		return true;
	}
}
