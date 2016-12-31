package iform.controller;

import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import iform.dao.PageResolveDao;
import iform.tools.Cypto;
import iform.tools.SingleHttpClient;

@Controller
public class IFormDispatcherController {
	@Autowired
	private PageResolveDao pageResolveDao;

	@RequestMapping(value = "/upload")
	@ResponseBody
	public String upload(MultipartFile upfile) throws Exception {

		String path = ContextLoader.getCurrentWebApplicationContext().getServletContext()
				.getRealPath("/resources/uploadimg");
		String[] fileSplitWithDot = upfile.getOriginalFilename().split("\\.");
		String ext = System.currentTimeMillis() + "." + fileSplitWithDot[fileSplitWithDot.length - 1];
		upfile.transferTo(new File(path, ext));
		return ext;
	}

	@RequestMapping(value = "/uploadWithVarible/{imgid}")
	@ResponseBody
	public String uploadWithVarible(HttpServletRequest request, @PathVariable("imgid") String file) throws Exception {
		MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest) request;

		MultipartFile f = mRequest.getFile(file);
		String path = ContextLoader.getCurrentWebApplicationContext().getServletContext()
				.getRealPath("/resources/uploadimg");
		String[] fileSplitWithDot = f.getOriginalFilename().split("\\.");
		String ext = System.currentTimeMillis() + "." + fileSplitWithDot[fileSplitWithDot.length - 1];
		f.transferTo(new File(path, ext));

		return ext;
	}

	@RequestMapping("iform")
	public String toFormPage() {

		return "form";
	}
	
	@RequestMapping("/cyptoToken/{project}")
	@ResponseBody
	public String cyptoToken(@PathVariable("project") Integer project) {
	    String token =pageResolveDao.getToken(project); 
		return new Cypto().strEnc(System.currentTimeMillis()/60000+"",token, null, null);
	}
	

	@RequestMapping("/public/{project}/{path}/{ver}")
	public String path(@PathVariable("project") String project, @PathVariable("path") String path,@PathVariable("ver") int ver, Model mod) {
		
		mod.addAttribute("json", pageResolveDao.getFormDef(project, path,ver));
		return "pageResolve";
	}

	@RequestMapping("/public/{project}/{path}")
	public String path(@PathVariable("project") String project, @PathVariable("path") String path,Model mod) {
		mod.addAttribute("json", pageResolveDao.getFormDef(project, path));
		return "pageResolve";
	}
	
	@RequestMapping("/load")
	@ResponseBody
	public String load(int pid, int projectid, int ver) {
		return pageResolveDao.load(pid, projectid, ver);

	}

	@RequestMapping("save")
	@ResponseBody
	public boolean save(int project, int pid, String path, String json) {

		return pageResolveDao.save(project, pid, path, json);
	}

	@RequestMapping("update")
	@ResponseBody
	public boolean update(int project, int pid, int ver, String json) {
       return pageResolveDao.update(project, pid, ver, json);
	}
	
	@RequestMapping("created")
	@ResponseBody
	public boolean created(int pid, int project) {

		return pageResolveDao.created(pid, project);
	}
	
	@RequestMapping("createdName")
	@ResponseBody
	public boolean createdName(String path, int project) {

		return pageResolveDao.createdName(path, project);
	}
	
	@RequestMapping("getMaxPID")
	@ResponseBody
	public int getMaxPID(int projectid) {
		return pageResolveDao.getMaxPID(projectid)+1;
	}

	@RequestMapping("getPath")
	@ResponseBody
	public String getPath(int pid, int project) {
		return pageResolveDao.getPath(pid, project);
	}
	
	@RequestMapping("getToken")
	@ResponseBody
	public String getToken(int project) {
		return pageResolveDao.getToken(project);
	}
	
	@RequestMapping("getTokenByName")
	@ResponseBody
	public String getTokenByName(String projectname) {
		return pageResolveDao.getTokenByName(projectname);
	}
	
	@RequestMapping("delPage")
	@ResponseBody
	public void delPage(int pid,int project,int ver) {
		pageResolveDao.delPage(pid, project,ver);
	}
	
	@RequestMapping("openContent")
	@ResponseBody
	public List<Map<String,Object>> openContent(int project) {
		return pageResolveDao.openContent(project);
	}
	
	@RequestMapping("obtainHttpMsg")
	@ResponseBody
	public String obtainHttpMsg(String httpmethod, String valueType, String httpURL, String msg) throws Exception {

		HttpClient client = SingleHttpClient.getInstance();
		String body = "";

		if (httpmethod.equals("post")) {
			HttpPost httppost = new HttpPost(httpURL);
			if (valueType.equals("kv")) {
				JSONObject json = new JSONObject(msg);
				List<NameValuePair> params = new ArrayList<NameValuePair>();
				Iterator<?> it = json.keys();
				while (it.hasNext()) {
					String k = (String) it.next();
					params.add(new BasicNameValuePair(k, json.getString(k)));
				}
				UrlEncodedFormEntity uefEntity = new UrlEncodedFormEntity(params, "UTF-8");

				httppost.setEntity(uefEntity);
				HttpResponse httpresponse = client.execute(httppost);
				HttpEntity entity = httpresponse.getEntity();
				body = EntityUtils.toString(entity);
				EntityUtils.consume(entity);
			} else {
				StringEntity str = new StringEntity(msg, "UTF-8");
				httppost.setEntity(str);
				HttpResponse httpresponse = client.execute(httppost);
				HttpEntity entity = httpresponse.getEntity();
				body = EntityUtils.toString(entity);
				EntityUtils.consume(entity);
			}
		} else {
			HttpGet httpget = new HttpGet(httpURL);
			List<NameValuePair> params = new ArrayList<NameValuePair>();
			JSONObject json = new JSONObject(msg);
			Iterator<?> it = json.keys();
			while (it.hasNext()) {
				String k = (String) it.next();
				params.add(new BasicNameValuePair(k, json.getString(k)));
			}
			String str = EntityUtils.toString(new UrlEncodedFormEntity(params));
			httpget.setURI(new URI(httpget.getURI().toString() + "?" + str));
			HttpResponse httpresponse = client.execute(httpget);
			HttpEntity entity = httpresponse.getEntity();
			body = EntityUtils.toString(entity);
			EntityUtils.consume(entity);
		}

		return body;

	}

	@RequestMapping("getPageCodeAndName")
	@ResponseBody
	public Map<String, Object> getPageCodeAndName(int project) {

		return pageResolveDao.getPageCodeAndName(project);
	}
}
