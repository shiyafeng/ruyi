<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>如意-在线表单设计器</title>
<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/favicon.ico"/>
<script src="<%=request.getContextPath()%>/resources/echarts.common.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jquery-1.11.0.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jquery-ui.min.js"></script>
<link rel="stylesheet"   type="text/css" href="<%=request.getContextPath()%>/resources/colorpicker/css/colorpicker.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/colorpicker/js/colorpicker.js"></script>
<link href="<%=request.getContextPath()%>/resources/jquery-ui.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/easydropdown/themes/easydropdown.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/easydropdown/jquery.easydropdown.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/nicescroll/jquery.nicescroll.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/ajaxfileupload.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/My97DatePicker/WdatePicker.js"></script>

<link href="<%=request.getContextPath()%>/resources/form.css" rel="stylesheet" type="text/css" />

<link href="<%=request.getContextPath()%>/resources/umeditor/umeditor.min.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/umeditor/umeditor.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/umeditor/umeditor.config.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/umeditor/zh-cn.js"></script>


<script>
var context="<%=request.getContextPath()%>";
var pid="<%=request.getParameter("pid")%>";
var projectid="<%=request.getParameter("project")%>";
var ver="<%=request.getParameter("ver")%>";
//页面id
</script>
</head>
<body bgcolor="black" oncontextmenu="return false">
 
 <div class="topbanner">
  <div class="form_logo">
  </div>
  <div class="reqaddr">
 
  </div>
 <div style="position:absolute;top:0px;left:110px;height:65px;width:900px ">
   <div class="title_open_img"></div>
    <div class="title_open">打开</div>
    
       <div class="title_save_img"></div>
        <div class="title_save">保存</div>
        
               <div class="title_osave_img"></div>
                  <div class="title_osave">新版本</div>
                  
      <div class="title_interrupt" style="left:145px"></div>
 
                     <div class="title_page_img"></div>
                             <div class="title_page">页面</div>
                                <div class="title_form_img"></div>
                                <div class="title_form">表单</div>
                                <div class="title_table_img"></div>
                                <div class="title_table">衬托</div>
                                 
                               
                                <div class="title_font_img"></div>
                                <div class="title_font">文字</div>
                                <div class="title_img_img"></div>
                                <div class="title_img">图片</div>
                                <div class="title_tip_img"></div>
                                <div class="title_tip">提示</div>
                              
                                <div class="title_interrupt" style="left:432px;"></div>
                                <div class="title_data_img"></div>
                                <div class="title_data">数据源</div> 
                                <div class="title_event_img"></div>
                                <div class="title_event">教程</div>    
                               </div>   
      
 </div>
 
<div class="main_wrap">
<div class="main">



</div>
 </div>

 
 
 <div class="right_menu2">
 <div class="right_menu_child">
删除
 </div>
 </div>
 
 <div class="right_menu">
 <div class="right_menu_child">
 事件
 </div>
 
 
 </div>
 
  
 <div class="css" >
  <div class="css_head">
 <div style="padding-top:2px;float:left;">样式</div>
 
 </div>
   <div class="css_row">
<div style="float:left;">边框宽度</div> <input type="text" maxlength=1 class="border_width" onkeyup="setWidth()"/>

<div style="float:left;">&nbsp;&nbsp;&nbsp;边框颜色&nbsp;</div> <input type="text"  class="border_color"/>
 </div>
   <div class="css_row">
 <div style="float:left;">文字大小</div> <input type="text" maxlength=2 class="border_width" onkeyup="setSize()"/>

 <div style="float:left;">&nbsp;&nbsp;&nbsp;文字颜色&nbsp; </div><input type="text" class="border_color"/>
 </div>
    <div class="css_row">
 <div style="float:left;">背景色 </div><input type="text" class="border_color" /><div style="float:left;">&nbsp;&nbsp;字体</div>
 <div style="float:left;height:20px;width:100px; ">
 <select id="fonts"    >
 <option value="0">微软雅黑</option>
 <option value="1">宋体</option>
 <option value="2">仿宋体</option>
 <option value="3">新宋体</option>
 <option value="4">楷体</option>
 <option value="5">Arial</option>
 <option value="6">Verdana</option>
 <option value="7">Georgia</option>
 <option value="8">Courier New</option>  
 <option value="9">Garamond</option>  
 <option value="10">Tahoma</option>      
 <option value="11">Century</option>      
     
 </select>
 </div>
 
 </div>
   <div class="css_row">
 <div style="float:left;">背景图片</div> <span class="bgsetting" ></span>
 <form method="post" enctype="multipart/form-data" style="position:absolute;top:124px;left:65px;  ">  
<input type="file" name="upfile" id="upfile">  
 
</form>
 <div style="float:left;width:50px;text-align:right">左边距 </div><input type="text" maxlength="2"  value="6" class="border_width"/>
 </div>
 </div>
 
 
 
  <div class="valid" >
  <div class="valid_head">
 <div style="padding-top:2px;float:left;">输入校验 <div class="preshow">预览</div></div>
 </div>
 
 <div id="right_content_modal" style=" z-index:1;position:absolute;width:278px;background-color:black;opacity:0.4;filter:alpha(opacity=40); ">
   
   </div>
 
 <div id="right_content" style=" width:278px;position:relative;overflow-x:hidden;overflow-y:scroll; ">
   
<div style="position:absolute;top:6px;left:20px;color:#a2a2a2;font-size:13px;background-color:#232323;">提示语</div>
 <div style="border:solid 1px #3D3D3D;margin-top:16px;margin-left:10px;width:250px;height:82px;">
 <textarea   class="tipcontent">提示文字</textarea>
 </div>
  <div class="trigger_text">提示框</div>
 <div class="trigger_type">
  <div class="radio_item radio_item_click" ></div><div style="float:left;height:15px;line-height:15px;font-size:13px;color:#a2a2a2;padding-left:5px;">开启</div>
  <div class="radio_item" style="margin-left:15px;"></div><div style="float:left;height:15px;line-height:15px;font-size:13px;color:#a2a2a2;padding-left:5px;">关闭</div>
 </div>
   <div class="tip_position_text">提示框位置</div>
 <div class="tip_position">
   <div class="radio_item radio_item_click" ></div><div style="float:left;height:15px;line-height:15px;font-size:13px;color:#a2a2a2;padding-left:5px;">位于表单右侧</div>
  <div class="radio_item" style="margin-left:15px;"></div><div style="float:left;height:15px;line-height:15px;font-size:13px;color:#a2a2a2;padding-left:5px;">位于表单下方</div>
 </div>
    <div class="rule_text">校验</div>
  <div class="rule_div">
  <div class="radio_item radio_item_click" ></div><div style="float:left;height:15px;line-height:15px;font-size:13px;color:#a2a2a2;padding-left:5px;">常用规则</div>
 
   <div style=" position:absolute;top:230px;left:100px;height:20px;width:130px; ">
   <select id="rules"    >
 <option value="0">不校验</option>
 <option value="1">email</option>
 <option value="2">IP地址</option>
 <option value="3">手机号</option>
 <option value="4">非空字段</option>
 <option value="5">整数</option>
 <option value="6">小数</option>
 <option value="7">字母数字下划线</option>
 </select></div>  
 <div class="radio_item"  style="position:absolute;top:260px;left:21px;"></div>
  <div  style="position:absolute;top:258px;left:41px;color:#a2a2a2;font-size:13px;">自定义规则(正则)</div>
  <input type="text" class="myrule"/>
    <input type="button" class="valid_test" value="测试" />
       <input type="button" value="数据库校验" class="valid_button" style="position:absolute;top:312px;left:21px;margin-left:0px;width:100px;" >
 
  </div>
  <script>
  $(".right_menu>.right_menu_child").click(function(){
	  $(".scratch_editor").html("");
	  
	  if(sid.indexOf("ueditor_")!=-1){ 
		  $("#ueditor_init .kv_panel").empty();  
		  $("#ueditor_init .kv_panel").html('<div style="height:18px;width:390px; background-color:#A2A2A2; "><div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  ">键</div><div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;">值</div></div>');  
		  
		  $("#ueditor_init .text_static_data:eq(0)").val("");
		  $("#ueditor_init .text_static_data:eq(1)").val("");
		  $("#ueditor_init .text_static_data:eq(2)").val("");
		  $("#ueditor_init .event_ds").easyDropDown("select",0); 
		  $("#ueditor_init .text_static_data:eq(3)").val("");
		  $("#ueditor_init .schema_ds").easyDropDown("select",0);
		  $("#ueditor_init .text_static_data:last").val(""); 
		  $("#ueditor_init .text_static_data:eq(0)").val(elements[sid].event.init.initValue); 
		  $("#ueditor_init .text_static_data:eq(1)").val(elements[sid].event.init.sql); 
		  if(elements[sid].event.init.ds)
	      $("#ueditor_init .event_ds").easyDropDown("select",elements[sid].event.init.ds);
	 	  $("#ueditor_init .text_static_data:eq(2)").val(elements[sid].event.init.httpURL);
	 	  if(elements[sid].event.init.httpmethod)
	      $("#ueditor_init .schema_ds").easyDropDown("select",elements[sid].event.init.httpmethod);
		  $("#ueditor_init .text_static_data:last").val(elements[sid].event.init.httpReturn);
	 
			if(elements[sid].event.init.valueType=="value"){
				$("#ueditor_init .typeofmsg .radio_item:last").click();
				$("#ueditor_init .text_static_data:eq(3)").val(elements[sid].event.init.value);
			}else{
				$("#ueditor_init .typeofmsg .radio_item:first").click();
				for(var k in elements[sid].event.init.kvPair){
 			var o=$('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input" value="'+k+'"></div><div class="v_column"><input type="text" value="" class="v_input"></div></div>');
            $("#ueditor_init .kv_panel").append(o);
			o.find(".v_input").val(elements[sid].event.init.kvPair[k]);		
				}
			}
 
		  $(".ueditor_event_panel").slideDown("fast");
	  }
	 
	  if(sid.indexOf("time_")!=-1){
		  $("#time_init .kv_panel").empty();  
		  $("#time_init .kv_panel").html('<div style="height:18px;width:390px; background-color:#A2A2A2; "> <div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  ">键</div><div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;"> 值</div></div>');
		  
		  $("#time_init .text_static_data:eq(0)").val("");
		  $("#time_init .text_static_data:eq(1)").val("");
		  $("#time_init .text_static_data:eq(2)").val("");
		  $("#time_init .event_ds").easyDropDown("select",0); 
		  $("#time_init .text_static_data:eq(3)").val("");
		  $("#time_init .schema_ds").easyDropDown("select",0);
		  $("#time_init .text_static_data:last").val("");
		  $("#time_init .time_radio .radio_item").removeClass("radio_item_click");
		 if(!elements[sid].event.init.isNow)
			 $("#time_init .time_radio .radio_item:first").addClass("radio_item_click");
		  else 
			 $("#time_init .time_radio .radio_item:last").addClass("radio_item_click");
		  
		  
		  $("#time_init .text_static_data:eq(0)").val(elements[sid].event.init.fmt);
	 
		  $("#time_init .text_static_data:eq(1)").val(elements[sid].event.init.sql); 
		  if(elements[sid].event.init.ds)
	      $("#time_init .event_ds").easyDropDown("select",elements[sid].event.init.ds);
	 	  $("#time_init .text_static_data:eq(2)").val(elements[sid].event.init.httpURL);
	 	  if(elements[sid].event.init.httpmethod)
	      $("#time_init .schema_ds").easyDropDown("select",elements[sid].event.init.httpmethod);
	     
		  $("#time_init .text_static_data:last").val(elements[sid].event.init.httpReturn);
			 
			if(elements[sid].event.init.valueType=="value"){
				$("#time_init .typeofmsg .radio_item:last").click();
				$("#time_init .text_static_data:eq(3)").val(elements[sid].event.init.value);
			}else{
				$("#time_init .typeofmsg .radio_item:first").click();
				for(var k in elements[sid].event.init.kvPair){
 			var o=$('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input" value="'+k+'"></div><div class="v_column"><input type="text" value="" class="v_input"></div></div>');
            $("#time_init .kv_panel").append(o);
			o.find(".v_input").val(elements[sid].event.init.kvPair[k]);		
				}
			}
 
		  
		  
		  $(".time_event_panel").slideDown("fast");
	  }
	  if(sid.indexOf("button_")!=-1){
		  if(elements[sid].event.click.script){
				 
				 loadFromFela(elements[sid].event.click.script,"#button_click");
			 
			 }
		  $(".button_event_panel").slideDown("fast");
	  }
	  if(sid.indexOf("img_")!=-1){
		  if(elements[sid].event.click.script)   loadFromFela(elements[sid].event.click.script,"#img_click");
			 
		  $(".img_event_panel").slideDown("fast");
	  }
	  if(sid.indexOf("checkbox_")!=-1){
		  
		  $(".checkbox_event_panel .event_item:first").click();
		  if(elements[sid].event.click.script) 
				 loadFromFela(elements[sid].event.click.script,"#checkbox_click");
			  
	   
		  $("#checkbox_init2 .kv_panel2").empty();
		  $("#checkbox_init2 .kv_panel2").html('<div style="height:18px;width:390px; background-color:#A2A2A2; "><div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  ">内容</div><div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;">  值</div></div>');
		  $("#checkbox_sqlselect").val("");
		  $("#checkbox_init .text_static_data:eq(0)").val("");
		  $("#checkbox_init .text_static_data:eq(1)").val(""); 
		  $("#checkbox_init .event_ds").easyDropDown("select",0);
		  $("#checkbox_init2 .event_ds").easyDropDown("select",0); 
		  $("#checkbox_init .schema_ds").easyDropDown("select",0); 
		  $("#checkbox_init .text_static_data:eq(0)").val(elements[sid].event.init.initValue); 
		  $("#checkbox_init .text_static_data:eq(1)").val(elements[sid].event.init.sql); 
		  if(elements[sid].event.init.ds)
	      $("#checkbox_init .event_ds").easyDropDown("select",elements[sid].event.init.ds); 
			for(var k in elements[sid].event.init2.kvPair) 
			 $("#checkbox_init2 .kv_panel2").append('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input" value="'+k+'"></div><div class="v_column"><input type="text" value="'+elements[sid].event.init2.kvPair[k]+'" class="v_input"></div></div>');
			 	 
			  $("#checkbox_sqlselect").val(elements[sid].event.init2.sql); 
			  if(elements[sid].event.init2.ds)
		      $("#checkbox_init2 .event_ds").easyDropDown("select",elements[sid].event.init2.ds);
 
		  $(".checkbox_event_panel").slideDown("fast");
	  }
	  
	  if(sid.indexOf("radio_")!=-1){
		  $(".radio_event_panel .event_item:first").click();
		  if(elements[sid].event.click.script){
				 
				 loadFromFela(elements[sid].event.click.script,"#radio_click");
			 
			 }
		  $("#radio_init .kv_panel").empty();
		  $("#radio_init .kv_panel").html('<div style="height:18px;width:390px; background-color:#A2A2A2; "><div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  ">键</div><div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;"> 值</div></div>');
		  
		  $("#radio_init2 .kv_panel2").empty();
		  $("#radio_init2 .kv_panel2").html('<div style="height:18px;width:390px; background-color:#A2A2A2; "><div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  ">内容</div><div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;"> 值</div></div>');
		  
		  
		  $("#radio_sqlselect").val("");
		  $("#radio_init .text_static_data:eq(0)").val("");
		  $("#radio_init .text_static_data:eq(1)").val("");
		  $("#radio_init .text_static_data:eq(2)").val("");
		  $("#radio_init .event_ds").easyDropDown("select",0);
		  $("#radio_init2 .event_ds").easyDropDown("select",0);
		  $("#radio_init .text_static_data:eq(3)").val("");
		  $("#radio_init .schema_ds").easyDropDown("select",0);
		  $("#radio_init .text_static_data:last").val("");
		  $("#radio_init .text_static_data:eq(4)").val("");
		  
		  $("#radio_init .text_static_data:eq(0)").val(elements[sid].event.init.initValue);
		  $("#radio_init .text_static_data:eq(1)").val(elements[sid].event.init.fromURL);
		  $("#radio_init .text_static_data:eq(2)").val(elements[sid].event.init.sql); 
		  if(elements[sid].event.init.ds)
	      $("#radio_init .event_ds").easyDropDown("select",elements[sid].event.init.ds);
	 	  $("#radio_init .text_static_data:eq(3)").val(elements[sid].event.init.httpURL);
	 	  if(elements[sid].event.init.httpmethod)
	      $("#radio_init .schema_ds").easyDropDown("select",elements[sid].event.init.httpmethod);
	     
		  $("#radio_init .text_static_data:last").val(elements[sid].event.init.httpReturn);
		 
			if(elements[sid].event.init.valueType=="value"){
				$("#radio_init .typeofmsg .radio_item:last").click();
				$("#radio_init .text_static_data:eq(4)").val(elements[sid].event.init.value);
			}else{
				$("#radio_init .typeofmsg .radio_item:first").click();
				for(var k in elements[sid].event.init.kvPair){
 			var o=$('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input" value="'+k+'"></div><div class="v_column"><input type="text" value="" class="v_input"></div></div>');
            $("#radio_init .kv_panel").append(o);
			o.find(".v_input").val(elements[sid].event.init.kvPair[k]);	
				}
			}

			for(var k in elements[sid].event.init2.kvPair){
			 
		 	 $("#radio_init2 .kv_panel2").append('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input" value="'+k+'"></div><div class="v_column"><input type="text" value="'+elements[sid].event.init2.kvPair[k]+'" class="v_input"></div></div>');
							
					}
			  
			  $("#radio_sqlselect").val(elements[sid].event.init2.sql); 
			  if(elements[sid].event.init2.ds)
		      $("#radio_init2 .event_ds").easyDropDown("select",elements[sid].event.init2.ds);

		  $(".radio_event_panel").slideDown("fast");
	  }
	  
	  if(sid.indexOf("select_")!=-1){
		  $(".select_event_panel .event_item:first").click();
		  if(elements[sid].event.change.script){
				 
				 loadFromFela(elements[sid].event.change.script,"#select_change");
			 
			 }
		  $("#select_init .kv_panel").empty(); 
		  $("#select_init .kv_panel").html('<div style="height:18px;width:390px; background-color:#A2A2A2; "><div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  "> 键</div> <div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;">值</div></div>');
	 
	      $("#select_init2 .kv_panel2").empty(); 
	      $("#select_init2 .kv_panel2").html('<div style="height:18px;width:390px; background-color:#A2A2A2; "><div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  ">内容</div><div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;">值</div></div>');
	    
		  $("#sqlselect").val("");
		  $("#select_init .text_static_data:eq(0)").val("");
		  $("#select_init .text_static_data:eq(1)").val("");
		  $("#select_init .text_static_data:eq(2)").val("");
		  $("#select_init .event_ds").easyDropDown("select",0);
		  $("#select_init2 .event_ds").easyDropDown("select",0);
		  $("#select_init .text_static_data:eq(3)").val("");
		  $("#select_init .schema_ds").easyDropDown("select",0);
		  $("#select_init .text_static_data:last").val("");
		  $("#select_init .text_static_data:eq(4)").val("");
		  
		  $("#select_init .text_static_data:eq(0)").val(elements[sid].event.init.initValue);
		  $("#select_init .text_static_data:eq(1)").val(elements[sid].event.init.fromURL);
		  $("#select_init .text_static_data:eq(2)").val(elements[sid].event.init.sql); 
		  if(elements[sid].event.init.ds)
	      $("#select_init .event_ds").easyDropDown("select",elements[sid].event.init.ds);
	 	  $("#select_init .text_static_data:eq(3)").val(elements[sid].event.init.httpURL);
	 	  if(elements[sid].event.init.httpmethod)
	      $("#select_init .schema_ds").easyDropDown("select",elements[sid].event.init.httpmethod);
	     
		  $("#select_init .text_static_data:last").val(elements[sid].event.init.httpReturn);
			 
			if(elements[sid].event.init.valueType=="value"){
				$("#select_init .typeofmsg .radio_item:last").click();
				$("#select_init .text_static_data:eq(4)").val(elements[sid].event.init.value);
			}else{
				$("#select_init .typeofmsg .radio_item:first").click();
				for(var k in elements[sid].event.init.kvPair){
 			var o=$('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input" value="'+k+'"></div><div class="v_column"><input type="text" value="" class="v_input"></div></div>');
            $("#select_init .kv_panel").append(o);
			o.find(".v_input").val(elements[sid].event.init.kvPair[k]);		
				}
			}
		 	  
			for(var k in elements[sid].event.init2.kvPair){ 
			    $("#select_init2 .kv_panel2").append('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input" value="'+k+'"></div><div class="v_column"><input type="text" value="'+elements[sid].event.init2.kvPair[k]+'" class="v_input"></div></div>');
			 }
			 
			  $("#sqlselect").val(elements[sid].event.init2.sql); 
			  if(elements[sid].event.init2.ds)
		      $("#select_init2 .event_ds").easyDropDown("select",elements[sid].event.init2.ds);
		  
		  $(".select_event_panel").slideDown("fast");
	  }
	  if(sid.indexOf("password_")!=-1){
		  $(".password_event_panel .event_item:first").click();
		  if(elements[sid].event.afterinit.script){
				 
				 loadFromFela(elements[sid].event.afterinit.script,"#password_after_init");
			 
			 }
		    if(elements[sid].event.click.script){
				 
				 loadFromFela(elements[sid].event.click.script,"#password_click");
			 
			 }
		    if(elements[sid].event.dblclick.script){
				 
				 loadFromFela(elements[sid].event.dblclick.script,"#password_dblclick");
			 
			 }
		    if(elements[sid].event.focus.script){
				 
				 loadFromFela(elements[sid].event.focus.script,"#password_focus");
			 
			 }
		    $("#password_init .kv_panel").empty();
		    $("#password_init .kv_panel").html('<div style="height:18px;width:390px; background-color:#A2A2A2; "><div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  ">键</div><div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;">值</div></div>');
	 		  $("#password_init .text_static_data:eq(0)").val("");
			  $("#password_init .text_static_data:eq(1)").val("");
			  $("#password_init .text_static_data:eq(2)").val("");
			  $("#password_init .event_ds").easyDropDown("select",0);
			  $("#password_init .text_static_data:eq(3)").val("");
			  $("#password_init .schema_ds").easyDropDown("select",0);
			  $("#password_init .text_static_data:last").val("");
			  $("#password_init .text_static_data:eq(4)").val("");
			  
			  $("#password_init .text_static_data:eq(0)").val(elements[sid].event.init.initValue);
			  $("#password_init .text_static_data:eq(1)").val(elements[sid].event.init.fromURL);
			  $("#password_init .text_static_data:eq(2)").val(elements[sid].event.init.sql); 
			  if(elements[sid].event.init.ds)
		      $("#password_init .event_ds").easyDropDown("select",elements[sid].event.init.ds);
		 	  $("#password_init .text_static_data:eq(3)").val(elements[sid].event.init.httpURL);
		 	  if(elements[sid].event.init.httpmethod)
		      $("#password_init .schema_ds").easyDropDown("select",elements[sid].event.init.httpmethod);
		     
			  $("#password_init .text_static_data:last").val(elements[sid].event.init.httpReturn);
				 
				if(elements[sid].event.init.valueType=="value"){
					$("#password_init .typeofmsg .radio_item:last").click();
					$("#password_init .text_static_data:eq(4)").val(elements[sid].event.init.value);
				}else{
					$("#password_init .typeofmsg .radio_item:first").click();
					for(var k in elements[sid].event.init.kvPair){
 				var o=$('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input" value="'+k+'"></div><div class="v_column"><input type="text" value="" class="v_input"></div></div>');
	            $("#password_init .kv_panel").append(o);
				o.find(".v_input").val(elements[sid].event.init.kvPair[k]);	
					}
				}
		    
		  $(".password_event_panel").slideDown("fast");
	  }
	  if(sid.indexOf("text_")!=-1){
		  $(".text_event_panel .event_item:first").click();	 
	 if(elements[sid].event.afterinit.script){
		 
		 loadFromFela(elements[sid].event.afterinit.script,"#text_after_init");
	 
	 }
    if(elements[sid].event.click.script){
		 
		 loadFromFela(elements[sid].event.click.script,"#text_click");
	 
	 }
    if(elements[sid].event.dblclick.script){
		 
		 loadFromFela(elements[sid].event.dblclick.script,"#text_dblclick");
	 
	 }
    if(elements[sid].event.focus.script){
		 
		 loadFromFela(elements[sid].event.focus.script,"#text_focus");
	 
	 }
   
    
	  $("#text_init .kv_panel").empty();
	  $("#text_init .kv_panel").html('<div style="height:18px;width:390px; background-color:#A2A2A2; "><div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  ">  键</div> <div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;">值</div></div>');
	  
	  $("#text_init .text_static_data:eq(0)").val("");
	  $("#text_init .text_static_data:eq(1)").val("");
	  $("#text_init .text_static_data:eq(2)").val("");
	  $("#text_init .event_ds").easyDropDown("select",0);
	  $("#text_init .text_static_data:eq(3)").val("");
	  $("#text_init .schema_ds").easyDropDown("select",0);
	  $("#text_init .text_static_data:last").val("");
	  $("#text_init .text_static_data:eq(4)").val("");
	  
	  $("#text_init .text_static_data:eq(0)").val(elements[sid].event.init.initValue);
	  $("#text_init .text_static_data:eq(1)").val(elements[sid].event.init.fromURL);
	  $("#text_init .text_static_data:eq(2)").val(elements[sid].event.init.sql); 
	  if(elements[sid].event.init.ds)
      $("#text_init .event_ds").easyDropDown("select",elements[sid].event.init.ds);
 	  $("#text_init .text_static_data:eq(3)").val(elements[sid].event.init.httpURL);
 	  if(elements[sid].event.init.httpmethod)
      $("#text_init .schema_ds").easyDropDown("select",elements[sid].event.init.httpmethod);
     
	  $("#text_init .text_static_data:last").val(elements[sid].event.init.httpReturn);
		 
		if(elements[sid].event.init.valueType=="value"){
			$("#text_init .typeofmsg .radio_item:last").click();
			$("#text_init .text_static_data:eq(4)").val(elements[sid].event.init.value);
		}else{
			$("#text_init .typeofmsg .radio_item:first").click();
			 
			for(var k in elements[sid].event.init.kvPair){
			 
				var o=$('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input" value="'+k+'"></div><div class="v_column"><input type="text" value="" class="v_input"></div></div>');
	            $("#text_init .kv_panel").append(o);
				o.find(".v_input").val(elements[sid].event.init.kvPair[k]);	
			}
		}
		  
	  $(".text_event_panel").slideDown("fast");
	  
	  }
	  if(sid.indexOf("textarea_")!=-1){
		  $(".textarea_event_panel .event_item:first").click();	 
 
	 if(elements[sid].event.afterinit.script){
		 
		 loadFromFela(elements[sid].event.afterinit.script,"#textarea_after_init");
	 
	 }
    if(elements[sid].event.click.script){
		 
		 loadFromFela(elements[sid].event.click.script,"#textarea_click");
	 
	 }
    if(elements[sid].event.dblclick.script){
		 
		 loadFromFela(elements[sid].event.dblclick.script,"#textarea_dblclick");
	 
	 }
    if(elements[sid].event.focus.script){
		 
		 loadFromFela(elements[sid].event.focus.script,"#textarea_focus");
	 
	 }
   
    
	  $("#textarea_init .kv_panel").empty();
	  $("#textarea_init .kv_panel").html('<div style="height:18px;width:390px; background-color:#A2A2A2; "><div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  ">键</div><div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;">值</div></div>');
	  $("#textarea_init .text_static_data:eq(0)").val("");
	  $("#textarea_init .text_static_data:eq(1)").val("");
	  $("#textarea_init .text_static_data:eq(2)").val("");
	  $("#textarea_init .event_ds").easyDropDown("select",0);
	  $("#textarea_init .text_static_data:eq(3)").val("");
	  $("#textarea_init .schema_ds").easyDropDown("select",0);
	  $("#textarea_init .text_static_data:last").val("");
	 
	  
	  $("#textarea_init .text_static_data:eq(0)").val(elements[sid].event.init.initValue);
 
	  $("#textarea_init .text_static_data:eq(1)").val(elements[sid].event.init.sql); 
	  if(elements[sid].event.init.ds)
      $("#textarea_init .event_ds").easyDropDown("select",elements[sid].event.init.ds);
 	  $("#textarea_init .text_static_data:eq(2)").val(elements[sid].event.init.httpURL);
 	  if(elements[sid].event.init.httpmethod)
      $("#textarea_init .schema_ds").easyDropDown("select",elements[sid].event.init.httpmethod);
     
	  $("#textarea_init .text_static_data:last").val(elements[sid].event.init.httpReturn);
	 
		if(elements[sid].event.init.valueType=="value"){
			$("#textarea_init .typeofmsg .radio_item:last").click();
			$("#textarea_init .text_static_data:eq(3)").val(elements[sid].event.init.value);
		}else{
			$("#textarea_init .typeofmsg .radio_item:first").click();
			for(var k in elements[sid].event.init.kvPair){
 		var o=$('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input" value="'+k+'"></div><div class="v_column"><input type="text" value="" class="v_input"></div></div>');
        $("#textarea_init .kv_panel").append(o);
		o.find(".v_input").val(elements[sid].event.init.kvPair[k]);				
			}
		}
		  
	  $(".textarea_event_panel").slideDown("fast");
	  
	  }
	  $(".right_menu").slideUp("fast");
  });
  
  
  
  var elements=new Object();
  elements["window"]={"type":"default","topbg":"","midbg":"","bottombg":"","fontcolor":"","titlecolor":"","okbg":"","okfont":"" };
  elements["page"]={"w":"1900","h":"1200","title":"","bg":""};
 
  $(".valid_test").click(function(){
 
  if($(".rule_div .radio_item_click").index()==0){
  var type=$("#rules").val();

  var reg;
  if(type==1){
  reg=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+\.[a-zA-Z0-9_-]+$/;
  }
  if(type==2){
 reg=/^([0-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.([0-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.([0-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.([0-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])$/;
  }
  if(type==3){
 reg=/^1[3|4|5|8][0-9]\d{8}$/;
  }
 if(type==4){
 reg=/\S/;
  }
  if(type==5){
  reg=/^[0-9]+$/;
  }
  if(type==6){
  reg=/^[-]{0,1}(\d+)[\.]+(\d+)$/;
  }
    if(type==7){
  reg=/^[0-9a-zA-Z\_]+$/;
  }
    elements[sid].valid.type=type;
    elements[sid].valid.regExp=reg;
    if(type!=0)
   if(reg.test($("#"+sid).val())) alert("匹配正确"); else alert("匹配错误");
   

  
  }else{
	  var reg=$.trim($(".myrule").val());
	  if(reg=="") {
		  alert("请填写正则表达式");
		  return ;
	  }
  var ureg=new RegExp(reg);
  if(ureg.test($("#"+sid).val())) alert("匹配正确"); else alert("匹配错误");
  elements[sid].valid.type=8;
  elements[sid].valid.regExp=reg;
  
  }
 
  });
  
  </script>
 
 
  
      <div style="position:absolute;top:349px;left:20px;color:#a2a2a2;font-size:13px;background-color:#232323;">提示框样式</div>
 <div class="tip_css">
  <div class="css_row" style="padding-left:0px;padding-top:0px;">
<div style="float:left;">边框宽度</div> <input type="text" value=1 maxlength=1 class="border_width"  />

<div style="float:left;">&nbsp; 边框颜色&nbsp;</div> <input value="c68f2a" type="text"  class="border_color"/>
 </div>
 <div class="css_row" style="padding-left:0px; ">
<div style="float:left;">文字大小</div> <input type="text" value="13" maxlength="2" class="border_width"  />

<div style="float:left;">&nbsp; 文字颜色&nbsp;</div> <input type="text" value="000000" class="border_color"/>
 </div>
  <div class="css_row" style="padding-left:0px; ">
<div style="float:left;">背景色 </div> <input type="text" value='ffffc6' class="border_color"/>
<div style="float:left;">&nbsp; 左边距</div><input type="text" maxlength="2"  value="6" class="border_width"/>
 
 </div>
 
 
   </div>
    <div style=" width:230px;height:0px;padding:10px;"></div> 
   
   
    
 </div>
 </div>
 
 
    <div class="form_dialog">
 <div class="form_dialog_head">
 <div style="padding-top:2px;float:left;">表单</div>
<div class="closeImg" ></div>
 </div>
  <div class="text">
 单行文本框
 </div>
 <div class="split">
 </div>
   <div class="password">
 密码框
 </div>
 <div class="split">
 </div>
    <div class="select">
 下拉框
 </div>
 <div class="split">
 </div>
     <div class="radio">
 单选框
 </div>
 <div class="split">
 </div>
    <div class="checkbox">
 复选框
 </div>
 <div class="split">
 </div>
     <div class="textarea">
 多行文本框
 </div>
 <div class="split">
 </div>
      <div class="file">
 文件上传
 </div>
 <div class="split">
 </div>
   <div class="hidden">
隐藏域
 </div>
 <div class="split">
 </div>
    <div class="button">
按钮
 </div>
 <div class="split">
 </div>
     <div class="time">
日期时间
 </div>
 
 <div class="split"></div>
     <div class="ueditor">
富文本框
 </div>
 </div>
 
 <div class="page" >
 <div class="css_row">
<div style="float:left;">宽度</div> <input type="text" value="1300" maxlength=4 class="page_size"  />

<div style="float:left;">&nbsp;&nbsp;&nbsp;高度&nbsp;</div> <input value="700" type="text" maxlength=4  class="page_size"/>
 </div>
  <div class="css_row">
<div style="float:left;">标题</div> <input value="我的表单" type="text"   class="page_size" style="width:160px;" />
 
 </div>
  <div class="css_row">
<div style="float:left;">背景色</div> <input value="ffffff" type="text"   class="page_size"  />
 
 </div>
  
   <div class="css_row">
<input class="ok" onclick="savePage()"  type="button"  value="确定" > 
   <input class="no"  type="button"  value="取消"  > 
 </div>
 </div>
 
 
 
 <div class="db" >
 <div class="db_element">
 
 <div class="dataSource">
  <div class="css_row">
<div class="db_add" onclick=addDB()></div>

 </div>
  <div class="css_row">
<div style="float:left;">别名</div> <input type="text"  class="db_name"  />
 </div>
 <div class="css_row">
<div style="float:left;">地址</div> <input type="text"  class="db_url"  />
 </div>
  <div class="css_row">
<div style="float:left;">账号</div> <input   type="text"   class="db_username"  />
<div style="float:left;width:50px;text-align:right;"> 
密码</div> <input   type="password"   class="db_password"  />
    
 </div>
 </div>
 
 </div>
<div style="width:300px;height:5px;">
</div> 
 <div style="width:300px;height:30px;">
 &nbsp;<input onclick="saveDB()"  type="button" class="ok" value="保存"/>
  &nbsp;&nbsp;<input class="no"  type="button" value="取消"/>
</div>
 </div>
  
<div class="select_event_panel" >
 <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">事件</div>
 <div class="closeImg" ></div>
 </div>
 <div style="height:29px; width:100%; background-color:#313131;">
 
 <div onclick="select_init()" class="event_item event_item_selected" style="width:60px">值初始化</div> 
 <div onclick="select_init2()" class="event_item" style="width:110px">列表内容初始化</div> 
 <div onclick="select_change()" class="event_item" style="width:70px">内容改变</div>
  
 </div>
   <div  style="height:7px;width:500px; "></div>

 <div id="select_change" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
 <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
   <div class="refresh">刷新</div>
    <div class="location">跳转</div>
    
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
  <div id="select_init2" style=" display:none;height:390px;width:500px ">
  
 
 <div style="position:absolute;top:70px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:63px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
 
 </div>
 <div style="position:absolute;top:190px;left: 5px;height:260px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div class="init_http_text" style="top:181px;">
静态数据
 
 <input type="button" class="kv_panel_add2" style="top:25px;" value="添加" />
  <input type="button" class="kv_panel_del2" style="top:65px;"  value="删除" />
 <div class="kv_panel2" style="top:25px;height:236px;">

 </div>
 
  
 </div>
  

 </div>
 <div id="select_init"  >
  <div style="position:absolute;top:70px;left:5px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:15px ">
  静态数据
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
  初始值 
 </div>
 <input class="text_static_data" type="text"  />
 </div>
  
 <div style="position:absolute;top:70px;left:255px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:265px ">
从URL获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
字段名
 </div>
  <input class="text_static_data" title="支持{变量名}的表达式处理，详情见用户手册" style="width:150px;top:26px;left:45px" type="text"  />
 </div>
 <div style="position:absolute;top:135px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:128px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
  
 </div>
 <div style="position:absolute;top:255px;left: 5px;height:200px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div class="init_http_text">
通过HTTP获取
 <div class="event_address_text">
地址
 </div>
   <input class="text_static_data"  style="width:350px;top:26px;left:30px" type="text"  />
  <div class="wrap_schema_ds">
  <select  class="schema_ds">
  <option value="post">POST</option><option value="get">GET</option>
 </select></div>
 <div class="typeofmsg">
 <div class="radio_item radio_item_click"></div>
<div class="kv_req_text">key-value请求</div> 
  <div class="gap4radio"></div>
  <div class="radio_item"></div>
<div class="text_req_text">文本请求</div>
 </div>
 <input type="button" class="kv_panel_add" value="添加" />
  <input type="button" class="kv_panel_del" value="删除" />
 <div class="kv_panel">

 
 </div>
  <div class="text_panel">
    <textarea class="text_static_data"  title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:100px;font-size:13px;width:450px;top:1px;left: -3px"  ></textarea>
  
  </div>
   <div class="event_res_text">
返回值处理
 </div>
  <input class="text_static_data"  style="width:310px;top:182px;left:70px" type="text"  />
 
 </div>

 </div>
   <input class="ok" onclick="saveEvent4select()" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
 
 
 
 
    </div>
    
    
    
    
    
<div class="radio_event_panel" >
 <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">事件</div>
 <div class="closeImg" ></div>
 </div>
 <div style="height:29px; width:100%; background-color:#313131;">
 
 <div onclick="radio_init()" class="event_item event_item_selected" style="width:60px">值初始化</div> 
 <div onclick="radio_init2()" class="event_item" style="width:110px">内容初始化</div> 
 <div onclick="radio_click()" class="event_item" style="width:70px">鼠标单击</div>
  
 </div>
   <div  style="height:7px;width:500px; "></div>

 <div id="radio_click" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
  <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
     <div class="refresh">刷新</div>
    <div class="location">跳转</div>
    
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
  <div id="radio_init2" style=" display:none;height:390px;width:500px ">
  
 
 <div style="position:absolute;top:70px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:63px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="radio_sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
 
 </div>
 <div style="position:absolute;top:190px;left: 5px;height:260px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div class="init_http_text" style="top:181px;">
静态数据
 
 <input type="button" class="kv_panel_add2" style="top:25px;" value="添加" />
  <input type="button" class="kv_panel_del2" style="top:65px;"  value="删除" />
 <div class="kv_panel2" style="top:25px;height:236px;">

 
 </div>
 </div>
 </div>
 
 <div id="radio_init"  >
  <div style="position:absolute;top:70px;left:5px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:15px ">
  静态数据
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
  初始值 
 </div>
 <input class="text_static_data" type="text"  />
 </div>
  
 <div style="position:absolute;top:70px;left:255px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:265px ">
从URL获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
字段名
 </div>
  <input class="text_static_data" title="支持{变量名}的表达式处理，详情见用户手册" style="width:150px;top:26px;left:45px" type="text"  />
 </div>
 <div style="position:absolute;top:135px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:128px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
  
 </div>
 <div style="position:absolute;top:255px;left: 5px;height:200px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div class="init_http_text">
通过HTTP获取
 <div class="event_address_text">
地址
 </div>
   <input class="text_static_data"  style="width:350px;top:26px;left:30px" type="text"  />
  <div class="wrap_schema_ds">
  <select  class="schema_ds">
  <option value="post">POST</option><option value="get">GET</option>
 </select></div>
 <div class="typeofmsg">
 <div class="radio_item radio_item_click"></div>
<div class="kv_req_text">key-value请求</div> 
  <div class="gap4radio"></div>
  <div class="radio_item"></div>
<div class="text_req_text">文本请求</div>
 </div>
 <input type="button" class="kv_panel_add" value="添加" />
  <input type="button" class="kv_panel_del" value="删除" />
 <div class="kv_panel">

 </div>
  <div class="text_panel">
    <textarea class="text_static_data"  title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:100px;font-size:13px;width:450px;top:1px;left: -3px"  ></textarea>
  
  </div>
   <div class="event_res_text">
返回值处理
 </div>
  <input class="text_static_data"  style="width:310px;top:182px;left:70px" type="text"  />
 
 </div>

 </div>
   <input class="ok" onclick="saveEvent4radio()" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
 
 
 
 
    </div>
    
    
    
    
<div class="checkbox_event_panel" >
 <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">事件</div>
 <div class="closeImg" ></div>
 </div>
 <div style="height:29px; width:100%; background-color:#313131;">
 
 <div onclick="checkbox_init()" class="event_item event_item_selected" style="width:60px">值初始化</div> 
 <div onclick="checkbox_init2()" class="event_item" style="width:110px">内容初始化</div> 
 <div onclick="checkbox_click()" class="event_item" style="width:70px">鼠标单击</div>
  
 </div>
   <div  style="height:7px;width:500px; "></div>

 <div id="checkbox_click" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
 <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
  <div class="refresh">刷新</div>
    <div class="location">跳转</div>
    
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
  <div id="checkbox_init2" style=" display:none;height:390px;width:500px ">
  
 
 <div style="position:absolute;top:70px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:63px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="checkbox_sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
 
 </div>
 <div style="position:absolute;top:190px;left: 5px;height:260px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div class="init_http_text" style="top:181px;">
静态数据
 
 <input type="button" class="kv_panel_add2" style="top:25px;" value="添加" />
  <input type="button" class="kv_panel_del2" style="top:65px;"  value="删除" />
 <div class="kv_panel2" style="top:25px;height:236px;">

 </div>
 
  
 </div>
 </div>
 
 <div id="checkbox_init"  >
  <div style="position:absolute;top:70px;left:5px;height:50px; width:97%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:15px ">
  静态数据(多个值用逗号分隔)
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
  初始值 
 </div>
 <input class="text_static_data" style="width:400px;" type="text"  />
 </div>
 
 
 <div style="position:absolute;top:135px;left: 5px;height:306px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:128px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:250px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:286px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds" style="top:284px">
  <select  class="event_ds">
 </select></div>
     
 </div>
  
 

 </div>
   <input class="ok" onclick="saveEvent4checkbox()" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
 
 
 
 
    </div>
    
    
    
  <div class="password_event_panel" >
    <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">事件</div>
<div class="closeImg" ></div>
 </div>
   <div style="height:29px; width:100%; background-color:#313131;">
 
 <div onclick="password_init()" class="event_item event_item_selected" style="width:60px">初始化</div> 
 <div onclick="password_after_init()" class="event_item" style="width:70px">初始化后</div> 
 <div onclick="password_click()" class="event_item" style="width:70px">鼠标单击</div>
  <div onclick="password_dblclick()" class="event_item" style="width:70px">鼠标双击</div>
  <div onclick="password_focus()" class="event_item" style="width:70px">获得焦点</div>
 
 </div>
  <div  style="height:7px;width:500px; "></div>
   <div id="password_focus" style=" display:none;height:390px;width:500px ">
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
  <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
    <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
 <div id="password_dblclick" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
 <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
  <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
 <div id="password_after_init" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
 <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
  <div class="refresh">刷新</div>
    <div class="location">跳转</div>
    
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
 <div id="password_click" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
 <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
    <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
 <div id="password_init"  >
  <div style="position:absolute;top:70px;left:5px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:15px ">
  静态数据
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
  初始值 
 </div>
 <input class="text_static_data" type="text"  />
 </div>
  
 <div style="position:absolute;top:70px;left:255px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:265px ">
从URL获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
字段名
 </div>
  <input class="text_static_data" title="支持{变量名}的表达式处理，详情见用户手册" style="width:150px;top:26px;left:45px" type="text"  />
 </div>
 <div style="position:absolute;top:135px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:128px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
 
 </div>
 <div style="position:absolute;top:255px;left: 5px;height:200px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div class="init_http_text">
通过HTTP获取
 <div class="event_address_text">
地址
 </div>
   <input class="text_static_data"  style="width:350px;top:26px;left:30px" type="text"  />
  <div class="wrap_schema_ds">
  <select  class="schema_ds">
  <option value="post">POST</option><option value="get">GET</option>
 </select></div>
 <div class="typeofmsg">
 <div class="radio_item radio_item_click"></div>
<div class="kv_req_text">key-value请求</div> 
  <div class="gap4radio"></div>
  <div class="radio_item"></div>
<div class="text_req_text">文本请求</div>
 </div>
 <input type="button" class="kv_panel_add" value="添加" />
  <input type="button" class="kv_panel_del" value="删除" />
 <div class="kv_panel">

 </div>
  <div class="text_panel">
    <textarea class="text_static_data"  title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:100px;font-size:13px;width:450px;top:1px;left: -3px"  ></textarea>
  
  </div>
   <div class="event_res_text">
返回值处理
 </div>
  <input class="text_static_data"  style="width:310px;top:182px;left:70px" type="text"  />
 
 </div>

 </div>
 
  <input class="ok" onclick="saveEvent4password()" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
 
 
 
 
 
  </div>
 
 
  <div class="ueditor_event_panel" >
   <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">事件</div>
<div class="closeImg" ></div>
 </div>
  <div style="height:29px; width:100%; background-color:#313131;">
  <div class="event_item event_item_selected" style="width:60px">初始化</div> 
  <div  style="height:7px;width:500px; "></div>
 <div  id="ueditor_init">
 
 <div style="position:absolute;top:70px;left:5px;height:50px; width:97%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:15px ">
默认内容
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
内容
 </div>
  <input class="text_static_data"    style="width:400px;top:26px;left:45px" type="text"  />
 </div>
 <div style="position:absolute;top:135px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:128px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data"  title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
 
 </div>
 <div style="position:absolute;top:255px;left: 5px;height:200px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div class="init_http_text">
通过HTTP获取
 <div class="event_address_text">
地址
 </div>
   <input class="text_static_data"  style="width:350px;top:26px;left:30px" type="text"  />
  <div class="wrap_schema_ds">
  <select  class="schema_ds">
  <option value="post">POST</option><option value="get">GET</option>
 </select></div>
 <div class="typeofmsg">
 <div class="radio_item radio_item_click"></div>
<div class="kv_req_text">key-value请求</div> 
  <div class="gap4radio"></div>
  <div class="radio_item"></div>
<div class="text_req_text">文本请求</div>
 </div>
 <input type="button" class="kv_panel_add" value="添加" />
  <input type="button" class="kv_panel_del" value="删除" />
 <div class="kv_panel">

 </div>
  <div class="text_panel">
    <textarea class="text_static_data"  title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:100px;font-size:13px;width:450px;top:1px;left: -3px"  ></textarea>
  
  </div>
   <div class="event_res_text">
返回值处理
 </div>
  <input class="text_static_data"  style="width:310px;top:182px;left:70px" type="text"  />
 
 </div>

 </div>
 
  <input class="ok" onclick="saveEvent4ueditor()" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
 
 </div>
 
 </div>
 
  
 <div class="time_event_panel" >
   <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">事件</div>
<div class="closeImg" ></div>
 </div>
  <div style="height:29px; width:100%; background-color:#313131;">
  <div class="event_item event_item_selected" style="width:60px">初始化</div> 
  <div  style="height:7px;width:500px; "></div>
 <div  id="time_init">
  <div style="position:absolute;top:70px;left:5px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:15px ">
  使用今日时间作为默认时间
 
 <div class="time_radio">
<div class="radio_item radio_item_click"></div>
<div style="float:left;height:15px;line-height:15px;font-size:13px;color:#a2a2a2;padding-left:5px;">不使用</div>
<div class="radio_item" style="margin-left:15px;"></div>
<div style="float:left;height:15px;line-height:15px;font-size:13px;color:#a2a2a2;padding-left:5px;">使用</div>
</div>
 </div>
  
 <div style="position:absolute;top:70px;left:255px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:265px ">
展现格式
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
格式
 </div>
  <input class="text_static_data"    style="width:150px;top:26px;left:45px" type="text"  />
 </div>
 <div style="position:absolute;top:135px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:128px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="time_sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
 
 </div>
 <div style="position:absolute;top:255px;left: 5px;height:200px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div class="init_http_text">
通过HTTP获取
 <div class="event_address_text">
地址
 </div>
   <input class="text_static_data"  style="width:350px;top:26px;left:30px" type="text"  />
  <div class="wrap_schema_ds">
  <select  class="schema_ds">
  <option value="post">POST</option><option value="get">GET</option>
 </select></div>
 <div class="typeofmsg">
 <div class="radio_item radio_item_click"></div>
<div class="kv_req_text">key-value请求</div> 
  <div class="gap4radio"></div>
  <div class="radio_item"></div>
<div class="text_req_text">文本请求</div>
 </div>
 <input type="button" class="kv_panel_add" value="添加" />
  <input type="button" class="kv_panel_del" value="删除" />
 <div class="kv_panel">

 </div>
  <div class="text_panel">
    <textarea class="text_static_data"  title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:100px;font-size:13px;width:450px;top:1px;left: -3px"  ></textarea>
  
  </div>
   <div class="event_res_text">
返回值处理
 </div>
  <input class="text_static_data"  style="width:310px;top:182px;left:70px" type="text"  />
 
 </div>

 </div>
 
  <input class="ok" onclick="saveEvent4time()" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
 
 </div>
 
 </div>
 
 <div class="button_event_panel" >
  <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">事件</div>
<div class="closeImg" ></div>
 </div>
 <div style="height:29px; width:100%; background-color:#313131;">
 
 <div  class="event_item event_item_selected" style="width:60px">鼠标单击</div> 
 
 </div>
 <div  style="height:7px;width:500px; "></div>
 
  <div id="button_click" style="height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
  <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
  <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
  
  <input class="ok" onclick="saveEvent4button()" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
 
 
 
 </div>
 
 
 
 <div class="img_event_panel" >
  <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">事件</div>
<div class="closeImg" ></div>
 </div>
 <div style="height:29px; width:100%; background-color:#313131;">
 
 <div  class="event_item event_item_selected" style="width:60px">鼠标单击</div> 
 
 </div>
 <div  style="height:7px;width:500px; "></div>
 
  <div id="img_click" style="height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
  <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
  <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
  
  <input class="ok" onclick="saveEvent4img()" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
  
 </div>
 
 
  <div class="valid0_event_panel" style="height:160px;top:200px;">
  <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">数据库校验</div>
<div class="closeImg" ></div>
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:30px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data"  id="validsql" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:430px;top:30px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:90px;left:0px ">
数据源
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:90px;left:204px ">
关系
 </div>
   <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:90px;left:324px ">
值
 </div>
 <input class="text_static_data" id="mainvalue" style="top:90px;left:344px;width:110px; " type="text">
  <input class="ok" style="position:absolute;top:130px;left:10px;width:60px; " type="button" value="确定">
 
 <div class="wrap_event_ds" style="top:89px;">
  <select  class="event_ds">
 </select></div>
  <div class="wrap_valid_relation"  >
  <select  class="valid_ds">
  <option value="0">=</option>
  <option value="1">&ne;</option>
  <option value="2">&ge;</option>
  <option value="3">&gt;</option>
  <option value="4">&lt;</option>
  <option value="5">&le;</option>
 </select></div>
 
 
 </div>
 
 
 <div class="text_event_panel" >
  <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">事件</div>
<div class="closeImg" ></div>
 </div>
 <div style="height:29px; width:100%; background-color:#313131;">
 
 <div onclick="text_init()" class="event_item event_item_selected" style="width:60px">初始化</div> 
 <div onclick="text_after_init()" class="event_item" style="width:70px">初始化后</div> 
 <div onclick="text_click()" class="event_item" style="width:70px">鼠标单击</div>
  <div onclick="text_dblclick()" class="event_item" style="width:70px">鼠标双击</div>
  <div onclick="text_focus()" class="event_item" style="width:70px">获得焦点</div>
 
 </div>
 <div  style="height:7px;width:500px; "></div>
 
  <div id="text_focus" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
 <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
     <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
  <div id="text_dblclick" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
   <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
  <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
  <div id="text_after_init" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
   <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
  <div class="refresh">刷新</div>
    <div class="location">跳转</div>
    
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
 
  <div id="text_click" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
  <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
    <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
 <div id="text_init"  >
  <div style="position:absolute;top:70px;left:5px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:15px ">
  静态数据
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
  初始值 
 </div>
 <input class="text_static_data" type="text"  />
 </div>
  
 <div style="position:absolute;top:70px;left:255px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:265px ">
从URL获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
字段名
 </div>
  <input class="text_static_data" title="支持{变量名}的表达式处理，详情见用户手册" style="width:150px;top:26px;left:45px" type="text"  />
 </div>
 <div style="position:absolute;top:135px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:128px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
 
 </div>
 <div style="position:absolute;top:255px;left: 5px;height:200px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div class="init_http_text">
通过HTTP获取
 <div class="event_address_text">
地址
 </div>
   <input class="text_static_data"  style="width:350px;top:26px;left:30px" type="text"  />
  <div class="wrap_schema_ds">
  <select  class="schema_ds">
  <option value="post">POST</option><option value="get">GET</option>
 </select></div>
 <div class="typeofmsg">
 <div class="radio_item radio_item_click"></div>
<div class="kv_req_text">key-value请求</div> 
  <div class="gap4radio"></div>
  <div class="radio_item"></div>
<div class="text_req_text">文本请求</div>
 </div>
 <input type="button" class="kv_panel_add" value="添加" />
  <input type="button" class="kv_panel_del" value="删除" />
 <div class="kv_panel">

 </div>
  <div class="text_panel">
    <textarea class="text_static_data"   title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:100px;font-size:13px;width:450px;top:1px;left: -3px"  ></textarea>
  
  </div>
   <div class="event_res_text">
返回值处理
 </div>
  <input class="text_static_data"  style="width:310px;top:182px;left:70px" type="text"  />
 
 </div>

 </div>
 
  <input class="ok" onclick="saveEvent4text()" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
 
 
 
 </div>
 
 
  <div class="open_panel" >
  <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">打开</div>
<div class="closeImg" ></div>
</div>
<div style="height:40px; width:300px;  ">
  <input type="button" class="ok" value="创建新页面" onclick="createNew()" style="width:120px;height:30px;font-size:15px;">
 </div>
<div style="height:29px; width:100%; background-color:#313131;">
 
 <div   class="open_item" style="width:150px">页面名称</div> 
 <div   class="open_item" style="width:100px">版本号</div> 
 <div   class="open_item" style="width:100px">更新时间</div>
 <div  class="open_item" style="width:130px">操作</div> 
 </div>
 <div class="open_content">
 
 </div>
 

</div>
 
 <div class="textarea_event_panel" >
  <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">事件</div>
<div class="closeImg" ></div>
 </div>
 <div style="height:29px; width:100%; background-color:#313131;">
 
 <div onclick="textarea_init()" class="event_item event_item_selected" style="width:60px">初始化</div> 
 <div onclick="textarea_after_init()" class="event_item" style="width:70px">初始化后</div> 
 <div onclick="textarea_click()" class="event_item" style="width:70px">鼠标单击</div>
  <div onclick="textarea_dblclick()" class="event_item" style="width:70px">鼠标双击</div>
  <div onclick="textarea_focus()" class="event_item" style="width:70px">获得焦点</div>
 
 </div>
 <div  style="height:7px;width:500px; "></div>
 
  <div id="textarea_focus" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
  <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
    <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
  <div id="textarea_dblclick" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
 <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
   <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
  <div id="textarea_after_init" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
  <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
    <div class="refresh">刷新</div>
    <div class="location">跳转</div>
    
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
 
  <div id="textarea_click" style=" display:none;height:390px;width:500px ">
 
 <div  style="height:100px;width:500px ">
  <div  style="height:28px;width:400px; border-radius:5px; ">
   <div class="logic_control">逻辑控制</div>
 <div class="if">如果...那么...</div>
  <div class="ifelse">如果...则...否则...</div>
   <div class="return">退出</div>
   <div class="and">并且</div>
   <div class="or">或者</div>
 </div><div  style="height:4px;width:500px; ">
 </div>
   <div class="text_oper">
   <div class="oper_control">操作语句</div>
 <div class="disable">失效</div>
  <div class="empty">清空</div>
   <div class="val">赋值</div>
 <div class="alert">确认提示</div>
   <div class="confirm">异常提示</div>
   <div class="openWin">弹出页</div>
    <div class="refresh">刷新</div>
    <div class="location">跳转</div>
 
 </div><div  style="height:4px;width:500px; ">
 </div>
  <div  style="height:28px;width:490px; border-radius:5px;">
   <div class="math_control">条件运算</div>
 <div class="add">+</div>
  <div class="minus">&minus;</div>
   <div class="times">&times;</div>
   <div class="divide">&divide;</div>
   <div class="eq">=</div>
   <div class="nq">&ne;</div>
   <div class="lt">&lt;</div>
   <div class="gt">&gt;</div>
   <div class="ge">&ge;</div>
    <div class="le">&le;</div>
    <div class="include">包含</div>
    <div class="exclude">不包含</div>
 </div>
 </div>
 
  <div  class="scratch_editor">
 </div>

 </div>
 <div id="textarea_init"  >
  <div style="position:absolute;top:70px;left:5px;height:50px; width:97%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:62px;left:15px ">
  静态数据
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
  初始值 
 </div>
 <input class="text_static_data" type="text" style="width:400px;" />
 </div>
  
  
 <div style="position:absolute;top:135px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:128px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
 
 </div>
 <div style="position:absolute;top:255px;left: 5px;height:200px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div class="init_http_text">
通过HTTP获取
 <div class="event_address_text">
地址
 </div>
   <input class="text_static_data"  style="width:350px;top:26px;left:30px" type="text"  />
  <div class="wrap_schema_ds">
  <select  class="schema_ds">
  <option value="post">POST</option><option value="get">GET</option>
 </select></div>
 <div class="typeofmsg">
 <div class="radio_item radio_item_click"></div>
<div class="kv_req_text">key-value请求</div> 
  <div class="gap4radio"></div>
  <div class="radio_item"></div>
<div class="text_req_text">文本请求</div>
 </div>
 <input type="button" class="kv_panel_add" value="添加" />
  <input type="button" class="kv_panel_del" value="删除" />
 <div class="kv_panel">

 </div>
  <div class="text_panel">
    <textarea class="text_static_data"   title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:100px;font-size:13px;width:450px;top:1px;left: -3px"  ></textarea>
  
  </div>
   <div class="event_res_text">
返回值处理
 </div>
  <input class="text_static_data"  style="width:310px;top:182px;left:70px" type="text"  />
 
 </div>

 </div>
 
  <input class="ok" onclick="saveEvent4textarea()" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
 
 
 
 </div>
 
 
 
  <div class="path" >
  <div class="css_row">
<div style="float:left;">为我的页面定义访问路径</div> 
 </div>
 <div class="css_row">
<div style="float:left;">/</div><div style="float:left;" id="project_code"></div><div style="float:left;">/</div> <input type="text"  class="path_url" style="width:100px;" />
  &nbsp;&nbsp;&nbsp;<input onclick="save()" type="button" class="ok" value="确定"/>
 
 </div>
 
  

 
 </div>
  <!-- 弹出配置框开始 -->
  <div class="alert_selected" >
  <div class="form_dialog_head"  >
  <div style="padding-top:2px;float:left;">弹出</div>
  <div class="closeImg" ></div>
  </div>
  <div style="position:absolute;top:40px;left:5px;height:110px; width:97%; border:solid 1px #3d3d3d;">
  </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:32px;left:15px ">
 属性
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
  地址 
 </div>
 <input class="text_static_data" type="text" style="width:400px;" />
   <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:56px;left:0px ">
  宽度
 </div>
 <input class="text_static_data" type="text" style="top:56px;width:60px; "  />
    <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:56px;left:145px;width:60px; ">
  高度
 </div>
 <input class="text_static_data" type="text" style="top:56px;width:60px;left:190px; "  />
     <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:56px;left:290px;width:60px; ">
颜色
 </div>
 <input class="text_static_data" id="alert_color" type="text" style="top:56px;width:60px;left:335px; "  />
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
标题
 </div>
 <input class="text_static_data" type="text" style=" top:86px;" />
 
 </div>

 
  <input class="ok" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />
 
  </div>
 
 
  <!-- 弹出配置框结束 -->
 
 <!-- 赋值弹出框开始 -->
 <div class="eq_selected" >
  <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">赋值</div>
<div class="closeImg" ></div>
 </div>
  <div style="position:absolute;top:40px;left:5px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:32px;left:15px ">
  静态数据
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
  初始值 
 </div>
 <input class="text_static_data" type="text"  />
 </div>
  
 <div style="position:absolute;top:40px;left:270px;height:50px; width:47%; border:solid 1px #3d3d3d;">
 </div>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:32px;left:280px ">
从URL获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
字段名
 </div>
  <input class="text_static_data" title="支持{变量名}的表达式处理，详情见用户手册" style="width:150px;top:26px;left:45px" type="text"  />
 </div>
 <div style="position:absolute;top:105px;left: 5px;height:106px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:98px;left:15px ">
通过数据库获取
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:26px;left:0px ">
SQL 
 </div>
  <textarea class="text_static_data" id="sqlselect" title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:50px;font-size:13px;width:420px;top:26px;left:30px"  ></textarea>
 <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:86px;left:0px ">
数据源
 </div>
 <div class="wrap_event_ds">
  <select  class="event_ds">
 </select></div>
 
 </div>
 <div style="position:absolute;top:225px;left: 5px;height:200px; width:97%; border:solid 1px #3d3d3d;">
 </div>
  <div style="position:absolute;font-size:13px;color:#A2A2A2;background-color:#232323;top:216px;left:15px">
通过HTTP获取
 <div class="event_address_text">
地址
 </div>
   <input class="text_static_data"  style="width:350px;top:26px;left:30px" type="text"  />
  <div class="wrap_schema_ds">
  <select  class="schema_ds">
  <option value="post">POST</option><option value="get">GET</option>
 </select></div>
 <div class="typeofmsg2">
 <div class="radio_item radio_item_click"></div>
<div class="kv_req_text">key-value请求</div> 
  <div class="gap4radio"></div>
  <div class="radio_item"></div>
<div class="text_req_text">文本请求</div>
 </div>
 <input type="button" class="kv_panel_add2" value="添加" />
  <input type="button" class="kv_panel_del2" value="删除" />
 <div class="kv_panel2">
 <div style="height:18px;width:390px; background-color:#A2A2A2; ">
 <div style="padding-left:5px;height:18px;width:110px;float:left;color:#191919;border:solid 0px #191919; border-right-width:1px;border-bottom-width:1px;  ">
 键</div>
 <div style="padding-left:5px;height:18px;width:268px;float:left; color:#191919;border:solid 0px #191919; border-bottom-width:1px;">
 值</div></div>
 </div>
  <div class="text_panel2">
    <textarea class="text_static_data"   title="支持{变量名}的表达式处理，详情见用户手册" style="resize: none;overflow:auto;height:100px;font-size:13px;width:450px;top:1px;left: -3px"  ></textarea>
  
  </div>
   <div class="event_res_text">
返回值处理
 </div>
  <input class="text_static_data"  style="width:310px;top:182px;left:70px" type="text"  />
 
 </div>
 <input class="ok" style="position:absolute;bottom:3px;left:10px;" type="button" value="确定" />

 
 </div>
  <!-- 赋值弹出框结束 -->
<!-- 提示制作框开始 -->
 <div class="tip_editor" >
  <div class="form_dialog_head"  >
 <div style="padding-top:2px;float:left;">编辑提示框样式</div>
<div class="closeImg" ></div>
 </div>
 <div style="position:relative;float:left;width:400px;height:400px;padding-top:8px;">
 <div class="radio_item radio_item_click"></div>
 <div style="float:left;height:15px;line-height:15px;font-size:13px;color:#a2a2a2;padding-left:5px;">不使用系统默认的弹窗</div>
  <div class="radio_item" style="margin-left:15px;"></div>
 <div style="float:left;height:15px;line-height:15px;font-size:13px;color:#a2a2a2;padding-left:5px;">使用系统默认的弹窗</div>
  <div style="border:solid 1px #A2A2A2;width:395px;position:absolute;left:0px;top:222px;height:175px;">
 
 <!-- 提示框开始 -->
 <div class="tip_demo">
 <div class="tip_head">提示</div>
   <div style="width:353px;height:5px"></div>
  
  <div style="width:15px;height:70px;float:left "></div>
 <div class="tipicon_warn"></div>
   <div style="width:10px;height:70px;float:left "></div>
  <div style="width:250px; height:70px;float:left; font-size:13px;">
  <div style="width:100%;height:20px;"></div>
  <div style="width:100%">抱歉,用户数据添加失败!</div>
  </div>
 <div class="tip_foot">
  <input type="button" class="alert_ensure" value="确认">
 
 
 </div>
 
 </div>
 <!-- 提示框结束 -->
 </div>
  <div style="border:solid 1px #A2A2A2;width:395px;position:absolute;left:0px;top:32px;height:175px;">
<!-- 提示框开始 -->
 <div class="tip_demo">
 <div class="tip_head">提示</div>
   <div style="width:353px;height:5px"></div>
  
  <div style="width:15px;height:70px;float:left "></div>
 <div class="tipicon"></div>
   <div style="width:10px;height:70px;float:left "></div>
  <div style="width:250px; height:70px;float:left; font-size:13px;">
  <div style="width:100%;height:20px;"></div>
  <div style="width:100%">用户信息保存成功！</div>
  </div>
 <div class="tip_foot">
  <input type="button" class="alert_ensure" value="确认">
 
 </div>
 
 </div>
 <!-- 提示框结束 -->
 </div>
   <div style="color:#a2a2a2;font-size:13px;background-color:#232323;position:absolute;left:10px;top:25px;">
 确认提示框
 </div>
    <div style="color:#a2a2a2;font-size:13px;background-color:#232323;position:absolute;left:10px;top:215px;">
 异常提示框
 </div>
 
 </div>
  <div class="alert_right_panel">
   <div class="css_row">
 
</div>
 <div class="css_row">
 <div style="float:left;">顶部底色 </div>
<input class="alert_color" type="text">
</div>
 <div class="css_row">
<div style="float:left;">中部底色 </div>
<input class="alert_color" type="text">
</div>
 <div class="css_row">
<div style="float:left;">底部底色 </div>
<input class="alert_color" type="text">
</div>
   <div class="css_row">
<div style="float:left;">标题颜色 </div>
<input class="alert_color" type="text">
</div>
 
 <div class="css_row">
<div style="float:left;">中部文字颜色 </div>
<input class="alert_color"  type="text">
</div>
 <div class="css_row">
<div style="float:left;">"确认"按钮底色 </div>
<input class="alert_color"  type="text">
</div>
 <div class="css_row">
<div style="float:left;">"确认"文字颜色 </div>
<input class="alert_color"  type="text">
</div>
  <div class="css_row">
</div>
   <div class="css_row">
</div>
 <div class="css_row"></div>
  <div class="css_row"></div>
 <div class="css_row">
<input value="确定" onclick="saveTip()" type="button" class="ok">
</div>
 </div>
 </div>


<!-- 提示制作框结束 -->

 <div  id="tip" class="tip_text"  ></div>
  <div class="footer">
  <div class="gclab"></div>
  <div class="gclab_text">国创实验室&copy;2016-2017&nbsp;&nbsp; 预览版</div>
  </div>
<script>

Date.prototype.format = function(format) {
	var date = {
		"M+" : this.getMonth() + 1,
		"d+" : this.getDate(),
		"H+" : this.getHours(),
		"m+" : this.getMinutes(),
		"s+" : this.getSeconds(),
		"q+" : Math.floor((this.getMonth() + 3) / 3),
		"S+" : this.getMilliseconds()
	};
	if (/(y+)/i.test(format)) {
		format = format.replace(RegExp.$1, (this.getFullYear() + '')
				.substr(4 - RegExp.$1.length));
	}
	for ( var k in date) {
		if (new RegExp("(" + k + ")").test(format)) {
			format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? date[k]
					: ("00" + date[k]).substr(("" + date[k]).length));
		}
	}
	return format;
}
function refreshOpenContent(){
$.post(context+"/openContent",{"project":projectid},function(data){
	var s="";
	for(var i=0;i<data.length;i++){
		s+='<div style="height:29px; width:100%">';
		s+='<input type="hidden" value="'+data[i].PID+'"><div  class="open_item" style="width:150px">'+data[i].PATH+'</div>'; 
		s+='<div  class="open_item" style="width:100px">'+data[i].VERSION+'</div>';
		if(data[i].CREATED!=null)
		s+='<div  class="open_item" style="width:100px">'+new Date(data[i].CREATED).format("MM月dd日 HH:mm")+'</div>';
		else
		s+='<div  class="open_item" style="width:100px"></div>';
			
		s+='<div  class="open_item" style="width:130px"><input type="button" class="open_open" value="打开" onclick="openPage($(this).parent())">&nbsp; <input type="button" class="open_delete" value="移除" onclick="delPage($(this).parent())"></div></div>';
		
		
	}

	$(".open_content").html(s);
	
});
}

refreshOpenContent();

function createNew(){
	
	$.post(context+"/getMaxPID",{"projectid":projectid},function(data){
		var url=location.toString();
		url=url.replace(/ver=.+/,"ver=0");
		url=url.replace(/pid=\d+/,"pid="+data);
		location.href=url;
	   });
}

function delPage(v){
	var ver=v.prev().prev().text();
	var pid=v.siblings("input").val();
	var r=confirm("确定要删除吗？");
   if(r){
	   $.post(context+"/delPage",{"pid":pid,"project":projectid,"ver":ver},function(data){
		   
		   refreshOpenContent();

	   });
   }
}

function openPage(v){
	var pid=v.siblings("input").val();
	var ver=v.prev().prev().text();
	var url=location.toString();
	url=url.replace(/ver=.+/,"ver="+ver);
	url=url.replace(/pid=\d+/,"pid="+pid);
	location.href=url;
}


var fontDict=new Array();
fontDict.push("微软雅黑");
fontDict.push("宋体");
fontDict.push("仿宋体");
fontDict.push("新宋体");
fontDict.push("楷体");
fontDict.push("Arial");
fontDict.push("Verdana");
fontDict.push("Georgia");
fontDict.push("Courier New");
fontDict.push("Garamond");
fontDict.push("Tahoma");
fontDict.push("Century");
function saveTip(){
	elements["window"]={"type":"default","topbg":"","midbg":"","bottombg":"","fontcolor":"","titlecolor":"","okbg":"","okfont":""}
	
	if($(".tip_editor   .radio_item_click").index()==0){
		elements["window"].type="custom";
	}else
		elements["window"].type="default";
	elements["window"].topbg=$(".tip_editor input:text:eq(0)").val();
	elements["window"].midbg=$(".tip_editor input:text:eq(1)").val();
	elements["window"].bottombg=$(".tip_editor input:text:eq(2)").val();
	elements["window"].fontcolor=$(".tip_editor input:text:eq(3)").val();
	elements["window"].titlecolor=$(".tip_editor input:text:eq(4)").val();
	elements["window"].okbg=$(".tip_editor input:text:eq(5)").val();
	elements["window"].okfont=$(".tip_editor input:text:eq(6)").val();
 
	
	$('.tip_editor').slideUp('fast');
}

$.post(context+"/getPath",
		{"project":projectid,"pid":pid},
		function(data){
			$(".reqaddr").html("访问地址 &nbsp;&nbsp;"+data);
			$(".reqaddr").click(function(){
				window.open(context+data);
				
			});
});



$(".valid_button").click(function(){
	 $("#validsql").val("");
	 $("#mainvalue").val("");
 
	$(".valid0_event_panel .valid_ds").easyDropDown("select",0);
	$(".valid0_event_panel .event_ds").easyDropDown("select",0);
	 $("#validsql").val(elements[sid].valid.sql);
	 $("#mainvalue").val(elements[sid].valid.value);
	 if(elements[sid].valid.relation)
	$(".valid0_event_panel .valid_ds").easyDropDown("select",elements[sid].valid.relation);
	 if(elements[sid].valid.ds)
	$(".valid0_event_panel .event_ds").easyDropDown("select",elements[sid].valid.ds);

	$(".valid0_event_panel").slideDown("fast");
	
});

$(".valid0_event_panel .ok").click(function(){
	var sql=$.trim($("#validsql").val());
    var value=$.trim($("#mainvalue").val());
	if(value==""){
		alert("值不得为空");
		return ;
	}
	elements[sid].valid.sql=sql;
	elements[sid].valid.value=value;
	elements[sid].valid.relation=$(".valid0_event_panel .valid_ds").val();
	elements[sid].valid.ds=$(".valid0_event_panel .event_ds").val();
	$(".valid0_event_panel").slideUp('fast');
	
});

var FormTools={
	validKV:function(parent){
		var karr=new Array();
		var valid=true;
		$(parent+" .kv_row").each(function(){
			var k=$.trim($(this).find(".k_input").val()); 
		 
			if(!k||$.inArray(k,karr)!=-1){
				valid=false;
				return ;
			}
			karr.push(k);
			
		});
		return valid;
	 
		
	}
		
}

$(".valid_ds").easyDropDown();
setCssSelect(".valid_ds");

function saveEvent4button(){
	var script=parseFromHTML("#button_click");
	if(script=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	elements[sid].event.click.script=script;
	 $(".button_event_panel").slideUp("fast");
}
function saveEvent4img(){
	var script=parseFromHTML("#img_click");
	if(script=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	elements[sid].event.click.script=script;
	 $(".img_event_panel").slideUp("fast");
}

function saveEvent4password(){
	if(!FormTools.validKV("#password_init")){
		alert("key重复或为空");
		return ;
	}
	var script=parseFromHTML("#password_after_init");
	if(script=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	var script1=parseFromHTML("#password_click");
	if(script1=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	var script2=parseFromHTML("#password_dblclick");
	if(script2=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	var script3=parseFromHTML("#password_focus");
	if(script3=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	elements[sid].event.afterinit.script=script;
	elements[sid].event.click.script=script1;
	elements[sid].event.dblclick.script=script2;
	elements[sid].event.focus.script=script3;
	elements[sid].event.init.initValue=$.trim($("#password_init .text_static_data:eq(0)").val());
	elements[sid].event.init.fromURL=$.trim($("#password_init .text_static_data:eq(1)").val());
	elements[sid].event.init.sql=$.trim($("#password_init .text_static_data:eq(2)").val());
	elements[sid].event.init.ds=$("#password_init .event_ds").val();
	elements[sid].event.init.httpURL=$.trim($("#password_init .text_static_data:eq(3)").val());
	elements[sid].event.init.httpmethod=$.trim($("#password_init .schema_ds").val());
	elements[sid].event.init.httpReturn=$.trim($("#password_init .text_static_data:last").val());
	if($("#password_init .typeofmsg .radio_item_click").index()==0){
		elements[sid].event.init.valueType="kv";
		elements[sid].event.init.kvPair={};
		$("#password_init .kv_panel .kv_row").each(function(){
			var k=$.trim($(this).find(".k_input").val()); 
			elements[sid].event.init.kvPair[k]=$.trim($(this).find(".v_input").val());
			
		});
	}else{
		elements[sid].event.init.valueType="value";
		elements[sid].event.init.value=$.trim($("#password_init .text_static_data:eq(4)").val());
	}
 
	if(elements[sid].event.init.valueType=="value"&&elements[sid].event.init.httpmethod=="get"){
		alert("GET请求不支持文本,请在POST中提交文本!");
		return ;
	}
	
	 $(".password_event_panel").slideUp("fast");
	 $(".password_event_panel .event_item:first").click();
	
}

function saveEvent4select(){
	if(!FormTools.validKV("#select_init")){
		alert("值初始化面板中key重复或为空");
		return ;
	}
	if(!FormTools.validKV("#select_init2")){
		alert("列表内容初始化面板中key重复或为空");
		return ;
	}
	var script=parseFromHTML("#select_change");	
	if(script=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	elements[sid].event.change.script=script;	
	
	elements[sid].event.init.initValue=$.trim($("#select_init .text_static_data:eq(0)").val());
	elements[sid].event.init.fromURL=$.trim($("#select_init .text_static_data:eq(1)").val());
	elements[sid].event.init.sql=$.trim($("#select_init .text_static_data:eq(2)").val());
	elements[sid].event.init.ds=$("#select_init .event_ds").val();
	elements[sid].event.init.httpURL=$.trim($("#select_init .text_static_data:eq(3)").val());
	elements[sid].event.init.httpmethod=$.trim($("#select_init .schema_ds").val());
	elements[sid].event.init.httpReturn=$.trim($("#select_init .text_static_data:last").val());
	if($("#select_init .typeofmsg .radio_item_click").index()==0){
		elements[sid].event.init.valueType="kv";
		elements[sid].event.init.kvPair={};
		$("#select_init .kv_panel .kv_row").each(function(){
			var k=$.trim($(this).find(".k_input").val()); 
			elements[sid].event.init.kvPair[k]=$.trim($(this).find(".v_input").val());
			
		});
	}else{
		elements[sid].event.init.valueType="value";
		elements[sid].event.init.value=$.trim($("#select_init .text_static_data:eq(4)").val());
	}
	
	if(elements[sid].event.init.valueType=="value"&&elements[sid].event.init.httpmethod=="get"){
		alert("GET请求不支持文本,请在POST中提交文本!");
		return ;
	}
 
	elements[sid].event.init2.kvPair={};
	
	$("#select_init2 .kv_row").each(function(){
		
		var k=$.trim($(this).find(".k_input").val()); 
		elements[sid].event.init2.kvPair[k]=$.trim($(this).find(".v_input").val());
		
	});
	
	elements[sid].event.init2.sql=$.trim($("#sqlselect").val());
	elements[sid].event.init2.ds=$("#select_init2 .event_ds").val();
	 
	 $(".select_event_panel").slideUp("fast");
	 $(".select_event_panel .event_item:first").click();

}
function saveEvent4time(){
	if(!FormTools.validKV("#time_init")){
		alert("初始化面板中key重复或为空");
		return ;
	}
	if($("#time_init .time_radio .radio_item_click").index()==0){
		elements[sid].event.init.isNow=false;
	}else{
		elements[sid].event.init.isNow=true;
	}
	
	elements[sid].event.init.fmt=$.trim($("#time_init .text_static_data:eq(0)").val());
	elements[sid].event.init.sql=$.trim($("#time_init .text_static_data:eq(1)").val());
	elements[sid].event.init.ds=$("#time_init .event_ds").val();
	elements[sid].event.init.httpURL=$.trim($("#time_init .text_static_data:eq(2)").val());
	elements[sid].event.init.httpmethod=$.trim($("#time_init .schema_ds").val());
	elements[sid].event.init.httpReturn=$.trim($("#time_init .text_static_data:last").val());
	if($("#time_init .typeofmsg .radio_item_click").index()==0){
		elements[sid].event.init.valueType="kv";
		elements[sid].event.init.kvPair={};
		$("#time_init .kv_panel .kv_row").each(function(){
			var k=$.trim($(this).find(".k_input").val()); 
			elements[sid].event.init.kvPair[k]=$.trim($(this).find(".v_input").val());
			
		});
	}else{
		elements[sid].event.init.valueType="value";
		elements[sid].event.init.value=$.trim($("#time_init .text_static_data:eq(3)").val());
	}
  
	if(elements[sid].event.init.valueType=="value"&&elements[sid].event.init.httpmethod=="get"){
		alert("GET请求不支持文本,请在POST中提交文本!");
		return ;
	}
	 $(".time_event_panel").slideUp("fast");
 
	
	
}

function saveEvent4ueditor(){
	if(!FormTools.validKV("#ueditor_init")){
		alert("初始化面板中key重复或为空");
		return ;
	}
	
	elements[sid].event.init.initValue=$.trim($("#ueditor_init .text_static_data:eq(0)").val());
 
	elements[sid].event.init.sql=$.trim($("#ueditor_init .text_static_data:eq(1)").val());
	elements[sid].event.init.ds=$("#ueditor_init .event_ds").val();
	elements[sid].event.init.httpURL=$.trim($("#ueditor_init .text_static_data:eq(2)").val());
	elements[sid].event.init.httpmethod=$.trim($("#ueditor_init .schema_ds").val());
	elements[sid].event.init.httpReturn=$.trim($("#ueditor_init .text_static_data:last").val());
	if($("#ueditor_init .typeofmsg .radio_item_click").index()==0){
		elements[sid].event.init.valueType="kv";
		elements[sid].event.init.kvPair={};
		$("#ueditor_init .kv_panel .kv_row").each(function(){
			var k=$.trim($(this).find(".k_input").val()); 
			elements[sid].event.init.kvPair[k]=$.trim($(this).find(".v_input").val());
			
		});
	}else{
		elements[sid].event.init.valueType="value";
		elements[sid].event.init.value=$.trim($("#ueditor_init .text_static_data:eq(3)").val());
	}
	if(elements[sid].event.init.valueType=="value"&&elements[sid].event.init.httpmethod=="get"){
		alert("GET请求不支持文本,请在POST中提交文本!");
		return ;
	}
	
	 $(".ueditor_event_panel").slideUp("fast");
 
 
}

function saveEvent4checkbox(){
	if(!FormTools.validKV("#checkbox_init")){
		alert("值初始化面板中key重复或为空");
		return ;
	}
	if(!FormTools.validKV("#checkbox_init2")){
		alert("列表内容初始化面板中key重复或为空");
		return ;
	}
	var script=parseFromHTML("#checkbox_click");	
	if(script=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	elements[sid].event.click.script=script;	
	
	elements[sid].event.init.initValue=$.trim($("#checkbox_init .text_static_data:eq(0)").val());
 
	elements[sid].event.init.sql=$.trim($("#checkbox_init .text_static_data:eq(1)").val());
 
	elements[sid].event.init.ds=$("#checkbox_init .event_ds").val();
	 
	
	elements[sid].event.init2.kvPair={};
	$("#checkbox_init2 .kv_row").each(function(){
		var k=$.trim($(this).find(".k_input").val()); 
		elements[sid].event.init2.kvPair[k]=$.trim($(this).find(".v_input").val());
		
	});
	
	elements[sid].event.init2.sql=$.trim($("#checkbox_sqlselect").val());
	elements[sid].event.init2.ds=$("#checkbox_init2 .event_ds").val();
	
	 $(".checkbox_event_panel").slideUp("fast");
	 $(".checkbox_event_panel .event_item:first").click();

	
}

function saveEvent4radio(){
	if(!FormTools.validKV("#radio_init")){
		alert("值初始化面板中key重复或为空");
		return ;
	}
	if(!FormTools.validKV("#radio_init2")){
		alert("列表内容初始化面板中key重复或为空");
		return ;
	}
	var script=parseFromHTML("#radio_click");
	if(script=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	elements[sid].event.click.script=script;	
	
	elements[sid].event.init.initValue=$.trim($("#radio_init .text_static_data:eq(0)").val());
	elements[sid].event.init.fromURL=$.trim($("#radio_init .text_static_data:eq(1)").val());
	elements[sid].event.init.sql=$.trim($("#radio_init .text_static_data:eq(2)").val());
	elements[sid].event.init.ds=$("#radio_init .event_ds").val();
	elements[sid].event.init.httpURL=$.trim($("#radio_init .text_static_data:eq(3)").val());
	elements[sid].event.init.httpmethod=$.trim($("#radio_init .schema_ds").val());
	elements[sid].event.init.httpReturn=$.trim($("#radio_init .text_static_data:last").val());
	if($("#radio_init .typeofmsg .radio_item_click").index()==0){
		elements[sid].event.init.valueType="kv";
		elements[sid].event.init.kvPair={};
		$("#radio_init .kv_panel .kv_row").each(function(){
			var k=$.trim($(this).find(".k_input").val()); 
			elements[sid].event.init.kvPair[k]=$.trim($(this).find(".v_input").val());
			
		});
	}else{
		elements[sid].event.init.valueType="value";
		elements[sid].event.init.value=$.trim($("#radio_init .text_static_data:eq(4)").val());
	}
	
	if(elements[sid].event.init.valueType=="value"&&elements[sid].event.init.httpmethod=="get"){
		alert("GET请求不支持文本,请在POST中提交文本!");
		return ;
	}
	elements[sid].event.init2.kvPair={};
	$("#radio_init2 .kv_row").each(function(){
		var k=$.trim($(this).find(".k_input").val()); 
		elements[sid].event.init2.kvPair[k]=$.trim($(this).find(".v_input").val());
		
	});
	
	elements[sid].event.init2.sql=$.trim($("#radio_sqlselect").val());
	elements[sid].event.init2.ds=$("#radio_init2 .event_ds").val();
	
	 $(".radio_event_panel").slideUp("fast");
	 $(".radio_event_panel .event_item:first").click();

}
function saveEvent4textarea(){
	if(!FormTools.validKV("#textarea_init")){
		alert("key重复或为空");
		return ;
	}
	var script=parseFromHTML("#textarea_after_init");
	if(script=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	var script1=parseFromHTML("#textarea_click");
	if(script1=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	var script2=parseFromHTML("#textarea_dblclick");
	if(script2=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	var script3=parseFromHTML("#textarea_focus");
	if(script3=="error"){
		alert("所有输入框不能为空");
		return ;
	}
 
	elements[sid].event.afterinit.script=script;
	elements[sid].event.click.script=script1;
	elements[sid].event.dblclick.script=script2;
	elements[sid].event.focus.script=script3;
	 
	elements[sid].event.init.initValue=$.trim($("#textarea_init .text_static_data:eq(0)").val());
 
	elements[sid].event.init.sql=$.trim($("#textarea_init .text_static_data:eq(1)").val());
	elements[sid].event.init.ds=$("#textarea_init .event_ds").val();
	elements[sid].event.init.httpURL=$.trim($("#textarea_init .text_static_data:eq(2)").val());
	elements[sid].event.init.httpmethod=$.trim($("#textarea_init .schema_ds").val());
	elements[sid].event.init.httpReturn=$.trim($("#textarea_init .text_static_data:last").val());
	 
	if($("#textarea_init .typeofmsg .radio_item_click").index()==0){
		elements[sid].event.init.valueType="kv";
		elements[sid].event.init.kvPair={};
		$("#textarea_init .kv_panel .kv_row").each(function(){
			var k=$.trim($(this).find(".k_input").val()); 
			elements[sid].event.init.kvPair[k]=$.trim($(this).find(".v_input").val());
			
		});
	}else{
		elements[sid].event.init.valueType="value";
		elements[sid].event.init.value=$.trim($("#textarea_init .text_static_data:eq(3)").val());
	}
 
	 $(".textarea_event_panel").slideUp("fast");
	 $(".textarea_event_panel .event_item:first").click();
}

function saveEvent4text(){
	if(!FormTools.validKV("#text_init")){
		alert("key重复或为空");
		return ;
	}
	var script=parseFromHTML("#text_after_init");
	if(script=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	var script1=parseFromHTML("#text_click");
	if(script1=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	var script2=parseFromHTML("#text_dblclick");
	if(script2=="error"){
		alert("所有输入框不能为空");
		return ;
	}
	var script3=parseFromHTML("#text_focus");
	if(script3=="error"){
		alert("所有输入框不能为空");
		return ;
	}
 
	elements[sid].event.afterinit.script=script;
	elements[sid].event.click.script=script1;
	elements[sid].event.dblclick.script=script2;
	elements[sid].event.focus.script=script3;
 
	elements[sid].event.init.initValue=$.trim($("#text_init .text_static_data:eq(0)").val());
	elements[sid].event.init.fromURL=$.trim($("#text_init .text_static_data:eq(1)").val());
	elements[sid].event.init.sql=$.trim($("#text_init .text_static_data:eq(2)").val());
	elements[sid].event.init.ds=$("#text_init .event_ds").val();
	elements[sid].event.init.httpURL=$.trim($("#text_init .text_static_data:eq(3)").val());
	elements[sid].event.init.httpmethod=$.trim($("#text_init .schema_ds").val());
	elements[sid].event.init.httpReturn=$.trim($("#text_init .text_static_data:last").val());
	 
	if($("#text_init .typeofmsg .radio_item_click").index()==0){
		elements[sid].event.init.valueType="kv";
		elements[sid].event.init.kvPair={};
		$("#text_init .kv_panel .kv_row").each(function(){
			var k=$.trim($(this).find(".k_input").val()); 
			elements[sid].event.init.kvPair[k]=$.trim($(this).find(".v_input").val());
			
		});
	}else{
		elements[sid].event.init.valueType="value";
		elements[sid].event.init.value=$.trim($("#text_init .text_static_data:eq(4)").val());
	}
 
	if(elements[sid].event.init.valueType=="value"&&elements[sid].event.init.httpmethod=="get"){
		alert("GET请求不支持文本,请在POST中提交文本!");
		return ;
	}
	
	 $(".text_event_panel").slideUp("fast");
	 $(".text_event_panel .event_item:first").click();
}

function text_clear(){
	$("#text_click").hide();
	$("#text_init").hide();
	$("#text_after_init").hide();
	$("#text_dblclick").hide();
	$("#text_focus").hide();
	 
}
function textarea_clear(){
	$("#textarea_click").hide();
	$("#textarea_init").hide();
	$("#textarea_after_init").hide();
	$("#textarea_dblclick").hide();
	$("#textarea_focus").hide();
	 
}
function textarea_click(){
	textarea_clear();
	$("#textarea_click").show();
}
function textarea_init(){
	textarea_clear();
	$("#textarea_init").show();
}
function textarea_after_init(){
	textarea_clear();
	$("#textarea_after_init").show();
}
function textarea_dblclick(){
	textarea_clear();
	$("#textarea_dblclick").show();
}
function textarea_focus(){
	textarea_clear();
	$("#textarea_focus").show();
}
function password_clear(){
	$("#password_click").hide();
	$("#password_init").hide();
	$("#password_after_init").hide();
	$("#password_dblclick").hide();
	$("#password_focus").hide();
	 
}

function select_clear(){
	$("#select_change").hide();
	$("#select_init").hide();
	$("#select_init2").hide();
	
}
function radio_clear(){
	$("#radio_click").hide();
	$("#radio_init").hide();
	$("#radio_init2").hide();
	
}
function checkbox_clear(){
	$("#checkbox_click").hide();
	$("#checkbox_init").hide();
	$("#checkbox_init2").hide();
	
}

function text_init(){
	 text_clear();
	$("#text_init").show();
	
}
function password_init(){
	 password_clear();
	$("#password_init").show();
	
}
function select_init(){
	 select_clear();
	$("#select_init").show();
	
}
function checkbox_init(){
	 checkbox_clear();
	$("#checkbox_init").show();
	
}
function checkbox_init2(){
	 checkbox_clear();
	$("#checkbox_init2").show();
	
}
function checkbox_click(){
	 checkbox_clear();
	$("#checkbox_click").show();
	
}

function radio_init(){
	 radio_clear();
	$("#radio_init").show();
	
}
function radio_init2(){
	 radio_clear();
	$("#radio_init2").show();
	
}
function radio_click(){
	 radio_clear();
	$("#radio_click").show();
	
}

function text_click(){
	 text_clear();
	$("#text_click").show();
	
}
function password_click(){
	 password_clear();
	$("#password_click").show();
	
}
function text_after_init(){
	 text_clear();
	$("#text_after_init").show();
	
}
function password_after_init(){
	 password_clear();
	$("#password_after_init").show();
	
}
function select_init2(){
	 select_clear();
	$("#select_init2").show();
	
}
function select_change(){
	select_clear();
	$("#select_change").show();
	
}
function text_dblclick(){
	 text_clear();
	$("#text_dblclick").show();
	
}
function password_dblclick(){
	 password_clear();
	$("#password_dblclick").show();
	
}
function text_focus(){
	 text_clear();
	$("#text_focus").show();
	
}
function password_focus(){
	 password_clear();
	$("#password_focus").show();
	
}


function toggleSelect(v){
	
	if($(v).hasClass("kv_row_selected")){
		$(v).removeClass("kv_row_selected");
		$(v).find("*").css("background-color","#191919");
		$(v).find("*").css("color","#a2a2a2");
	}else {
		$(v).addClass("kv_row_selected");
		$(v).find("*").css("background-color","#FF5809");
		$(v).find("*").css("color","#000000");
	}
	 
}
$(".kv_panel_del").click(function(){
	$(".kv_panel .kv_row_selected").remove();
});
$(".kv_panel_del2").click(function(){
	$(".kv_panel2 .kv_row_selected").remove();
});
$(".kv_panel_add").click(function(){
	
	 $(".kv_panel").append('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input"></div><div class="v_column"><input type="text" class="v_input"></div></div>');
	
});
$(".kv_panel_add2").click(function(){
	
	 $(".kv_panel2").append('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" class="k_input"></div><div class="v_column"><input type="text" class="v_input"></div></div>');
	
});
 
function setCssSelect(cssClass){
	$(cssClass).parent().next().next().next().css("background-color","#191919");
	$(cssClass).parent().next().next().next().css("border-width","0px");
	$(cssClass).parent().parent().css("background-color","#191919");
	$(cssClass).parent().parent().css("border-width","0px");
	$(cssClass).parent().parent().css("height","22px");
	}
	
$("#upfile").change(function(){
	  
    var imgPath = $("#upfile").val();  
    if (imgPath == "")   return;  
    
    //判断上传文件的后缀名  
    var strExtension = imgPath.substr(imgPath.lastIndexOf('.') + 1);  
    if (strExtension != 'jpg' && strExtension != 'gif'  
    && strExtension != 'png' && strExtension != 'bmp') {  
        alert("请选择图片文件");  
        return;  
    }  
    
 
    
    
    $.ajaxFileUpload(  
            {  
                 url:context+'/upload',         
                 secureuri:false,  
                 fileElementId:'upfile',         
                 dataType: 'json',   
                 success:function(data){
                	data=data.replace("<pre>","");
                	data=data.replace("</pre>","");
                	data=$.trim(data);
                 	 elements[sid].style.backgroundImage=data;
                 	  if(sid.indexOf("file_")!=-1){
                 	 $("#"+sid).parent().css("background-image","url("+context+"/resources/uploadimg/"+data+")");
                 	  }else
                 	 $("#"+sid).css("background-image","url("+context+"/resources/uploadimg/"+data+")");
                 }
             }  
           ); 

});



function getQuery(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); 
    return null;
    } 

$(".title_data,.title_data_img").click(function(){
$(".db").slideDown("fast");	 
 });
 
 var dataSource=new Object();
 
 $.post(context+"/getPageCodeAndName",
			{"project":getQuery("project")},
			function(data){
			$("#project_code").text(data.CODE);
			});
				
 $.post(context+"/ds/get",
			{"project":projectid},
			function(data){
		 
	 var json=JSON.parse(data);
	 var count=0;
	 var html="";
	 for(var k in json){
		if(count==0){
			$(".dataSource:first .db_name").val(k);
			$(".dataSource:first .db_password").val(json[k].password);
			$(".dataSource:first .db_username").val(json[k].username);
			$(".dataSource:first .db_url").val(json[k].url);
			html="<option value="+k+">"+k+"</option>"
		}else{
			addDB();
			$(".dataSource:eq("+count+") .db_name").val(k);
			$(".dataSource:eq("+count+") .db_password").val(json[k].password);
			$(".dataSource:eq("+count+") .db_username").val(json[k].username);
			$(".dataSource:eq("+count+") .db_url").val(json[k].url);
			html+="<option value="+k+">"+k+"</option>"
		}
		count++;
	 }
	 $(".event_ds").html(html);
	 $(".event_ds").easyDropDown();
	 setCssSelect(".event_ds");
 
	 
			});
 
 function saveDB(){
	 var namearr=new Array();
	 var nameValid=true,nameNullValid=true;
	$(".db .db_name").each(function(){
		namearr.push($.trim($(this).val()));
		if($.trim($(this).val())=="") nameNullValid=false;
	});
	$(".db .db_name").each(function(){
		var count=0;
		for(var i=0;i<namearr.length;i++){
			if($.trim($(this).val())==namearr[i]) count++;
		}
		if(count>1) nameValid=false;
	});
	 if(!nameValid){
		 alert("别名不能重复");
	 return ;
	 }
	 if(!nameNullValid){
		 alert("别名不能为空");
	 return ;
	 }
	 
	 var urlarr=new Array();
	 var urlValid=true,urlNullValid=true;
	$(".db .db_url").each(function(){
		urlarr.push($.trim($(this).val()));
		if($.trim($(this).val())=="") urlNullValid=false;
	});
	$(".db .db_url").each(function(){
		var count=0;
		for(var i=0;i<urlarr.length;i++){
			if($.trim($(this).val())==urlarr[i]) count++;
		}
		if(count>1) urlValid=false;
	});
	 if(!urlValid){
		 alert("地址不能重复");
	 return ;
	 }
	 if(!urlNullValid){
		 alert("地址不能为空");
	 return ;
	 }
	 
	 
	 var usernameNullValid=true;
	$(".db .db_username").each(function(){
		if($.trim($(this).val())=="") usernameNullValid=false;
	});
 
	 if(!usernameNullValid) {
		 alert("账号不能为空");
	 return ;
	 }
	 
	 var passwordNullValid=true;
		$(".db .db_password").each(function(){
			if($.trim($(this).val())=="") passwordNullValid=false;
		});
	 
		 if(!passwordNullValid){
			 alert("密码不能为空");
		 return ;
		 }
		 
		 var obj=new Object();
		 var html="";
		 $(".db .dataSource").each(function(){
			 var name=$(this).find(".db_name").val();
			 html+="<option value="+name+">"+name+"</option>"
			 obj[name]=new Object();
			 obj[name].username=$(this).find(".db_username").val();
			 obj[name].password=$(this).find(".db_password").val();
			 obj[name].url=$(this).find(".db_url").val();
		 });
		 try{
		 $(".event_ds").easyDropDown("destroy");
		 }catch(e){}
		 $(".event_ds").html(html);
		 $(".event_ds").easyDropDown();
		 setCssSelect(".event_ds");
     	 dataSource=new Object();
		 dataSource=obj;
		 
	$.post(context+"/ds/saveOrUpdate",
			{"data":JSON.stringify(obj),"project":projectid},
			function(){
	 alert("已保存");
	});
	 
 }

function delDB(v){
	 $(v).parents(".dataSource").remove();
}


 

function addDB(){
	var s='<div class="dataSource"><div class="css_row">';
	s+='<div class="db_add" onclick=addDB() ></div><div class="db_del" onclick=delDB(this)></div></div>';
	s+='<div class="css_row"><div style="float:left;">别名</div> <input type="text"  class="db_name"  /></div>';
	s+=' <div class="css_row"><div style="float:left;">地址</div> <input type="text"  class="db_url"  /> </div>';
	s+='<div class="css_row"><div style="float:left;">账号</div> <input   type="text"   class="db_username"  />';
	s+='<div style="float:left;width:50px;text-align:right;"> 密码</div> <input   type="password"   class="db_password"  /></div></div>';

	$(".db>div:first").append(s);
	
} 


$(".tip_css .border_width:eq(1)").keyup(function(){
 var size=$.trim($(this).val());
 
 if(isNaN(size)) {
 alert("文字大小必须为数字");
 return ;
 }
 
$("#tip_"+sid).css("font-size",size+"px");
elements[sid].valid.style.fontSize=size;
});

$(".tip_css .border_width:eq(2)").keyup(function(){
 var paddingleft=$.trim($(this).val());
 if(isNaN(paddingleft)) {
 alert("左边距必须为数字");
 return ;
 }
$("#tip_"+sid).css("padding-left",paddingleft+"px");
elements[sid].valid.style.paddingLeft=paddingleft;
});

$(".css input:text:eq(5)").keyup(function(){
	 var paddingleft=$.trim($(this).val());
	 if(isNaN(paddingleft)) {
	 alert("左边距必须为数字");
	 return ;
	 }
	$("#"+sid).css("padding-left",paddingleft+"px");
	elements[sid].style.paddingLeft=paddingleft;
	});

$(".css .border_color:eq(0)").keyup(function(){
	 var borderColor=$.trim($(this).val());
	 
	$("#"+sid).css("border-color","#"+borderColor);
	elements[sid].style.borderColor=borderColor;
	});

$(".css .border_color:eq(1)").keyup(function(){
	 var color=$.trim($(this).val());
	 
	$("#"+sid).css("color","#"+color);
	elements[sid].style.color=color;
	});

$(".css .border_color:eq(2)").keyup(function(){
	 var backgroundColor=$.trim($(this).val());
	 
	$("#"+sid).css("background-color","#"+backgroundColor);
	elements[sid].style.backgroundColor=backgroundColor;
	});

$(".tip_css .border_width:eq(0)").keyup(function(){
 var width=$.trim($(this).val());
 if(isNaN(width)) {
 alert("边框宽度必须为数字");
 return ;
 }
$("#tip_"+sid).css("border-width",width);
elements[sid].valid.style.borderWidth=width;
});

function savePage(){
	 var w=$.trim($(".page_size:first").val());
	 var h=$.trim($(".page_size:eq(1)").val());
	 if(isNaN(w)||isNaN(h)){
		 alert("宽度和高度必须为数字");
		 return ;
	 }
	 
$(".main").width(w);
$(".main").height(h);
$(".main").css("background-color","#"+$(".page_size:last").val());
$(".page").slideUp("fast");
 $(".main_wrap").width($(window).width()-292);
 $(".main_wrap").height($(window).height()-110);
 elements["page"].title=$(".page_size:eq(2)").val();
 elements["page"].bg=$(".page_size:last").val();
 
}

$(".title_page_img,.title_page").mouseover(function(){
 
$(".title_page_img").addClass("title_page_img2");
$(".title_page").addClass("title_page2");

});



$(".title_page_img,.title_page").mouseout(function(){
	 
	$(".title_page_img").removeClass("title_page_img2");
	$(".title_page").removeClass("title_page2");
	 

	});
	
$(".title_save_img,.title_save").mouseover(function(){
	 
	$(".title_save_img").addClass("title_save_img2");
	$(".title_save").addClass("title_page2");
	});

$(".title_save_img,.title_save").click(function(){
     var c=0;
   
	 for(var i in elements)  c++;
 
	if(c<3){
		alert("页面内容为空，不能保存！");
	return; 
	}

 $("div[id^='wrap_']").each(function(){
	var id=$(this).find(".tid").text();

	elements[id].style.x=parseInt($(this).css("left"));
	elements[id].style.y=parseInt($(this).css("top"));
	 
 });
 
 if(ver!=0){
		
		$.post(context+"/update",
				{"project":projectid,"pid":pid,"json":JSON.stringify(elements),"ver":ver},
				function(data){
					if(data==true){
					$(".path").slideUp('fast');
					alert("保存成功");
					}else  alert("保存失败");
			 
				});
		
		return ;
	}
 
 
 $.post(context+"/created",
			{"project":projectid,"pid":pid},
			function(data){
				if(data==false){
					 $(".path").slideDown('fast');
				}else  {
					$.post(context+"/save",
							{"project":projectid,"pid":pid,"json":JSON.stringify(elements)},
							function( ){ 
								alert("保存成功"); 
							});
				}
			});
  	
});

function save(){
 
	
	var url=$(".path_url").val();
    var projectcode=$("#project_code").text();
	if(/\w/.test(url)){
		$(".reqaddr").html("访问地址 &nbsp;&nbsp;/public/"+projectcode+"/"+url);
		$(".reqaddr").click(function(){
			window.open(context+"/public/"+projectcode+"/"+url);
			
		});
		
		$.post(context+"/createdName",
				{"project":projectid,"path":url},
				function(data){
					 
			 if(data==false){
				 $.post(context+"/save",
							{"project":projectid,"pid":pid,"json":JSON.stringify(elements),"path":url},
							function(data){
								 
								$(".path").slideUp('fast');
								alert("保存成功");
								 
							});
			 }else{
				 alert("路径已经存在");
			 }
			 
				});
		
		
		
	}else  alert("URL仅支持字母数字下划线");
 
}

$(".title_open_img,.title_open").click(function(){
	 $(".open_panel").slideDown("fast");
 
	});


	$(".title_save_img,.title_save").mouseout(function(){
		 
		$(".title_save_img").removeClass("title_save_img2");
		$(".title_save").removeClass("title_page2");
	 
		});
	
$(".title_font_img,.title_font").mouseover(function(){
	 
	$(".title_font_img").addClass("title_font_img2");
	$(".title_font").addClass("title_page2");
	});

$(".title_event_img,.title_event").mouseover(function(){
	 
	$(".title_event_img").addClass("title_event_img2");
	$(".title_event").addClass("title_page2");
	});
	
$(".title_event_img,.title_event").click(function(){
window.open(context+"/help");	 
});
	
$(".title_open_img,.title_open").mouseover(function(){
	 
	$(".title_open_img").addClass("title_open_img2");
	$(".title_open").addClass("title_page2");
	});

$(".title_open_img,.title_open").mouseout(function(){
	 
	$(".title_open_img").removeClass("title_open_img2");
	$(".title_open").removeClass("title_page2");
	});

$(".title_event_img,.title_event").mouseout(function(){
	 
	$(".title_event_img").removeClass("title_event_img2");
	$(".title_event").removeClass("title_page2");
	});

$(".title_table_img,.title_table").mouseover(function(){
	 
	$(".title_table_img").addClass("title_table_img2");
	$(".title_table").addClass("title_page2");
	});
	
$(".title_osave_img,.title_osave").mouseover(function(){
	 
	$(".title_osave_img").addClass("title_osave_img2");
	$(".title_osave").addClass("title_page2");
	});

$(".title_osave_img,.title_osave").click(function(){
var url=location.toString();	
	var v=confirm("确定要创建新版本吗?");
	if(v){
		location=url.replace(/ver=\d+/,"ver=0");
	}
	
});

$(".title_osave_img,.title_osave").mouseout(function(){
	 
	$(".title_osave_img").removeClass("title_osave_img2");
	$(".title_osave").removeClass("title_page2");
	});
	
$(".title_report_img,.title_report").mouseover(function(){
	 
	$(".title_report_img").addClass("title_report_img2");
	$(".title_report").addClass("title_page2");
	});
$(".title_report_img,.title_report").mouseout(function(){
	 
	$(".title_report_img").removeClass("title_report_img2");
	$(".title_report").removeClass("title_page2");
	});
$(".title_table_img,.title_table").mouseout(function(){
	 
	$(".title_table_img").removeClass("title_table_img2");
	$(".title_table").removeClass("title_page2");
	});
$(".title_data_img,.title_data").mouseover(function(){
	 
	$(".title_data_img").addClass("title_data_img2");
	$(".title_data").css("color","#fff");
 
	});
$(".title_img_img,.title_img").mouseover(function(){
	 
	$(".title_img_img").addClass("title_img_img2");
	$(".title_img").css("color","#fff");
 
	});
$(".title_img_img,.title_img").mouseout(function(){
	 
	$(".title_img_img").removeClass("title_img_img2");
	$(".title_img").css("color","#a2a2a2");
	});
$(".title_tip_img,.title_tip").mouseover(function(){
	 
	$(".title_tip_img").addClass("title_tip_img2");
	$(".title_tip").css("color","#fff");
 
	});
$(".title_tip_img,.title_tip").mouseout(function(){
	 
	$(".title_tip_img").removeClass("title_tip_img2");
	$(".title_tip").css("color","#a2a2a2");
	});
$(".title_data_img,.title_data").mouseout(function(){
	 
	$(".title_data_img").removeClass("title_data_img2");
	$(".title_data").css("color","#a2a2a2");
	});
$(".title_form_img,.title_form").mouseover(function(){
	 
	$(".title_form_img").addClass("title_form_img2");
	$(".title_form").addClass("title_page2");
	});

$(".title_form_img,.title_form").mouseout(function(){
 
$(".title_form_img").removeClass("title_form_img2");
$(".title_form").removeClass("title_page2");
 

});
$(".title_font_img,.title_font").mouseout(function(){
	 
	$(".title_font_img").removeClass("title_font_img2");
	$(".title_font").removeClass("title_page2");
	 

	});
$(".title_form_img,.title_form").click(function(){
	  $(".form_dialog").slideDown("fast");
	});
	
$(".title_tip_img,.title_tip").click(function(){
	$(".tip_editor input:text").val("");
	 $(".tip_editor   .radio_item").removeClass("radio_item_click");
	 if(elements["window"].type=="custom"){
		 $(".tip_editor   .radio_item:first").addClass("radio_item_click");
		 }else{
		 $(".tip_editor   .radio_item:last").addClass("radio_item_click");
	}
	$(".tip_editor input:text:eq(0)").val(elements["window"].topbg);
	$(".tip_editor input:text:eq(1)").val(elements["window"].midbg);
	$(".tip_editor input:text:eq(2)").val(elements["window"].bottombg);
	$(".tip_editor input:text:eq(3)").val(elements["window"].fontcolor);
	$(".tip_editor input:text:eq(4)").val(elements["window"].titlecolor);
	$(".tip_editor input:text:eq(5)").val(elements["window"].okbg);
	$(".tip_editor input:text:eq(6)").val(elements["window"].okfont);
 
	  $(".tip_editor").slideDown("fast");
	});

$(".title_page_img,.title_page").click(function(){
$(".page").slideDown("fast");

});


var gid={table:0,img:0,text:0,password:0,select:0,radio:0,checkbox:0,textarea:0,font:0,file:0,hidden:0,ueditor:0,button:0,time:0};
if(ver!=0){
	$.ajax({async:false,
	    url:context+"/load",
        type:"post",
		data:{"pid":pid,
	    "projectid":projectid,
	    "ver":ver},
		success:function(data){
			elements=JSON.parse(data);
	    
	    for(var k in elements){
	    	  autoFormFactory(k,elements[k]);
	    }
			   
	 $("#right_content,#right_content_modal").height($(".valid").height()-30);
			 
			 
	    
}});
	
}

var sid="";
$(".tipcontent,.main_wrap,.kv_panel,.open_content").niceScroll({
 autohidemode: false,cursorborder :"0px" ,cursorcolor:"#414141" 
});

$(".db>div:first").niceScroll({
  autohidemode: false,cursorborder :"0px" ,cursorcolor:"#414141",horizrailenabled:false
});
 
$("#alert_color").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
	 

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});

$(".tip_css .border_color:eq(0)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
		$("#tip_"+sid).css("border-color","#"+hex);
		elements[sid].valid.style.borderColor=hex;

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});

$(".tip_css .border_color:eq(1)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
		$("#tip_"+sid).css("color","#"+hex);
		elements[sid].valid.style.color=hex;

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});

$(".tip_css .border_color:eq(2)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
		$("#tip_"+sid).css("background-color","#"+hex);
		elements[sid].valid.style.backgroundColor=hex;

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});


 $(".page_size:last").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});
 
$(".border_color:eq(0)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex);
		 //下面是对象处理
		   elements[sid].style.borderColor=hex;
		 //下面是视觉处理
			if(sid.indexOf("select")!=-1){
			$("#"+sid).parent().parent().css("border-color","#"+hex);
			$("#"+sid).parent().next().next().next().css("border-color","#"+hex);
			}else
		$("#"+sid).get(0).style.borderColor="#"+hex;
		
		$(el).ColorPickerHide();
	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});

$(".border_color:eq(1)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex);
		
		 //下面是对象处理
		   elements[sid].style.color=hex;
		 //下面是视觉处理
		
		if(sid.indexOf("radio")!=-1){
	
	var tmpsid=sid.replace("radio_","wrap_radio_");
  	$("#"+tmpsid+">div").css("color","#"+hex);
	 
	}else if(sid.indexOf("checkbox")!=-1){
      var tmpsid=sid.replace("checkbox_","wrap_checkbox_");
  	$("#"+tmpsid+">div").css("color","#"+hex);
	
	}else if(sid.indexOf("select")!=-1){
		$("#"+sid).parent().next().get(0).style.color="#"+hex;
			$("#"+sid).parent().next().next().next().children().children().css("color","#"+hex); 
		}
		else{
	 $("#"+sid).get(0).style.color="#"+hex;
		}
		
		$(el).ColorPickerHide();
	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});

$(".css .border_color:eq(2)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex);
		 //下面是对象处理
		   elements[sid].style.backgroundColor=hex;
		 //下面是视觉处理
		if(sid.indexOf("select")!=-1){
			$("#"+sid).parent().next().next().next().css("background-color","#"+hex);
		$("#"+sid).parent().parent().css("background-color","#"+hex);
		}
	else
	  $("#"+sid).get(0).style.backgroundColor="#"+hex;
		
		
		$(el).ColorPickerHide();
	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});

function zero_fill_hex(num, digits) {
  var s = num.toString(16);
  while (s.length < digits)
    s = "0" + s;
  return s;
}
function rgb2hex(rgb) {
//ie8
  if (rgb.charAt(0) == '#') return rgb.replace("#","");
  var ds = rgb.split(/\D+/);
  var decimal = Number(ds[1]) * 65536 + Number(ds[2]) * 256 + Number(ds[3]);
  return  zero_fill_hex(decimal, 6);
}

function setWidth(){
 var width=$.trim($(".css input:text:eq(0)").val());
 if(isNaN(width)) {
 alert("边框宽度必须为数字");
 return ;
 }
 //下面是对象处理
   elements[sid].style.borderWidth=width;
 
 //下面是视觉处理
 	if(sid.indexOf("select")!=-1) 
			$("#"+sid).parent().parent().get(0).style.borderWidth=width+"px";
		 else{
   $("#"+sid).get(0).style.borderWidth=width+"px";
}

}

function setSize(){
   
 
   var size=$.trim($(".css input:text:eq(2)").val());
  if(isNaN(size)){
  alert("文字大小必须为数字");
  return ;
  }
  //下面是对象处理
  elements[sid].style.fontSize=size;
  
  
  //下面是视觉处理
   if(sid.indexOf("radio")!=-1){
	
	var tmpsid=sid.replace("radio_","wrap_radio_");
  	$("#"+tmpsid+">div").css("font-size",size+"px");
	
	return ;
	}
     if(sid.indexOf("checkbox")!=-1){
	
	var tmpsid=sid.replace("checkbox_","wrap_checkbox_");
  	$("#"+tmpsid+">div").css("font-size",size+"px");
	
	return ;
	}
  	if(sid.indexOf("select")!=-1){
	$("#"+sid).parent().next().css("font-size",size+"px");		
	$("#"+sid).parent().next().next().next().children().children().css("font-size",size+"px");
			}else
    $("#"+sid).get(0).style.fontSize=size+"px";
    
 }
 
function getValid(){
	if(sid.indexOf("img_")!=-1) {
		$("#right_content_modal").show();
		return ;
	}
	if(sid.indexOf("table_")!=-1) {
		$("#right_content_modal").show();
		return ;
	}
	if(sid.indexOf("select_")!=-1) {
		$("#right_content_modal").show();
		return ;
	}
	if(sid.indexOf("font_")!=-1) {
		$("#right_content_modal").show();
		return;
	}
	if(sid.indexOf("file_")!=-1) {
		$("#right_content_modal").show();
		return ;
	}
	if(sid.indexOf("hidden_")!=-1){
		$("#right_content_modal").show();
		return ;
	}
	if(sid.indexOf("time_")!=-1){
		$("#right_content_modal").show();
		return ;
	}
	if(sid.indexOf("ueditor_")!=-1) {
		$("#right_content_modal").show();
		return ;
	}
	if(sid.indexOf("button_")!=-1) {
		$("#right_content_modal").show();
		return ;
	}
	if(sid.indexOf("radio_")!=-1) {
		$("#right_content_modal").show();
		return ;
	}
	if(sid.indexOf("checkbox_")!=-1) {
		$("#right_content_modal").show();
		return ;
	}
 
	$("#right_content_modal").hide();
	$(".tipcontent").val(elements[sid].valid.text);
	if(elements[sid].valid.on==0){
		$('.trigger_type .radio_item').removeClass("radio_item_click");
		 $('.trigger_type .radio_item:first').addClass("radio_item_click");
	}else{
		$('.trigger_type .radio_item').removeClass("radio_item_click");
		 $('.trigger_type .radio_item:last').addClass("radio_item_click");
	}
	if(elements[sid].valid.position==0){
		$('.tip_position .radio_item').removeClass("radio_item_click");
		 $('.tip_position .radio_item:first').addClass("radio_item_click");
	}else{
		$('.tip_position .radio_item').removeClass("radio_item_click");
		 $('.tip_position .radio_item:last').addClass("radio_item_click");
	}
	if(elements[sid].valid.type!=8){
		$('.rule_div .radio_item').removeClass("radio_item_click");
		 $('.rule_div .radio_item:first').addClass("radio_item_click");
	}else{
		$('.rule_div .radio_item').removeClass("radio_item_click");
		 $('.rule_div .radio_item:last').addClass("radio_item_click");
	}  
	
	$(".tip_css .border_color:eq(2)").val(elements[sid].valid.style.backgroundColor);
	$(".tip_css .border_color:eq(1)").val(elements[sid].valid.style.color);
	$(".tip_css .border_color:eq(0)").val(elements[sid].valid.style.borderColor);
	$(".tip_css .border_width:eq(0)").val(elements[sid].valid.style.borderWidth);
	$(".tip_css .border_width:eq(1)").val(elements[sid].valid.style.fontSize); 
	$(".tip_css .border_width:eq(2)").val(elements[sid].valid.style.paddingLeft);
	
     var t=parseInt(elements[sid].valid.type);
    
	 $("#rules").easyDropDown("select",t<8?t:0);
   
	$(".myrule").val(elements[sid].valid.regExp);
	
}
function hiddenAllCss(){
	$(".css .css_row:last>div").addClass("gray");
	$(".css .css_row:first>div").addClass("gray");
	$(".css .css_row:eq(2)>div").addClass("gray");
	$(".css .css_row:eq(1)>div").addClass("gray");
	$(".css .css_row:first>input").attr("disabled",true);
	$(".css .css_row:eq(2)>input").attr("disabled",true);
	$(".css .css_row:eq(1)>input").attr("disabled",true);
	$(".css .css_row:first>input").addClass("gray");
	$(".css .css_row:last>input").attr("disabled",true);
	$(".css .css_row:eq(2)>input").addClass("gray");
	$(".css .css_row:eq(1)>input").addClass("gray");
	$(".css .css_row:last>input").addClass("gray");

	$("#upfile").hide();
	$(".bgsetting").css("opacity","0.5");
	$(".bgsetting").css("filter","alpha(opacity=50)");
	
}


function getCss(){
 
	if(sid.indexOf("select_")!=-1){
		$(".css input:text:eq(4)").val(elements[sid].style.backgroundColor);
		$(".css input:text:eq(0)").val(elements[sid].style.borderWidth);
		$(".css input:text:eq(1)").val(elements[sid].style.borderColor);
		$(".css input:text:eq(2)").val(elements[sid].style.fontSize);
		$(".css input:text:eq(3)").val(elements[sid].style.color);
		$(".css .css_row:last>div").addClass("gray");
		$(".css .css_row:last>input").attr("disabled",true);
		$(".css .css_row:last>input").addClass("gray");
		$("#upfile").hide();
		$(".bgsetting").css("opacity","0.5");
		$(".bgsetting").css("filter","alpha(opacity=50)");
		$("#fonts").easyDropDown("select",parseInt(elements[sid].style.fontFamily))
		 return ;
	}
	if(sid.indexOf("hidden_")!=-1||sid.indexOf("ueditor_")!=-1||sid.indexOf("img_")!=-1){
		hiddenAllCss();

		 return ;
	}
 
	if(sid.indexOf("table_")!=-1){
		$(".css .css_row:eq(0)>div").removeClass("gray");
		$(".css .css_row:eq(0)>input").removeClass("gray");
		$(".css .css_row:eq(0)>input").attr("disabled",false);
		$(".css .css_row:eq(2)>div:eq(1)").addClass("gray");
		$(".css .css_row:eq(2)>div:eq(0)").removeClass("gray");
		$(".css .css_row:eq(2)>input:eq(0)").attr("disabled",false);
		$(".css .css_row:eq(2)>input:eq(0)").removeClass("gray");
		
		$(".css .css_row:eq(3)>div:eq(1)").removeClass("gray");
		$(".css .css_row:eq(3)>input:eq(0)").attr("disabled",false);
		$(".css .css_row:eq(3)>input:eq(0)").removeClass("gray");
		
		$(".css .css_row:eq(1)>div").addClass("gray");
	  
		$(".css .css_row:eq(1)>input").attr("disabled",true);
		$(".css .css_row:eq(1)>input").addClass("gray");
		$("#upfile").show();
		$(".bgsetting").css("opacity","1");
		$(".bgsetting").css("filter","alpha(opacity=100)");
		$(".css .css_row:last>div:first").removeClass("gray");
		 return ;
	}
	if(sid.indexOf("file_")!=-1){
 
		$(".css .css_row:last>div").addClass("gray");
		$(".css .css_row:first>div").addClass("gray");
		$(".css .css_row:eq(2)>div").addClass("gray");
		$(".css .css_row:eq(1)>div").addClass("gray");
		$(".css .css_row:first>input").attr("disabled",true);
		$(".css .css_row:eq(2)>input").attr("disabled",true);
		$(".css .css_row:eq(1)>input").attr("disabled",true);
		$(".css .css_row:first>input").addClass("gray");
		$(".css .css_row:last>input").attr("disabled",true);
		$(".css .css_row:eq(2)>input").addClass("gray");
		$(".css .css_row:eq(1)>input").addClass("gray");
		$(".css .css_row:last>input").addClass("gray");
		
		$("#upfile").show();
		$(".bgsetting").css("opacity","1");
		$(".bgsetting").css("filter","alpha(opacity=100)");
		$(".css .css_row:last>div:first").removeClass("gray");
		 return ;
	}
	if(sid.indexOf("radio_")!=-1||sid.indexOf("checkbox_")!=-1){
		$(".css input:text:eq(4)").val(elements[sid].style.backgroundColor);
		$(".css input:text:eq(0)").val(elements[sid].style.borderWidth);
		$(".css input:text:eq(1)").val(elements[sid].style.borderColor);
		$(".css input:text:eq(2)").val(elements[sid].style.fontSize);
		$(".css input:text:eq(3)").val(elements[sid].style.color);
		$(".css .css_row:last>div").addClass("gray");
		$(".css .css_row:first>div").addClass("gray");
		$(".css .css_row:eq(2)>div:first").addClass("gray");
		$(".css .css_row:first>input").attr("disabled",true);
		$(".css .css_row:eq(2)>input:first").attr("disabled",true);
		$(".css .css_row:first>input").addClass("gray");
		$(".css .css_row:last>input").attr("disabled",true);
		$(".css .css_row:eq(2)>input:first").addClass("gray");
		$(".css .css_row:last>input").addClass("gray");
		$("#upfile").hide();
		$(".bgsetting").css("opacity","0.5");
		$(".bgsetting").css("filter","alpha(opacity=50)");
		$("#fonts").easyDropDown("select",parseInt(elements[sid].style.fontFamily))
		 return ;
	}
	$(".css .css_row>div").removeClass("gray");
	$(".css .css_row>input").attr("disabled",false);
	$(".css .css_row>input").removeClass("gray");
	$("#upfile").show();
	$(".bgsetting").css("opacity","1");
	$(".bgsetting").css("filter","alpha(opacity=100)");
	
$(".css input:text:eq(4)").val(elements[sid].style.backgroundColor);
$(".css input:text:eq(0)").val(elements[sid].style.borderWidth);
$(".css input:text:eq(1)").val(elements[sid].style.borderColor);
$(".css input:text:eq(2)").val(elements[sid].style.fontSize);
$(".css input:text:eq(3)").val(elements[sid].style.color);
$(".css input:text:eq(5)").val(elements[sid].style.paddingLeft);
$("#fonts").easyDropDown("select",parseInt(elements[sid].style.fontFamily))
 
 
}


$(".schema_ds").easyDropDown();

$("#rules").easyDropDown({
	onChange:function(s){
		if($('.rule_div .radio_item_click').index()==0){ 
			elements[sid].valid.type=s.value;
			elements[sid].valid.regExp="";
		}
		 
	}
});


$("#fonts").easyDropDown({
cutOff:6,onChange:function(s){
	 //下面是对象处理
	  
   elements[sid].style.fontFamily=s.value;
  
	 //下面是视觉处理
	
   if(sid.indexOf("checkbox")!=-1){
	
	var tmpsid=sid.replace("checkbox_","wrap_checkbox_");
  	$("#"+tmpsid+">div").css("font-family",s.title);
	
	return ;
	}
   if(sid.indexOf("radio")!=-1){
	
	var tmpsid=sid.replace("radio_","wrap_radio_");
  	$("#"+tmpsid+">div").css("font-family",s.title);
	
	return ;
	}
	if(sid.indexOf("select")!=-1){
 	$("#"+sid).parent().next().css("font-family",s.title);
       $("#"+sid).parent().next().next().next().children().children().css("font-family",s.title);
	}else{
	$("#"+sid).css("font-family",s.title);
      }
}});



function autoFormFactory(k,v){
	$("div[id^='wrap_']").zIndex(1);
	var o;
	if(k=="window"){
		$(".tip_editor input:text:eq(0)").val(v.topbg);
		$(".tip_editor input:text:eq(1)").val(v.midbg);
		$(".tip_editor input:text:eq(2)").val(v.bottombg);
		$(".tip_editor input:text:eq(3)").val(v.fontcolor);
		$(".tip_editor input:text:eq(4)").val(v.titlecolor);
		$(".tip_editor input:text:eq(5)").val(v.okbg);
		$(".tip_editor input:text:eq(6)").val(v.okfont);
		$(".alert_ensure").css("color","#"+v.okfont);
		$(".alert_ensure").css("background-color","#"+v.okbg);
		$(".tip_demo").css("color","#"+v.titlecolor);
		$(".tip_head").css("color","#"+v.fontcolor);
		$(".tip_foot").css("background-color","#"+v.bottombg);
		$(".tip_demo").css("background-color","#"+v.midbg);
		$(".tip_head").css("background-color","#"+v.topbg);
		
		return ;
	}
    
	if(k=="page"){
		 
		 $(".page .page_size:first").val(v.w);
		 $(".page .page_size:eq(1)").val(v.h);
		 $(".page .page_size:eq(2)").val(v.title);
		 $(".page .page_size:eq(3)").val(v.bg);
		 $(".main").css("width",v.w+"px");
		 $(".main").css("height",v.h+"px");
		 $(".main").css("background-color","#"+v.bg);
		 $(".main_wrap").width(parseInt($(window).width())-292+"px");
		 
		$(".main_wrap").height($(window).height()-110);
		 
		return ;
	}
    
	if(k.indexOf("hidden_")!=-1){
		var id=k.replace("hidden_","");
		if(id>=gid.hidden) gid.hidden=parseInt(id)+1;
	 o=$("<div id='wrap_hidden_"+id+"' style=' text-align:center;position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:170px;height:45px;'> <div class='draghand'> <div class='tid'>hidden_"+id+"</div><div class='close_small'></div></div><input type='hidden' id='hidden_"+id+"'/></div>");
    
	$(".main").append(o);
	}
	
	if(k.indexOf("file_")!=-1){
		var id=k.replace("file_","");
		if(id>=gid.file) gid.file=parseInt(id)+1;
		o=$("<div id='wrap_file_"+id+"' style=' text-align:center;position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:115px;height:106px;'> <div class='draghand'> <div class='tid'>file_"+id+"</div><div class='close_small'></div></div><div style='background-repeat:no-repeat;background-image:url("+context+"/resources/images/uploaddemo.png);'><input id='file_"+id+"' type='file' style='opacity:0;filter:alpha(opacity=0);width:75px;height:75px;'></div></div>");
	 
		   if(v.style.backgroundImage!="")
		      o.find("input").parent().css("background-image","url("+context+"/resources/uploadimg/"+v.style.backgroundImage+")");
		   o.find("input").parent().css("width",v.style.w+"px");
		   o.find("input").css("width",v.style.w+"px");
		  
		   o.css("height",parseInt(v.style.h)+35+"px");
		   o.css("width",parseInt(v.style.w)+25+"px");
		   o.find("input").parent().css("height",v.style.h+"px");
		   o.find("input").css("height",v.style.h+"px");
		   
		 o.resizable({
		containment:".main" ,
		alsoResize:"#"+k,
		maxHeight:300,
		maxWidth:300,
		minHeight:60,
		minWidth:80,
		stop:function(e,ui){ 
			elements[k].style.w=parseInt(ui.size.width)-25;
			elements[k].style.h=parseInt(ui.size.height)-35;
		 
		}
		});


		$(".main").append(o);

	}
	
	if(k.indexOf("textarea_")!=-1){
		var id=k.replace("textarea_","");
		if(id>=gid.textarea) gid.textarea=parseInt(id)+1;
		o=$("<div id='wrap_textarea_"+id+"' style=' text-align:center;position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:400px;height:165px;'> <div class='draghand'> <div class='tid'>textarea_"+id+"</div><div class='close_small'></div></div><textarea id='textarea_"+id+"' style='resize:none;border-style:solid;font-size:13px;border-width:1px; color:#000000;background-color:#ffffff;border-color:#A2A2A2;width:360px;height:110px;background-repeat:no-repeat;'/></div>");
		    o.find("textarea").width(v.style.w+"px");
	        o.find("textarea").height(v.style.h+"px");
	        o.width(parseInt(v.style.w)+40+"px");
	        o.height(parseInt(v.style.h)+55+"px");
	        o.find("textarea").css("background-color","#"+v.style.backgroundColor);
	        o.find("textarea").css("border-width",v.style.borderWidth+"px");
	        o.find("textarea").css("border-color","#"+v.style.borderColor);
	        o.find("textarea").css("font-size",v.style.fontSize+"px");
	        o.find("textarea").css("color","#"+v.style.color); 
	        o.find("textarea").css("font-family",fontDict[v.style.fontFamily]);
	        o.find("textarea").css("padding-left",v.style.paddingLeft+"px");
	         if(v.style.backgroundImage!="")
	        o.find("textarea").css("background-image","url("+context+"/resources/uploadimg/"+v.style.backgroundImage+")");
	        
		$(".main").append(o);
		
		 o.resizable({
		containment:".main" ,
		alsoResize:"#"+k,
		maxHeight:500,
		maxWidth:1000,
		minHeight:60,
		minWidth:100,
		stop:function(e,ui){
			  
			elements[k].style.w=parseInt(ui.size.width)-40;
			elements[k].style.h=parseInt(ui.size.height)-55;
		 
		}
		});
		
	}
	
	if(k.indexOf("button_")!=-1){
		var id=k.replace("button_","");
		if(id>=gid.button) gid.button=parseInt(id)+1;
		o=$("<div id='wrap_button_"+id+"' style=' text-align:center;position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:110px;height:65px;'> <div class='draghand'> <div class='tid'>button_"+id+"</div><div class='close_small'></div></div><input type='text' value='确认' id='button_"+id+"' style='text-align:center;font-size:13px;border-width:1px; color:#fff;background-color:#3274C2;width:70px;height:28px;border:solid 0px;background-repeat:no-repeat;border-radius:4px;'/></div>");
	    o.find("input").width(v.style.w+"px");
        o.find("input").height(v.style.h+"px");
        o.find("input").val(v.style.text);
        o.width(parseInt(v.style.w)+40+"px");
        o.height(parseInt(v.style.h)+37+"px");
        o.find("input").css("background-color","#"+v.style.backgroundColor);
        o.find("input").css("border-width",v.style.borderWidth+"px");
        o.find("input").css("border-color","#"+v.style.borderColor);
        o.find("input").css("font-size",v.style.fontSize+"px");
        o.find("input").css("color","#"+v.style.color); 
        o.find("input").css("font-family",fontDict[v.style.fontFamily]);
        o.find("input").css("padding-left",v.style.paddingLeft+"px");
         if(v.style.backgroundImage!="")
        o.find("input").css("background-image","url("+context+"/resources/uploadimg/"+v.style.backgroundImage+")");
        
		
		
		o.find("input").keyup(function(){
			elements[k].style.text=$(this).val();
			
		});
		
		 o.resizable({
		containment:".main" ,
		alsoResize:"#"+k,
		maxHeight:90,
		maxWidth:600,
		minHeight:60,
		minWidth:80,
		stop:function(e,ui){
		  
			elements[k].style.w=parseInt(ui.size.width)-40;
			elements[k].style.h=parseInt(ui.size.height)-37;
		 
		}
		});

		$(".main").append(o);
		
		
		
	}
	
	if(k.indexOf("table_")!=-1){
		var id=k.replace("table_","");
		if(id>=gid.table) gid.table=parseInt(id)+1;
		o=$("<div id='wrap_table_"+id+"' style=' text-align:center;position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:180px;height:165px;'> <div class='draghand'> <div class='tid'>table_"+id+"</div><div class='close_small'></div></div><div id='table_"+id+"' style='width:150px;height:125px;border:solid 0px #000;background-color:transparent;background-repeat:no-repeat;' /></div>");
		 o.find("div:last").width(v.style.w+"px");
	        o.find("div:last").height(v.style.h+"px");
	 
	        o.width(parseInt(v.style.w)+25+"px");
	        o.height(parseInt(v.style.h)+35+"px");
	        o.find("div:last").css("background-color","#"+v.style.backgroundColor);
	        o.find("div:last").css("border-width",v.style.borderWidth+"px");
	        o.find("div:last").css("border-color","#"+v.style.borderColor);
	   
	        o.find("div:last").css("padding-left",v.style.paddingLeft+"px");
	         if(v.style.backgroundImage!="")
	        o.find("div:last").css("background-image","url("+context+"/resources/uploadimg/"+v.style.backgroundImage+")");
	        
 
		o.resizable({
			 containment:".main" ,
			 alsoResize:"#"+k,
			 maxHeight:1000,
			 maxWidth:1200,
			 minHeight:70,
			 minWidth:70,
			 stop:function(e,ui){
				  
					elements[k].style.w=parseInt(ui.size.width)-25;
					elements[k].style.h=parseInt(ui.size.height)-35;
		 
				}
			 });


			 $(".main").append(o);
  
	}
	
	if(k.indexOf("font_")!=-1){
		var id=k.replace("font_","");
		if(id>=gid.font) gid.font=parseInt(id)+1;
		o=$("<div id='wrap_font_"+id+"' style=' text-align:center;position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:80px;height:65px;'> <div class='draghand'> <div class='tid'>font_"+id+"</div><div class='close_small'></div></div><input id='font_"+id+"' type='text' value='文字' style=' font-size:13px;color:#747474; width:50px;height:25px;border:solid 0px #000;background-color:transparent;background-repeat:no-repeat;' /></div>");
		 o.find("input").width(v.style.w+"px");
	        o.find("input").height(v.style.h+"px");
	        o.find("input").val(v.style.text);
	        o.width(parseInt(v.style.w)+25+"px");
	        o.height(parseInt(v.style.h)+35+"px");
	        o.find("input").css("background-color","#"+v.style.backgroundColor);
	        o.find("input").css("border-width",v.style.borderWidth+"px");
	        o.find("input").css("border-color","#"+v.style.borderColor);
	        o.find("input").css("font-size",v.style.fontSize+"px");
	        o.find("input").css("color","#"+v.style.color); 
	        o.find("input").css("font-family",fontDict[v.style.fontFamily]);
	        o.find("input").css("padding-left",v.style.paddingLeft+"px");
	         if(v.style.backgroundImage!="")
	        o.find("input").css("background-image","url("+context+"/resources/uploadimg/"+v.style.backgroundImage+")");
	        
	 
		   o.find("input").keyup(function(){
			   elements[$(this).attr("id")].style.text=$(this).val();
			 
			});

		 
		o.resizable({
			 containment:".main" ,
			 alsoResize:"#"+k,
			 maxHeight:300,
			 maxWidth:600,
			 minHeight:60,
			 minWidth:60,
			 stop:function(e,ui){
				  
					elements[k].style.w=parseInt(ui.size.width)-25;
					elements[k].style.h=parseInt(ui.size.height)-35;
				 
				}
			 });


			 $(".main").append(o);

	}
	
	if(k.indexOf("img_")!=-1){
		var id=k.replace("img_","");
		if(id>=gid.img) gid.img=parseInt(id)+1;
		 o=$("<div id='wrap_img_"+id+"' style=' text-align:center;position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:115px;height:135px;'> <div class='draghand'> <div class='tid'>img_"+id+"</div><div class='close_small'></div></div><img src='"+context+"/resources/images/defaultimg.png' style='border:solid 0px' id='ximg_"+id+"'><form method='post' enctype='multipart/form-data'><input id='img_"+id+"' name='img_"+id+"'  type='file' style='position: absolute;top:30px ;left:0px ;opacity:0;filter:alpha(opacity=0);width:75px;height:75px;'></form></div>");
		 o.find("img,input").height(v.style.h+"px");
		 o.find("img,input").width(v.style.w+"px");
	    o.height(parseInt(v.style.h)+35+"px");
	    o.width(parseInt(v.style.w)+15+"px");
	    o.find("img").attr("src",v.style.src);
	    
		 o.resizable({
				containment:".main" ,
				alsoResize:"#x"+k+","+"#"+k,
				maxHeight:1000,
				maxWidth:1000,
				minHeight:60,
				minWidth:80,
				stop:function(e,ui){ 
					elements[k].style.w=parseInt(ui.size.width)-15;
					elements[k].style.h=parseInt(ui.size.height)-35;
				 
				}
				});


		$(".main").append(o);
		
		$("#"+k).change(function(){
		    var imgPath = $(this).val();  
		    if (imgPath == "")   return;  
		     
		    var strExtension = imgPath.substr(imgPath.lastIndexOf('.') + 1);  
		    if (strExtension != 'jpg' && strExtension != 'gif'  
		    && strExtension != 'png' && strExtension != 'bmp') {  
		        alert("请选择图片文件");  
		        return;  
		    }  
		    
		 
		    
		    
		    $.ajaxFileUpload(  
		            {  
		                 url:context+'/uploadWithVarible/'+k,         
		                 secureuri:false,  
		                 fileElementId:k,         
		                 dataType: 'json',   
		                 success:function(data){
		                	data=data.replace("<pre>","");
		                	data=data.replace("</pre>","");
		                	data=$.trim(data);
		          
		                	elements[k].style.src=context+"/resources/uploadimg/"+data;
		                	  
		                	$("#x"+k).attr("src",elements[k].style.src);
		                 }
		             }  
		           ); 

		});
		
	}
	
	if(k.indexOf("ueditor_")!=-1){
		var id=k.replace("ueditor_","");
		if(id>=gid.ueditor) gid.ueditor=parseInt(id)+1;
		o=$("<div id='wrap_ueditor_"+id+"' style='position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:700px;height:235px;'> <div class='draghand'> <div class='tid'>ueditor_"+id+"</div><div class='close_small'></div></div><textarea  id='ueditor_"+id+"' style='width:660px;height:130px;'></textarea></div>");
	 
		 	     
		$(".main").append(o);
		  
	    window.um = UM.getEditor(k ,{focus:true});
	    o.find(".edui-container").width(v.style.w+"px");
        o.find(".edui-container").height(parseInt(v.style.h)+"px");
        o.width(parseInt(v.style.w)+40+"px");
        o.height(parseInt(v.style.h)+80+"px");
		 o.resizable({
		containment:".main" , 
		alsoResize:".edui-container",
		maxHeight:700,
		maxWidth:1500,
		minHeight:260,
		minWidth:600,
		stop:function(e,ui){
		 
			elements[k].style.w=parseInt(ui.size.width)-40;
			elements[k].style.h=parseInt(ui.size.height)-80;
			  
	       
		}
		});
		 $(".main").append(o);
		
	}
	
	if(k.indexOf("time_")!=-1){
		var id=k.replace("time_","");
		if(id>=gid.time) gid.time=parseInt(id)+1;
		
		o=$("<div id='wrap_time_"+id+"' style=' text-align:center;position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:170px;height:65px;'> <div class='draghand'> <div class='tid'>time_"+id+"</div><div class='close_small'></div></div><input type='text' id='time_"+id+"' style='border-style:solid;font-size:13px;border-width:1px; color:#000000;background-color:#ffffff;border-color:#A2A2A2;width:140px;height:25px;background-repeat:no-repeat;'/></div>");
	    o.find("input").width(v.style.w+"px");
        o.find("input").height(v.style.h+"px");
        o.width(parseInt(v.style.w)+30+"px");
        o.height(parseInt(v.style.h)+40+"px");
        o.find("input").css("background-color","#"+v.style.backgroundColor);
        o.find("input").css("border-width",v.style.borderWidth+"px");
        o.find("input").css("border-color","#"+v.style.borderColor);
        o.find("input").css("font-size",v.style.fontSize+"px");
        o.find("input").css("color","#"+v.style.color); 
        o.find("input").css("font-family",fontDict[v.style.fontFamily]);
        o.find("input").css("padding-left",v.style.paddingLeft+"px");
         if(v.style.backgroundImage!="")
        o.find("input").css("background-image","url("+context+"/resources/uploadimg/"+v.style.backgroundImage+")");
        
		   
		o.find("input").bind("click",function(e){
			e.stopPropagation();
			WdatePicker({dateFmt:"yyyy-MM-dd HH:mm:ss"});
			
		});
		
		
		 o.resizable({
		containment:".main" ,
		alsoResize:"#"+k,
		maxHeight:90,
		maxWidth:600,
		minHeight:60,
		minWidth:80,
		stop:function(e,ui){
		  
			elements[k].style.w=parseInt(ui.size.width)-30;
			elements[k].style.h=parseInt(ui.size.height)-40;
		 
		}
		});


		$(".main").append(o);
		 
		
	}
	
	if(k.indexOf("text_")!=-1){
	 
		var id=k.replace("text_","");
		if(id>=gid.text) gid.text=parseInt(id)+1;
		o=$("<div id='wrap_text_"+id+"' style=' text-align:center;position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:170px;height:65px;'> <div class='draghand'> <div class='tid'>text_"+id+"</div><div class='close_small'></div></div><input type='text' id='text_"+id+"' style='border-style:solid;font-size:13px;border-width:1px; color:#000000;background-color:#ffffff;border-color:#A2A2A2;width:140px;height:25px;background-repeat:no-repeat;'/></div>");
        o.find("input").width(v.style.w+"px");
        o.find("input").height(v.style.h+"px");
        o.width(parseInt(v.style.w)+30+"px");
        o.height(parseInt(v.style.h)+40+"px");
        o.find("input").css("background-color","#"+v.style.backgroundColor);
        o.find("input").css("border-width",v.style.borderWidth+"px");
        o.find("input").css("border-color","#"+v.style.borderColor);
        o.find("input").css("font-size",v.style.fontSize+"px");
        o.find("input").css("color","#"+v.style.color); 
        o.find("input").css("font-family",fontDict[v.style.fontFamily]);
        o.find("input").css("padding-left",v.style.paddingLeft+"px");
         if(v.style.backgroundImage!="")
        o.find("input").css("background-image","url("+context+"/resources/uploadimg/"+v.style.backgroundImage+")");
        
        
		o.resizable({
		containment:".main" ,
		alsoResize:"#"+k,
		maxHeight:90,
		maxWidth:600,
		minHeight:60,
		minWidth:80,
		stop:function(e,ui){ 
			elements[k].style.w=parseInt(ui.size.width)-30;
			elements[k].style.h=parseInt(ui.size.height)-40; 
		}
		});
 
		$(".main").append(o);
	 
		}
	
	if(k.indexOf("checkbox_")!=-1){
    	var id=k.replace("checkbox_","");
    	
    	if(id>=gid.checkbox) gid.checkbox=parseInt(id)+1;
    	 
    	o=$(' <div  id=wrap_checkbox_'+id+' style="text-align:center;position:absolute;top:'+v.style.y+'px;left:'+v.style.x+'px;cursor:default;border:dashed 0px #a2a2a2;width:250px;height:55px;"><div class="draghand" style="height:38px">  <div class="tid">checkbox_'+id+'</div><div class="close_small"></div></div><div style="float:left;height:15px;width:10px"></div><div class="checkbox_item checkbox_item_click"></div><div class="checkbox_text">A选项</div><div class="checkbox_blank"></div><div class="checkbox_item"></div><div class="checkbox_text">B选项</div><div class="checkbox_blank"></div><div class="checkbox_item"></div><div class="checkbox_text">C选项</div></div>');
    	$(".main").append(o);
     
    	o.resizable({
    	containment:".main" ,
    	alsoResize:"#"+k,
    	maxWidth:900,
    	handles:"e",
    	minWidth:210
    	});

   	 o.find(".checkbox_text").css("font-size",v.style.fontSize+"px");
	 o.find(".checkbox_text").css("color","#"+v.style.color);
	 o.find(".checkbox_text").css("font-family",fontDict[v.style.fontFamily]);
	 
	 
    	 $('#wrap_'+k+' .checkbox_item').click(function(e){
    	 e.stopPropagation();
    	 $(this).toggleClass("checkbox_item_click");
    	 });
    	
	}
	
	if(k.indexOf("radio_")!=-1){
    	var id=k.replace("radio_","");
    	if(id>=gid.radio) gid.radio=parseInt(id)+1;
    	o=$(' <div  id=wrap_radio_'+id+' style="text-align:center;position:absolute;top:'+v.style.y+'px;left:'+v.style.x+'px;cursor:default;border:dashed 0px #a2a2a2;width:130px;height:55px;"><div class="draghand" style="height:38px;">  <div class="tid">radio_'+id+'</div><div class="close_small"></div></div><div style="float:left;height:15px;width:10px"></div><div class="radio_item radio_item_click"></div><div class="radio_text">男</div><div class="radio_blank"></div><div class="radio_item"></div><div class="radio_text">女</div></div>');
    	$(".main").append(o);
     
    	 o.find(".radio_text").css("font-size",v.style.fontSize+"px");
		 o.find(".radio_text").css("color","#"+v.style.color);
		 o.find(".radio_text").css("font-family",fontDict[v.style.fontFamily]);
		 
    	
    	o.resizable({
    	containment:".main" ,
    	alsoResize:"#"+k,
    	handles:"e",
    	maxWidth:900,
    	minWidth:110
    	});
    	 
    	 $('#wrap_'+k+' .radio_item').click(function(e){
    	 e.stopPropagation();
    	 $('#wrap_'+k+' .radio_item').removeClass("radio_item_click");
    	  $(this).addClass("radio_item_click");
    	 });

    	
	}
	
    if(k.indexOf("select_")!=-1){
    	var id=k.replace("select_","");
    	if(id>=gid.select) gid.select=parseInt(id)+1;
    	o=$('<div  id=wrap_select_'+id+' style="text-align:center;position:absolute;top:'+v.style.y+'px;left:'+v.style.x+'px;cursor:default;border:dashed 0px #a2a2a2;width:170px;height:65px;"><div class="draghand">  <div class="tid">select_'+id+'</div><div class="close_small"></div></div><select id="select_'+id+'"    ><option value="0">我的数据</option></select></div>');
     
    	 o.resizable({
    	containment:".main" ,
    	alsoResize:"#"+k,
    	maxHeight:90,
    	maxWidth:500,
    	minHeight:60,
    	minWidth:110,
    	stop:function(e,ui){
    		  
    		elements[k].style.w=parseInt(ui.size.width);
    		elements[k].style.h=parseInt(ui.size.height);
    	 
    	}
    	});


    	$(".main").append(o);
    	$("#"+k).easyDropDown({cutOff: 10});
    	 
		 o.css("width",v.style.w+"px");
		 o.css("height",v.style.h+"px");
		 o.children(".dropdown").css("border-width",v.style.borderWidth+"px");
		 o.children(".dropdown").css("border-color","#"+v.style.borderColor);
		 o.children(".dropdown").children("div").css("border-width",v.style.borderWidth+"px");
		 o.children(".dropdown").children("div").css("border-color","#"+v.style.borderColor);
		 o.children(".dropdown").children("span").css("font-size",v.style.fontSize+"px");
		 o.children(".dropdown").children("span").css("color","#"+v.style.color);
		 o.children(".dropdown").find("li").css("font-size",v.style.fontSize+"px");
		 o.children(".dropdown").find("li").css("font-family",fontDict[v.style.fontFamily]);
		 o.children(".dropdown").children("span").css("font-family",fontDict[v.style.fontFamily]);
		 o.children(".dropdown").find("li").css("color","#"+v.style.color);
		 o.children(".dropdown").children("div").css("background-color","#"+v.style.backgroundColor);
		 o.children(".dropdown").css("background-color","#"+v.style.backgroundColor);
	     
    	
    	
    }
    
	if(k.indexOf("password_")!=-1){
		 
		var id=k.replace("password_","");
		if(id>=gid.password) gid.password=parseInt(id)+1;
	    o=$("<div id='wrap_password_"+id+"' style=' text-align:center;position:absolute;top:"+v.style.y+"px;left:"+v.style.x+"px;cursor:default;border:dashed 0px #a2a2a2;width:170px;height:65px;'> <div class='draghand'>  <div class='tid'>password_"+id+"</div><div class='close_small'></div></div><input type='password' id='password_"+id+"'  style='border-style:solid;background-color:#ffffff;border-width:1px;font-size:13px;color:#000000;border-color: #A2A2A2;width:140px;height:25px;background-repeat:no-repeat;'></div>");  
		o.find("input").width(v.style.w+"px");
        o.find("input").height(v.style.h+"px");
        o.width(parseInt(v.style.w)+30+"px");
        o.height(parseInt(v.style.h)+40+"px");
        o.find("input").css("background-color","#"+v.style.backgroundColor);
        o.find("input").css("border-width",v.style.borderWidth+"px");
        o.find("input").css("border-color","#"+v.style.borderColor);
        o.find("input").css("font-size",v.style.fontSize+"px");
        o.find("input").css("color","#"+v.style.color); 
        o.find("input").css("font-family",fontDict[v.style.fontFamily]);
        o.find("input").css("padding-left",v.style.paddingLeft+"px");
    
         if(v.style.backgroundImage!="")
        o.find("input").css("background-image","url("+context+"/resources/uploadimg/"+v.style.backgroundImage+")");
        
        o.resizable({
        containment:".main" ,
        alsoResize:"#"+k,
        maxHeight:90,
        maxWidth:400,
        minHeight:60,
        minWidth:110,
        stop:function(e,ui){
        	  
        	elements[k].style.w=parseInt(ui.size.width)-30;
        	elements[k].style.h=parseInt(ui.size.height)-40;
         
        }
        });
      
		$(".main").append(o);
	 
		}
	
	 
	o.mousedown(function(){
		sid=$(this).children("div").children(".tid").text();
	  $("div[id^='wrap_']").zIndex(1);
	  $(this).zIndex(2);
	  $("div[id^='wrap_']").each(function(){
		  
		  if($(this).attr("id").indexOf("table_")!=-1) 
			  $(this).zIndex(0);
		  
	  });
	 
	  
	});
	o.contextmenu(function(e){
	sid=$(this).children("div").children(".tid").text();
	$(".right_menu").css("left",e.clientX);
	$(".right_menu").css("top",e.clientY);
	if(sid.indexOf("file_")!=-1||sid.indexOf("hidden_")!=-1||sid.indexOf("font_")!=-1){
		$(".right_menu>.right_menu_child:first").hide();
		$(".right_menu>.split:first").hide();
	}else{
		$(".right_menu>.right_menu_child:first").show();
		$(".right_menu>.split:first").show();
	}
	$(".right_menu").slideDown("fast");
	 
	});
	o.mouseover(function(){
		
	 $(this).css("border-width","1px");
	 $(this).find(".close_small").show();
	});
	o.mouseout(function(){
	 $(this).css("border-width","0px");
	 $(this).find(".close_small").hide();
	});
	o.click(function(){
	sid=$(this).children("div").children(".tid").text();
	getCss();
	getValid();
	});
	 
	o.draggable({
	containment:".main",
	handle:".draghand",
	start:function(){
	 
	$("div[id^='tip_']").remove();

	 
	},
	stop:function(e,ui){
	 
	$("div[id^='wrap_']").each(function(){
	if(Math.abs(parseInt($(this).css("left"))-ui.position.left)<15){
	o.css("left",$(this).css("left"));
	}
	if(Math.abs(parseInt($(this).css("top"))-ui.position.top)<15){
	o.css("top",$(this).css("top"));
	}
	});
	}

	});
	 
	     
  $("div[id^='wrap_']").each(function(){
		  
		  if($(this).attr("id").indexOf("table_")!=-1) 
			  $(this).zIndex(0);
		  
	  });
	o.children(":first").children(".close_small").click(function(){
	sid=o.children("div").children(".tid").text();	
	 
	delete elements[sid];
	o.remove();
	});
	
}


function formFactory(type,left,top){
 
$("div[id^='wrap_']").zIndex(1);
var o;
 
if(type=="checkbox"){
o=$(' <div  id=wrap_checkbox_'+gid.checkbox+' style="text-align:center;position:absolute;top:'+top+'px;left:'+left+'px;cursor:default;border:dashed 0px #a2a2a2;width:250px;height:55px;"><div class="draghand" style="height:38px">  <div class="tid">checkbox_'+gid.checkbox+'</div><div class="close_small"></div></div><div style="float:left;height:15px;width:10px"></div><div class="checkbox_item checkbox_item_click"></div><div style="float:left;height:15px;line-height:15px;font-size:13px;color:#747474;padding-left:5px;">A选项</div><div style="float:left;height:15px;width:15px"></div><div class="checkbox_item"></div><div style="float:left;height:15px;line-height:15px;font-size:13px;color:#747474;padding-left:5px">B选项</div><div style="float:left;height:15px;width:15px"></div><div class="checkbox_item"></div><div style="float:left;height:15px;line-height:15px;font-size:13px;color:#747474;padding-left:5px">C选项</div></div>');
$(".main").append(o);
elements["checkbox_"+gid.checkbox]=
        {style:
        
        {
         x:"0",
         y:"0",
	     fontSize:"13",
	     color:"747474",
	     fontFamily:0
	     },
	     event:{
	    	 click:{script:""},
	    	 init2:{
	    		 sql:"",
	    		 ds:"",
	    		 kvPair:new Object()
	    	 },
	    	 init:{
	    		    initValue:"",
	    		    sql:"",
	    		    ds:""
	    		   
	    		    }
	    	 
	     }};
o.resizable({
containment:".main" ,
alsoResize:"#checkbox_"+gid.checkbox,
maxWidth:900,
handles:"e",
minWidth:210
});

 var solid=gid.checkbox;
 $('#wrap_checkbox_'+solid+' .checkbox_item').click(function(e){
 e.stopPropagation();
 $(this).toggleClass("checkbox_item_click");
 });

gid.checkbox++;
}
if(type=="radio"){
o=$(' <div  id=wrap_radio_'+gid.radio+' style="text-align:center;position:absolute;top:'+top+'px;left:'+left+'px;cursor:default;border:dashed 0px #a2a2a2;width:130px;height:55px;"><div class="draghand" style="height:38px;">  <div class="tid">radio_'+gid.radio+'</div><div class="close_small"></div></div><div style="float:left;height:15px;width:10px"></div><div class="radio_item radio_item_click"></div><div style="float:left;height:15px;line-height:15px;font-size:13px;color:#747474;padding-left:5px;">男</div><div style="float:left;height:15px;width:15px"></div><div class="radio_item"></div><div style="float:left;height:15px;line-height:15px;font-size:13px;color:#747474;padding-left:5px">女</div></div>');
$(".main").append(o);
elements["radio_"+gid.radio]=
{style:
	//radio没有宽高
{x:"0",
	 y:"0",
 
 fontSize:"13",
 color:"747474",
 fontFamily:0
 } ,event:{
	 click:{script:""},
	 init2:{
		 sql:"",
		 ds:"",
		 kvPair:new Object()
	 },
	 init:{
		    initValue:"",
		    fromURL:"",
		    sql:"",
		    ds:"",
		    httpURL:"",
		    httpmethod:"",
		    httpReturn:"",
		    valueType:"",
		    kvPair:new Object(),
		    value:""
		    }
	 
 }};
 
  o.resizable({
containment:".main" ,
alsoResize:"#radio_"+gid.radio,
handles:"e",
maxWidth:900,
minWidth:110
});
 var solid=gid.radio;
 $('#wrap_radio_'+solid+' .radio_item').click(function(e){
 e.stopPropagation();
 $('#wrap_radio_'+solid+' .radio_item').removeClass("radio_item_click");
  $(this).addClass("radio_item_click");
 });

gid.radio++;
}
if(type=="select"){
o=$('<div  id=wrap_select_'+gid.select+' style="text-align:center;position:absolute;top:'+top+'px;left:'+left+'px;cursor:default;border:dashed 0px #a2a2a2;width:170px;height:65px;"><div class="draghand">  <div class="tid">select_'+gid.select+'</div><div class="close_small"></div></div><select id="select_'+gid.select+'"    ><option value="0">我的数据</option></select></div>');
elements["select_"+gid.select]=
{style:
{w:"170",h:"65",
	x:"0",
	 y:"0",
	borderWidth:"1",
 borderColor:"a2a2a2",
 fontSize:"13",
 color:"747474",
 backgroundColor:"ffffff",
 fontFamily:0}  
 ,event:{
	 change:{script:""},
	 init2:{
		 sql:"",
		 ds:"",
		 kvPair:new Object()
	 },
	 init:{
		    initValue:"",
		    fromURL:"",
		    sql:"",
		    ds:"",
		    httpURL:"",
		    httpmethod:"",
		    httpReturn:"",
		    valueType:"",
		    kvPair:new Object(),
		    value:""
		    }
	 
 }};
 
 var tmp=gid.select;

 o.resizable({
containment:".main" ,
alsoResize:"#select_"+tmp,
maxHeight:90,
maxWidth:500,
minHeight:60,
minWidth:110,
stop:function(e,ui){
	  
	elements["select_"+tmp].style.w=parseInt(ui.size.width);
	elements["select_"+tmp].style.h=parseInt(ui.size.height);
 
}
});

$(".main").append(o);
$("#select_"+tmp).easyDropDown({cutOff: 10});
gid.select++;
}

if(type=="password"){
o=$("<div id='wrap_password_"+gid.password+"' style=' text-align:center;position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:170px;height:65px;'> <div class='draghand'>  <div class='tid'>password_"+gid.password+"</div><div class='close_small'></div></div><input type='password' id='password_"+gid.password+"'  style='border-style:solid;background-color:#ffffff;border-width:1px;font-size:13px;color:#000000;border-color: #A2A2A2;width:140px;height:25px;background-repeat:no-repeat;'></div>");
elements["password_"+gid.password]=
{style:
{w:"140",h:"25",
	x:"0",
	 y:"0",
	 paddingLeft:"0",
	 borderWidth:"1",
 borderColor:"a2a2a2",
 fontSize:"13",
 color:"747474",
 backgroundColor:"ffffff",
 fontFamily:0,
 backgroundImage:""},
valid:{
text:"提示文字",
on:0,
position:0,
type:0,
regExp:"",
sql:"",
ds:"",
relation:"",
value:"",
style:{
	borderWidth:"1",
	borderColor:"c68f2a",
	fontSize:"13",
	color:"000000",
	backgroundColor:"ffffc6",
	paddingLeft:"6"
	
}
 },event:
 {init:{
	    initValue:"",
	    fromURL:"",
	    sql:"",
	    ds:"",
	    httpURL:"",
	    httpmethod:"",
	    httpReturn:"",
	    valueType:"",
	    kvPair:new Object(),
	    value:""
	    },
	afterinit:{
		script:""
	    },
	    click:{
 		script:""
 	    },dblclick:{
     		script:""
 	    },focus:{
     		script:""
 	    },blur:{
     		script:""
 	    }
	    }
	    };

var tmp=gid.password;

 
 o.resizable({
containment:".main" ,
alsoResize:"#password_"+tmp,
maxHeight:90,
maxWidth:400,
minHeight:60,
minWidth:110,
stop:function(e,ui){
	  
	elements["password_"+tmp].style.w=parseInt(ui.size.width)-30;
	elements["password_"+tmp].style.h=parseInt(ui.size.height)-40;
 
}
});


$(".main").append(o);
 
gid.password++;
 
}

if(type=="ueditor"){
	var valid=true;
	for(var k in elements){
		if(k.indexOf("ueditor_")!=-1){
			valid=false;
			break;
		}
	}
	if(!valid){
		alert("同一个页面富文本仅能有一个");
		return;
	}
	o=$("<div id='wrap_ueditor_"+gid.ueditor+"' style='position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:700px;height:235px;'> <div class='draghand'> <div class='tid'>ueditor_"+gid.ueditor+"</div><div class='close_small'></div></div><textarea  id='ueditor_"+gid.ueditor+"' style='width:660px;height:130px;'></textarea></div>");
	elements["ueditor_"+gid.ueditor]=
	{style:
	{w:"660",
		h:"180",
		x:"0",
		 y:"0" 
		 } 
	 ,event:{
		 init:{
	 	    initValue:"", 
	 	    sql:"",
	 	    ds:"",
	 	    httpURL:"",
	 	    httpmethod:"",
	 	    httpReturn:"",
	 	    valueType:"",
	 	    kvPair:new Object(),
	 	    value:""
	 	    } 
	     	 
		 
	 }};
	 
	 var tmp=gid.ueditor;
	$(".main").append(o);
    window.um = UM.getEditor('ueditor_'+tmp ,{focus:true});
 
	 o.resizable({
	containment:".main" , 
	alsoResize:".edui-container",
	maxHeight:700,
	maxWidth:1500,
	minHeight:260,
	minWidth:600,
	stop:function(e,ui){
	 
		elements["ueditor_"+tmp].style.w=parseInt(ui.size.width)-40;
		elements["ueditor_"+tmp].style.h=parseInt(ui.size.height)-80;
		   
       
	}
	});
	gid.ueditor++;

}
if(type=="textarea"){
o=$("<div id='wrap_textarea_"+gid.textarea+"' style=' text-align:center;position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:400px;height:165px;'> <div class='draghand'> <div class='tid'>textarea_"+gid.textarea+"</div><div class='close_small'></div></div><textarea id='textarea_"+gid.textarea+"' style='resize:none;border-style:solid;font-size:13px;border-width:1px; color:#000000;background-color:#ffffff;border-color:#A2A2A2;width:360px;height:110px;background-repeat:no-repeat;'/></div>");
elements["textarea_"+gid.textarea]=
{style:
{w:"360",h:"110",
	x:"0",
	 y:"0",
	 paddingLeft:"0",
borderWidth:"1",
 borderColor:"a2a2a2",
 fontSize:"13",
 color:"747474",
 backgroundColor:"ffffff",
 fontFamily:0,
 backgroundImage:""},
valid:{
text:"提示文字",
on:0,
position:0,
type:0,
regExp:"",
sql:"",
ds:"",
relation:"",
value:"",
style:{
	borderWidth:"1",
	borderColor:"c68f2a",
	fontSize:"13",
	color:"000000",
	backgroundColor:"ffffc6",
	paddingLeft:"6"
	
}
 },event:{
	 init:{
 	    initValue:"", 
 	    sql:"",
 	    ds:"",
 	    httpURL:"",
 	    httpmethod:"",
 	    httpReturn:"",
 	    valueType:"",
 	    kvPair:new Object(),
 	    value:""
 	    },
 	afterinit:{
 		script:""
 	    },
 	        click:{
     		script:""
     	    },
     	    dblclick:{
         		script:""
     	    },
     	    focus:{
         		script:""
     	    },
     	    blur:{
         		script:""
     	    }
	 
 }};
 
 var tmp=gid.textarea;
$(".main").append(o);
 o.resizable({
containment:".main" ,
alsoResize:"#textarea_"+tmp,
maxHeight:500,
maxWidth:1000,
minHeight:60,
minWidth:100,
stop:function(e,ui){
	  
	elements["textarea_"+tmp].style.w=parseInt(ui.size.width)-40;
	elements["textarea_"+tmp].style.h=parseInt(ui.size.height)-55;
 
}
});
gid.textarea++;

}
if(type=="table"){
	o=$("<div id='wrap_table_"+gid.table+"' style=' text-align:center;position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:180px;height:165px;'> <div class='draghand'> <div class='tid'>table_"+gid.table+"</div><div class='close_small'></div></div><div id='table_"+gid.table+"' style='width:150px;height:125px;border:solid 0px #000;background-color:transparent;background-repeat:no-repeat;' /></div>");
	elements["table_"+gid.table]=
	{style:
	{w:"150",h:"125",
	 paddingLeft:"0",
	 x:"0",
	 y:"0",
	 borderWidth:"0",
	 borderColor:"a2a2a2",
	 backgroundColor:"transparent",
	 backgroundImage:""},
	  event:{}}; 
 
	 

	
	var tmp=gid.table;
	o.resizable({
		 containment:".main" ,
		 alsoResize:"#table_"+tmp,
		 maxHeight:1000,
		 maxWidth:1200,
		 minHeight:70,
		 minWidth:70,
		 stop:function(e,ui){
			  
				elements["table_"+tmp].style.w=parseInt(ui.size.width)-25;
				elements["table_"+tmp].style.h=parseInt(ui.size.height)-35;
	 
			}
		 });


		 $(".main").append(o);

		 gid.table++;
	
}
if(type=="font"){
	o=$("<div id='wrap_font_"+gid.font+"' style=' text-align:center;position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:80px;height:65px;'> <div class='draghand'> <div class='tid'>font_"+gid.font+"</div><div class='close_small'></div></div><input id='font_"+gid.font+"' type='text' value='文字' style=' font-size:13px;color:#747474; width:50px;height:25px;border:solid 0px #000;background-color:transparent;background-repeat:no-repeat;' /></div>");
	elements["font_"+gid.font]=
	{style:
	{w:"50",h:"25",
	 paddingLeft:"0",
	 x:"0",
	 y:"0",
	 text:"文字",
	 borderWidth:"0",
	 borderColor:"a2a2a2",
	 fontSize:"13",
	 color:"747474",
	 backgroundColor:"transparent",
	 fontFamily:0,
	 backgroundImage:""},
	  event:{}}; 
 
	   o.find("input").keyup(function(){
		   elements[$(this).attr("id")].style.text=$(this).val();
		 
		});

	
	var tmp=gid.font;
	o.resizable({
		 containment:".main" ,
		 alsoResize:"#font_"+tmp,
		 maxHeight:300,
		 maxWidth:600,
		 minHeight:60,
		 minWidth:60,
		 stop:function(e,ui){
			  
				elements["font_"+tmp].style.w=parseInt(ui.size.width)-25;
				elements["font_"+tmp].style.h=parseInt(ui.size.height)-35;
			 
			}
		 });


		 $(".main").append(o);

		 gid.font++;
	
}
if(type=="img"){
	 o=$("<div id='wrap_img_"+gid.img+"' style=' text-align:center;position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:115px;height:135px;'> <div class='draghand'> <div class='tid'>img_"+gid.img+"</div><div class='close_small'></div></div><img src='"+context+"/resources/images/defaultimg.png' style='border:solid 0px' id='ximg_"+gid.img+"'><form method='post' enctype='multipart/form-data'><input id='img_"+gid.img+"' name='img_"+gid.img+"'  type='file' style='position: absolute;top:30px ;left:0px ;opacity:0;filter:alpha(opacity=0);width:75px;height:75px;'></form></div>");
	 o.find("img,input").css("height",(parseInt(o.height())-35)+"px");
	 o.find("img,input").css("width",(parseInt(o.width())-15)+"px");
	 var tmp=gid.img;
	 elements["img_"+gid.img]=
		{style:
		{w:"100",h:"100", 
		 x:"0",
		 y:"0",
	     src:""} ,event:{click:{
	    	 script:""
	    	 
	     }}}; 
   
	 o.resizable({
			containment:".main" ,
			alsoResize:"#ximg_"+tmp+","+"#img_"+tmp,
			maxHeight:1000,
			maxWidth:1000,
			minHeight:60,
			minWidth:80,
			stop:function(e,ui){ 
				elements["img_"+tmp].style.w=parseInt(ui.size.width)-15;
				elements["img_"+tmp].style.h=parseInt(ui.size.height)-35;
			 
			}
			});


	$(".main").append(o);
	
	$("#img_"+tmp).change(function(){
	    var imgPath = $(this).val();  
	    if (imgPath == "")   return;  
	     
	    var strExtension = imgPath.substr(imgPath.lastIndexOf('.') + 1);  
	    if (strExtension != 'jpg' && strExtension != 'gif'  
	    && strExtension != 'png' && strExtension != 'bmp') {  
	        alert("请选择图片文件");  
	        return;  
	    }  
	    
	 
	    
	    
	    $.ajaxFileUpload(  
	            {  
	                 url:context+'/uploadWithVarible/img_'+tmp,         
	                 secureuri:false,  
	                 fileElementId:"img_"+tmp,         
	                 dataType: 'json',   
	                 success:function(data){
	                	data=data.replace("<pre>","");
	                	data=data.replace("</pre>","");
	                	data=$.trim(data);
	          
	                	elements["img_"+tmp].style.src=context+"/resources/uploadimg/"+data;
	                	  
	                	$("#ximg_"+tmp).attr("src",elements["img_"+tmp].style.src);
	                 }
	             }  
	           ); 

	});
	gid.img++;
	 
	}
if(type=="file"){
 o=$("<div id='wrap_file_"+gid.file+"' style=' text-align:center;position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:115px;height:106px;'> <div class='draghand'> <div class='tid'>file_"+gid.file+"</div><div class='close_small'></div></div><div style='background-repeat:no-repeat;background-image:url("+context+"/resources/images/uploaddemo.png);'><input id='file_"+gid.file+"' type='file' style='opacity:0;filter:alpha(opacity=0);width:75px;height:75px;'></div></div>");
 var tmp=gid.file;
 elements["file_"+gid.file]=
	{style:
	{w:"90",h:"70", 
	 x:"0",
	 y:"0",
     backgroundImage:""} }; 

 o.resizable({
containment:".main" ,
alsoResize:"#file_"+tmp,
maxHeight:300,
maxWidth:300,
minHeight:60,
minWidth:80,
stop:function(e,ui){ 
	elements["file_"+tmp].style.w=parseInt(ui.size.width)-25;
	elements["file_"+tmp].style.h=parseInt(ui.size.height)-35;
 
}
});


$(".main").append(o);

gid.file++;
}

if(type=="hidden"){
	o=$("<div id='wrap_hidden_"+gid.hidden+"' style=' text-align:center;position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:170px;height:45px;'> <div class='draghand'> <div class='tid'>hidden_"+gid.hidden+"</div><div class='close_small'></div></div><input type='hidden' id='hidden_"+gid.hidden+"'/></div>");
    elements["hidden_"+gid.hidden]={style:
	{w:"70",h:"28",x:"0",y:"0"}}; 
 
	$(".main").append(o);
	 
	gid.hidden++;
}
if(type=="button"){
	o=$("<div id='wrap_button_"+gid.button+"' style=' text-align:center;position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:110px;height:65px;'> <div class='draghand'> <div class='tid'>button_"+gid.button+"</div><div class='close_small'></div></div><input type='text' value='确认' id='button_"+gid.button+"' style='text-align:center;font-size:13px;border-width:1px; color:#fff;background-color:#3274C2;width:70px;height:28px;border:solid 0px;background-repeat:no-repeat;border-radius:4px;'/></div>");

	elements["button_"+gid.button]=
	{event:
	       {  click:{ script:"" } }
	 ,style:
	{w:"70",h:"28",x:"0",
	 y:"0",
	 paddingLeft:"0",
	 borderWidth:"1",
	 borderColor:"a2a2a2",
	 fontSize:"13",
	 color:"ffffff",
	 backgroundColor:"3274C2",
	 fontFamily:0,
	 text:"确认",
	 backgroundImage:""} 
     }; 
	var tmp=gid.button;

	o.find("input").keyup(function(){
		elements["button_"+tmp].style.text=$(this).val();
		
	});
	
	 o.resizable({
	containment:".main" ,
	alsoResize:"#button_"+tmp,
	maxHeight:90,
	maxWidth:600,
	minHeight:60,
	minWidth:80,
	stop:function(e,ui){
	  
		elements["button_"+tmp].style.w=parseInt(ui.size.width)-40;
		elements["button_"+tmp].style.h=parseInt(ui.size.height)-37;
	 
	}
	});

	$(".main").append(o);
	gid.button++;
}
if(type=="time"){
	o=$("<div id='wrap_time_"+gid.time+"' style=' text-align:center;position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:170px;height:65px;'> <div class='draghand'> <div class='tid'>time_"+gid.time+"</div><div class='close_small'></div></div><input type='text' id='time_"+gid.time+"' style='border-style:solid;font-size:13px;border-width:1px; color:#000000;background-color:#ffffff;border-color:#A2A2A2;width:140px;height:25px;background-repeat:no-repeat;'/></div>");

	elements["time_"+gid.time]=
	{event:
	       {
		        init:{
	    	    isNow:false,
	    	    fmt:"yyyy-MM-dd HH:mm:ss",
	    	    sql:"",
	    	    ds:"",
	    	    httpURL:"",
	    	    httpmethod:"",
	    	    httpReturn:"",
	    	    valueType:"",
	    	    kvPair:new Object(),
	    	    value:""
	    	    } 
	         
	    	    }
	    	    
	    	    ,style:
	{w:"140",h:"25",x:"0",
	 y:"0",
	 paddingLeft:"0",
	 borderWidth:"1",
	 borderColor:"a2a2a2",
	 fontSize:"13",
	 color:"747474",
	 backgroundColor:"ffffff",
	 fontFamily:0,
	 backgroundImage:""},
	 }; 
	
	var tmp=gid.time;
	o.find("input").bind("click",function(e){
		e.stopPropagation();
		WdatePicker({dateFmt:"yyyy-MM-dd HH:mm:ss"});
		
	});
	
	
	 o.resizable({
	containment:".main" ,
	alsoResize:"#time_"+tmp,
	maxHeight:90,
	maxWidth:600,
	minHeight:60,
	minWidth:80,
	stop:function(e,ui){
	  
		elements["time_"+tmp].style.w=parseInt(ui.size.width)-30;
		elements["time_"+tmp].style.h=parseInt(ui.size.height)-40;
	 
	}
	});


	$(".main").append(o);
	 
	gid.time++;
	}
if(type=="text"){
o=$("<div id='wrap_text_"+gid.text+"' style=' text-align:center;position:absolute;top:"+top+"px;left:"+left+"px;cursor:default;border:dashed 0px #a2a2a2;width:170px;height:65px;'> <div class='draghand'> <div class='tid'>text_"+gid.text+"</div><div class='close_small'></div></div><input type='text' id='text_"+gid.text+"' style='border-style:solid;font-size:13px;border-width:1px; color:#000000;background-color:#ffffff;border-color:#A2A2A2;width:140px;height:25px;background-repeat:no-repeat;'/></div>");
 
elements["text_"+gid.text]=
{event:
       {
	        init:{
    	    initValue:"",
    	    fromURL:"",
    	    sql:"",
    	    ds:"",
    	    httpURL:"",
    	    httpmethod:"",
    	    httpReturn:"",
    	    valueType:"",
    	    kvPair:new Object(),
    	    value:""
    	    },
        	afterinit:{
    		script:""
    	    },
    	        click:{
        		script:""
        	    },
        	    dblclick:{
            		script:""
        	    },
        	    focus:{
            		script:""
        	    },
        	    blur:{
            		script:""
        	    }
    	    }
    	    
    	    ,style:
{w:"140",h:"25",x:"0",
 y:"0",
 paddingLeft:"0",
 borderWidth:"1",
 borderColor:"a2a2a2",
 fontSize:"13",
 color:"747474",
 backgroundColor:"ffffff",
 fontFamily:0,
 backgroundImage:""},
valid:{
text:"提示文字",
on:0,
position:0,
type:0,
regExp:"",
sql:"",
ds:"",
relation:"",
value:"",
style:{
	borderWidth:"1",
	borderColor:"c68f2a",
	fontSize:"13",
	color:"000000",
	backgroundColor:"ffffc6",
	paddingLeft:"6"	
}
 }}; 
 
 
var tmp=gid.text;
 o.resizable({
containment:".main" ,
alsoResize:"#text_"+tmp,
maxHeight:90,
maxWidth:600,
minHeight:60,
minWidth:80,
stop:function(e,ui){
  
	elements["text_"+tmp].style.w=parseInt(ui.size.width)-30;
	elements["text_"+tmp].style.h=parseInt(ui.size.height)-40;
 
}
});

$(".main").append(o);
 
gid.text++;
}

 sid=o.children("div").children(".tid").text();
 
getCss();
getValid();

o.mousedown(function(){
	sid=$(this).children("div").children(".tid").text();
	  $("div[id^='wrap_']").zIndex(1);
	  $(this).zIndex(2);
	  $("div[id^='wrap_']").each(function(){
		  
		  if($(this).attr("id").indexOf("table_")!=-1) 
			  $(this).zIndex(0);
		  
	  });
	 
  
});
o.contextmenu(function(e){
sid=$(this).children("div").children(".tid").text();
$(".right_menu").css("left",e.clientX);
$(".right_menu").css("top",e.clientY);
if(sid.indexOf("file_")!=-1||sid.indexOf("hidden_")!=-1||sid.indexOf("font_")!=-1){
	$(".right_menu>.right_menu_child:first").hide();
	$(".right_menu>.split:first").hide();
}else{
	$(".right_menu>.right_menu_child:first").show();
	$(".right_menu>.split:first").show();
}
$(".right_menu").slideDown("fast");
 
});
o.mouseover(function(){
	
 $(this).css("border-width","1px");
 $(this).find(".close_small").show();
});
o.mouseout(function(){
 $(this).css("border-width","0px");
 $(this).find(".close_small").hide();
});
o.click(function(){
sid=$(this).children("div").children(".tid").text();
getCss();
getValid();
});
 
o.draggable({
containment:".main",
handle:".draghand",
start:function(){
 
$("div[id^='tip_']").remove();

 
},
stop:function(e,ui){
 
$("div[id^='wrap_']").each(function(){
if(Math.abs(parseInt($(this).css("left"))-ui.position.left)<15){
o.css("left",$(this).css("left"));
}
if(Math.abs(parseInt($(this).css("top"))-ui.position.top)<15){
o.css("top",$(this).css("top"));
}
});
}

});
o.zIndex(2);
o.children(":first").children(".close_small").click(function(){
sid=o.children("div").children(".tid").text();	
 
delete elements[sid];
o.remove();
});
}

$(".main").click(function(e){
if($(".right_menu").css("display")!="none") $(".right_menu").slideUp("fast");
if($("#tip").css("display")=="none") return ;
 $("#tip").hide();
 $("#tip").css("top","0px");
 $("#tip").css("left","0px");
$(".main").unbind("mousemove");
 
formFactory($("#tip").attr("class").replace("tip_",""),e.clientX+parseInt($(".main_wrap").scrollLeft()),e.clientY-70+parseInt($(".main_wrap").scrollTop()));
});

$(".form_dialog>div:gt(0)").click(function(e){
$("#tip").attr("class","tip_"+$(this).attr("class"));
$("#tip").show();
$(".main").bind("mousemove",function(e){
$("#tip").css("top",e.clientY-30);
$("#tip").css("left",e.clientX);
});

});

$(".title_img_img,.title_img").click(function(e){
	$("#tip").attr("class","tip_img");
	$("#tip").show();
	$(".main").bind("mousemove",function(e){
	$("#tip").css("top",e.clientY-30);
	$("#tip").css("left",e.clientX);
	});

	});
$(".title_font_img,.title_font").click(function(e){
	$("#tip").attr("class","tip_font");
	$("#tip").show();
	$(".main").bind("mousemove",function(e){
	$("#tip").css("top",e.clientY-30);
	$("#tip").css("left",e.clientX);
	});

	});
$(".title_table_img,.title_table").click(function(e){
	$("#tip").attr("class","tip_table");
	$("#tip").show();
	$(".main").bind("mousemove",function(e){
	$("#tip").css("top",e.clientY-30);
	$("#tip").css("left",e.clientX);
	});

	});
$(".closeImg,.no").click(function(){
$(this).parent().parent().slideUp("fast");
});
 
 $(".form_dialog,div[class$='_event_panel'],.eq_selected,.alert_selected,.tip_editor,.open_panel").draggable({
 handle:".form_dialog_head",
 containment:document.body
 });
 
 $(".event_item").click(function(){
	 var p=$(this).parent();
	 p.children(".event_item").removeClass("event_item_selected");
	 $(this).addClass("event_item_selected");
	 
 });
 
 
 $('.time_radio .radio_item').click(function(e){
	 
	 $('.time_radio .radio_item').removeClass("radio_item_click");
	 $(this).addClass("radio_item_click");
	 
 });
 
  $('.trigger_type .radio_item').click(function(e){
 $('.trigger_type .radio_item').removeClass("radio_item_click");
  $(this).addClass("radio_item_click");
  elements[sid].valid.on=$(this).index();
 });
  
  $('.typeofmsg2 .radio_item').click(function(e){
	  $('.typeofmsg2 .radio_item').removeClass("radio_item_click");
	   $(this).addClass("radio_item_click");
	  if($(this).index()==0){
		  $(".kv_panel2").show();
		  $(".kv_panel_add2").show();
		  $(".kv_panel_del2").show();
		  $(".text_panel2").hide();
	  }else{
		  $(".kv_panel2").hide();
		  $(".kv_panel_add2").hide();
		  $(".kv_panel_del2").hide();
		  $(".text_panel2").show();
	  }
	  
	  });
  
  $('.typeofmsg .radio_item').click(function(e){
	   $(this).siblings().removeClass("radio_item_click");
	   $(this).addClass("radio_item_click");
	  if($(this).index()==0){
		 $(this).parent().next().next().next().show();
		 $(this).parent().next().show();
		 $(this).parent().next().next().show();
		 $(this).parent().next().next().next().next().hide();
	  }else{
		  $(this).parent().next().next().next().hide();
		  $(this).parent().next().hide();
		  $(this).parent().next().next().hide();
		  $(this).parent().next().next().next().next().show();
	  }
	  
	  });

   $('.tip_position .radio_item').click(function(e){
 $('.tip_position .radio_item').removeClass("radio_item_click");
  $(this).addClass("radio_item_click");
  elements[sid].valid.position= $(this).index();
  
  
  if($("div[id^='tip_']").length==0) return;
  $("div[id^='tip_']").remove();
  var top=0;
  var left=0;
  if($(this).index()==0){
  top=parseInt($("#wrap_"+sid).css("top"))+32;
  left=parseInt($("#wrap_"+sid).css("left"))+parseInt($("#wrap_"+sid).width());
 
  }else{
  top=parseInt($("#wrap_"+sid).css("top"))+parseInt($("#wrap_"+sid).height());
  left=parseInt($("#wrap_"+sid).css("left"))+20 ;
 
  }
  
  var tip=$("<div id='tip_"+sid+"' style=' position:absolute;top:"+top+"px;left:"+left+"px;border-style:solid;border-radius:5px;padding-right:6px;'>"+$(".tipcontent").val()+"</div>")
  tip.css("background-color","#"+elements[sid].valid.style.backgroundColor);
  tip.css("border-color","#"+elements[sid].valid.style.borderColor);
  tip.css("border-width",elements[sid].valid.style.borderWidth+"px");
  tip.css("color","#"+elements[sid].valid.style.color);
  tip.css("font-size",elements[sid].valid.style.fontSize+"px");
  tip.css("padding-left",elements[sid].valid.style.paddingLeft+"px");
  $(".main").append(tip);
 });
   
$('.rule_div .radio_item').click(function(e){
  e.stopPropagation();
  $('.rule_div .radio_item').removeClass("radio_item_click");
  $(this).addClass("radio_item_click");
  elements[sid].valid.type=$(this).index()==0?$("#rules").val():8;
  
 });
$(".main_wrap").css("height",$(window).height()-110);
 $(".main_wrap").width(parseInt($(window).width())-292+"px");
 
 
 window.onresize=function(){
 $(".main_wrap").width($(window).width()-292);
 $(".main_wrap").css("height",$(window).height()-110);
  $(".valid").height($(window).height()-275);
  $("#right_content,#right_content_modal").height($(".valid").height()-30);
  $("#right_content").niceScroll({
  background:"#232323" ,cursorborder :"0px" ,autohidemode:false,cursorcolor:"#414141",cursorwidth:12,
 });
 }
 
 $("#fonts").parent().next().next().next().children().niceScroll({
 background:"#191919" ,cursorborder :"0px"  
 });
 setCssSelect("#fonts,#rules,.schema_ds");
 
 
  $('.preshow').click(function(e){
	  var v=false;
	 for(var k in elements){
		 if(k.indexOf("_")!=-1){
			 v=true ;
		 }
	 }
   if(!v) return ;
   if(sid.indexOf("select_")!=-1) return ;
   if(sid.indexOf("ueditor_")!=-1) return ;
   if(sid.indexOf("font_")!=-1) return ;
   if(sid.indexOf("checkbox_")!=-1) return ;
   if(sid.indexOf("radio_")!=-1) return ;
   if(sid.indexOf("img_")!=-1) return ;
   if(sid.indexOf("hidden_")!=-1) return ;
   if(sid.indexOf("time_")!=-1) return ;
   if(sid.indexOf("file_")!=-1) return ;
   
  if($("div[id^='tip_']").length>0){
  $("div[id^='tip_']").remove();
 }else{
 var index=0;
 $('.tip_position .radio_item').each(function(){
 if($(this).hasClass("radio_item_click")) index=$(this).index();
 });
 var top=parseInt($("#wrap_"+sid).css("top"))+parseInt($("#wrap_"+sid).height());
 var left=parseInt($("#wrap_"+sid).css("left"))+20 ;
 if(index==0){
top=parseInt($("#wrap_"+sid).css("top"))+32;
left=parseInt($("#wrap_"+sid).css("left"))+parseInt($("#wrap_"+sid).width());
}
var tip=$("<div id='tip_"+sid+"' style='height:25px; position:absolute;top:"+top+"px;left:"+left+"px;background-color:#FFFFC6;border:solid "+$(".tip_css .border_width:eq(0)").val()+"px #C68F2A;font-size:13px;line-height:25px;border-radius:5px;padding-left:6px;padding-right:6px;'>"+$(".tipcontent").val()+"</div>")
$(".main").append(tip);
}
 
 });
  $(".myrule").keyup(function(){
   elements[sid].valid.regExp=$(this).val();
	  });
	   
	  $(".tipcontent").keyup(function(){
	  $("#tip_"+sid).text($(this).val());
	  elements[sid].valid.text=$(this).val();
	  });
	   $(".tipcontent").click(function(){
	  $("#tip_"+sid).text($(this).val());
	  elements[sid].valid.text=$(this).val();
	  });
	   $(".tipcontent").blur(function(){
	  $("#tip_"+sid).text($(this).val());
	  elements[sid].valid.text=$(this).val();
	  });
	  
	   $(".nicescroll-rails").css("border-width","0px"); 
	   $(".valid").height($(window).height()-275);
	 $("#right_content,#right_content_modal").height($(".valid").height()-30);
	 $("#right_content,.scratch_editor").niceScroll({
	 	  background:"#232323" ,cursorborder :"0px" ,autohidemode:false,cursorcolor:"#414141",cursorwidth:12,
	 	 });
  


</script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/resources/alert_config.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/resources/scratch.js"></script>
  
 </body>
</html>