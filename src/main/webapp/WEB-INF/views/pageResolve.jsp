<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
 <script src="<%=request.getContextPath()%>/resources/echarts.common.min.js"></script>
 <script src="<%=request.getContextPath()%>/resources/jquery-1.11.0.min.js"></script>
 
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/easydropdown/themes/easydropdown.css" />
 <script type="text/javascript" src="<%=request.getContextPath()%>/resources/easydropdown/jquery.easydropdown.min.js"></script>
 <link href="<%=request.getContextPath()%>/resources/form.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/umeditor/umeditor.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/ajaxfileupload.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/umeditor/umeditor.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/umeditor/umeditor.config.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/umeditor/zh-cn.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/My97DatePicker/WdatePicker.js"></script>

</head>
<body>

<div class="modal"></div>


 <div id="tip_alert" class="tip_demo" style="position:absolute;display:none;width:363px;">
 <div class="tip_head">提示</div>
   <div style="width:353px;height:5px"></div>
  
  <div style="width:15px;height:70px;float:left "></div>
 <div id="face" class="tipicon"></div>
   <div style="width:10px;height:70px;float:left "></div>
  <div style="width:250px; height:70px;float:left; font-size:13px;">
  <div style="width:100%;height:20px;"></div>
  <div class="tipfont">用户信息保存成功！</div>
  </div>
 <div class="tip_foot">
  <input type="button" class="alert_ensure" value="确认">
 
 </div>
 
 </div>

 <div id="opener" style="z-index:99;display:none;top:100px;left:100px;border:solid 8px #a2a2a2;border-radius:7px;position:absolute;height:300px;width:363px;">
 <div class="opener_header"><div class="opener_header_title"></div><div class="close_small4jsp"></div></div>
 <iframe src="" scrolling="no" style="height:268px;width:100%;border:0px"></iframe>
 </div>

</body>
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

 $(".close_small4jsp").click(function(){
	  $("#opener,.modal").fadeOut("fast");
 });
 
$("#tip_alert .alert_ensure").click(function(){
	
	$("#tip_alert,.modal").fadeOut("fast");
});
 
function checkboxval(id){
	var arr=[];
	$(id).find("input").each(function(){
		if($(this).val()!="") arr.push($(this).val());
	 }); 
	return arr.join(",");
} 

function opener(src,w,h,title,bg){
	var r0=new RegExp("U\{(.+?)\}");
	var r1=new RegExp("L\{(.+?)\}");
	var arr0=[],arr1=[];
	while(arr0=r0.exec(src))  src=src.replace(arr0[0],getQuery(arr0[1])); 
	while(arr1=r1.exec(src))  {
		if(arr1[1].indexOf("checkbox_")==-1)
		src=src.replace(arr1[0],$("#"+arr1[1]).val());
		else
		src=src.replace(arr1[0],checkboxval("#"+arr1[1]));
	}
 
	$("#opener").css("border-color","#"+bg);
	$(".opener_header").css("background-color","#"+bg);
	$("#opener").width(w+"px");
	$("#opener").height(h+"px");
	$(".opener_header_title").html(title);
	$("iframe").attr("src",src);
	$("iframe").height((h-32)+"px");
	$("#opener").css("top",parseInt($(window).scrollTop())+(parseInt($(window).height())-parseInt($("#opener").height()))/2+"px");
	$("#opener").css("left",(parseInt($(window).width())-parseInt($("#opener").width()))/2+"px");
	
	$("#opener,.modal").fadeIn("fast");
} 
function show(type,obj,msg){
	if(type=="alert"){
		$("#face").attr("class","tipicon");
	}else{
		$("#face").attr("class","tipicon_warn");
	}
	$("#tip_alert").css("top",parseInt($(window).scrollTop())+(parseInt($(window).height())-parseInt($(".tip_demo").height()))/2+"px");
	$("#tip_alert").css("left",(parseInt($(window).width())-parseInt($(".tip_demo").width()))/2+"px");
	$("#tip_alert .tipfont").html(msg);
	$("#tip_alert .tip_head").css("background-color","#"+obj.topbg);
	$("#tip_alert").css("background-color","#"+obj.midbg);
	$("#tip_alert .tip_foot").css("background-color","#"+obj.bottombg);
	$("#tip_alert").css("color","#"+obj.fontcolor);
	$("#tip_alert .tip_head").css("color","#"+obj.titlecolor);
	$("#tip_alert .alert_ensure").css("background-color","#"+obj.okbg);
	$("#tip_alert .alert_ensure").css("color","#"+obj.okfont);
	
	$("#tip_alert,.modal").fadeIn("fast");
	
	 
}
window.onresize=function(){
	$("#opener").css("top",parseInt($(window).scrollTop())+(parseInt($(window).height())-parseInt($("#opener").height()))/2+"px");
	$("#opener").css("left",(parseInt($(window).width())-parseInt($("#opener").width()))/2+"px");
	$(".tip_demo").css("top",parseInt($(window).scrollTop())+(parseInt($(window).height())-parseInt($(".tip_demo").height()))/2+"px");
	$(".tip_demo").css("left",(parseInt($(window).width())-parseInt($(".tip_demo").width()))/2+"px");
	
}
 

function getQuery(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
    } 
var context="<%=request.getContextPath()%>";
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
 

var json=${json};
function init(){
 
	
	for(var o in json){
		
	 
		if(o=="page"){
		 
	    document.title=json[o].title;
		document.body.bgColor="#"+json[o].bg;
		}
		
		if(o.indexOf("img_")!=-1){
			var $img=$("<img id='"+o+"' src='<%=request.getContextPath()%>/resources/images/defaultimg.png' style='z-index:2;border:solid 0px;position:absolute;' ></div>");
			 $img.css("left",json[o].style.x+"px"); 
			 $img.css("top",json[o].style.y+"px");
			 $img.css("width",json[o].style.w+"px"); 
			 $img.css("height",json[o].style.h+"px");
		 
		 
			 if(json[o].style.src.indexOf(".")>1)
			 $img.attr("src", json[o].style.src);
			 
		     $img.data("click",nativeParse(json[o],"click"));
	   
	         $img.click(function(){
              eval($(this).data("click")); 
             });
			 $("body").append($img);
		}
 
		if(o.indexOf("table_")!=-1){
			var $table=$("<div id='"+o+"' style='z-index:0;border:solid 0px #000;position:absolute;background-color:transparent;background-repeat:no-repeat;' ></div>");
			 $table.css("left",json[o].style.x+"px");
			  
			 $table.css("top",json[o].style.y+"px");
			 $table.css("width",json[o].style.w+"px");
		 
			 $table.css("height",json[o].style.h+"px");
			 $table.css("border-width",json[o].style.borderWidth+"px");
			 $table.css("border-color","#"+json[o].style.borderColor);
	 
			 $table.css("background-color","#"+json[o].style.backgroundColor);
		 
			 if(json[o].style.backgroundImage.indexOf(".")>1)
			 $table.css("background-image","url("+context+"/resources/uploadimg/"+json[o].style.backgroundImage+")");
			 $table.css("padding-left",json[o].style.paddingLeft+"px");
			 $("body").append($table);
		}
		if(o.indexOf("textarea_")!=-1){
			 
			 var $textarea=$("<textarea id='"+o+"' style='resize:none;z-index:2;background-repeat:no-repeat;position:absolute;border-style:solid;'  ></textarea>");
			 $textarea.css("left",json[o].style.x+"px");
			 
			 $textarea.css("top",json[o].style.y+"px");
			 $textarea.css("width",json[o].style.w+"px");
			 $textarea.css("height",json[o].style.h+"px");
			 $textarea.css("border-width",json[o].style.borderWidth+"px");
			 $textarea.css("border-color","#"+json[o].style.borderColor);
			 $textarea.css("font-size",json[o].style.fontSize+"px");
			 $textarea.css("color","#"+json[o].style.color);
			 $textarea.css("background-color","#"+json[o].style.backgroundColor);
			 $textarea.css("font-family",fontDict[json[o].style.fontFamily]);
			 if(json[o].style.backgroundImage.indexOf(".")>1)
			 $textarea.css("background-image","url("+context+"/resources/uploadimg/"+json[o].style.backgroundImage+")");
			 $textarea.css("padding-left",json[o].style.paddingLeft+"px");
			 //事件
	         $textarea.data("click",nativeParse(json[o],"click"));
	    
	         $textarea.data("afterinit",nativeParse(json[o],"afterinit"));
	        
	         setTimeout(function(){
	        	 eval($textarea.data("afterinit")); 
	         },500);
	        
	        $textarea.click(function(){
	         
              eval($(this).data("click")); 
             });
                $textarea.data("dblclick",nativeParse(json[o],"dblclick"));
            
	        $textarea.dblclick(function(){
              eval($(this).data("dblclick")); 
             });
	 
          $textarea.data("focus",nativeParse(json[o],"focus"));
            
	        $textarea.focus(function(){
              eval($(this).data("focus")); 
             });
	   	 //初始化
			if(json[o].event.init.initValue!=""){
				$textarea.val(json[o].event.init.initValue);
			}
		 
			if(json[o].event.init.sql!=""){
				
			    var sql=json[o].event.init.sql;
				var r0=new RegExp("U\{(.+?)\}");
        		var r1=new RegExp("L\{(.+?)\}");
        		var arr0=[],arr1=[];
        		while(arr0=r0.exec(sql)) sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'");
        		while(arr1=r1.exec(sql))  
        		 {
        				if(arr1[1].indexOf("checkbox_")==-1)
        				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
        				else
        				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
        			}
        		 
					$.ajax({async:false,
						    url:context+"/ds/singleValue",
					        type:"post",
							data:{ds:json[o].event.init.ds,
						    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
						    sql:sql},
							success:function(data){
						   $textarea.val(data);
					}});
		     }
	        if(json[o].event.init.httpURL!=""){
	        	var t=json[o].event.init.valueType;
	        	var msg="";
	        	if(t=="kv"){
	        		
	        	var kv=json[o].event.init.kvPair;
	        
	        	for(var k in kv){
	        		if(kv[k].indexOf("U{")!=-1){
	        			kv[k]=eval(kv[k].replace(/U\{(.+?)\}/g,"getQuery('$1')"));
	        		}
	        		else if(kv[k].indexOf("L{")!=-1){
	        			kv[k]=eval(kv[k].replace(/L\{(checkbox.+?)\}/g,"checkboxval('#$1')"));
	        			kv[k]=eval(kv[k].replace(/L\{(.+?)\}/g,"$('#$1').val()"));
	        		}
	        	}
	        	msg=JSON.stringify(json[o].event.init.kvPair);
	        	  
	        	}else{
	        		msg=json[o].event.init.value;
	        		var r0=new RegExp("U\{(.+?)\}");
	        		var r1=new RegExp("L\{(.+?)\}");
	        		var arr0=[],arr1=[];
	        		while(arr0=r0.exec(msg)) msg=msg.replace(arr0[0],getQuery(arr0[1]));
	        	    while(arr1=r1.exec(msg)) 
	        	    {
        				if(arr1[1].indexOf("checkbox_")==-1)
        				msg=msg.replace(arr1[0],$("#"+arr1[1]).val());
        				else
        				msg=msg.replace(arr1[0],checkboxval("#"+arr1[1]));
        			}
        		 
	        	  
	        	}
	        	$.ajax({url:context+"/obtainHttpMsg",
	        		 type:"post",
	        		 async:false,
						data:{httpmethod:json[o].event.init.httpmethod,
	        		    valueType:json[o].event.init.valueType,
	        		    msg:msg,
					    httpURL:json[o].event.init.httpURL},
						success:function(data){
					 if(data.indexOf("{")!=-1){
						 
					    var R=JSON.parse(data); 
						$textarea.val(eval(json[o].event.init.httpReturn));
						 }else if(data.indexOf("<")!=-1){
						      var R = $($.parseXML(data));
						      $textarea.val(eval(json[o].event.init.httpReturn));
						 
							 }else  $textarea.val(data);
				 
					 
				}});
			}
	        
			 //校验
			 var $tip=$('<div id="tip_'+o+'" style="display:none;position:absolute;border-style:solid;border-radius:5px;padding-right:6px;background-repeat:no-repeat;">'+json[o].valid.text+'</div>');
			 if(json[o].valid.on==0){
				
				 $textarea.blur(function(){
					 
                     var type=json[$(this).attr("id")].valid.type;
					  var reg;
					  if(type==0)
					  reg=/.*/;
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
					  if(type==8&&$.trim(json[$(this).attr("id")].valid.regExp)!="") 
					  reg=new RegExp($.trim(json[$(this).attr("id")].valid.regExp));
					  
					  if(!reg.test($(this).val()))
					   $('#tip_'+ $(this).attr("id")).fadeIn();
					  else
						$('#tip_'+ $(this).attr("id")).fadeOut();
					 var _this=$(this);
					  if(json[$(this).attr("id")].valid.sql!=""){
						var sql=json[$(this).attr("id")].valid.sql;
					   
		        			var r0=new RegExp("U\{(.+?)\}");
			        		var r1=new RegExp("L\{(.+?)\}");
			        		var arr0=[],arr1=[];
			        		while(arr0=r0.exec(sql))  sql=sql.replace(arr0[0],getQuery(arr0[1]));
			        	 
			        		while(arr1=r1.exec(sql))   
			        		 {
			        				if(arr1[1].indexOf("checkbox_")==-1)
			        				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
			        				else
			        				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
			        			}
			        		 
			        		
			        		
				         	$.ajax({async:false,
							    url:context+"/ds/singleValue",
						        type:"post",
								data:{ds:json[$(this).attr("id")].valid.ds,
							    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
							    sql:sql},
								success:function(data){
								var codeArr=new Array();	
								codeArr.push(data);
								if(json[_this.attr("id")].valid.relation==0){
							           codeArr.push("==");
								}
								if(json[_this.attr("id")].valid.relation==1){
									   codeArr.push("!=");
										}
								if(json[_this.attr("id")].valid.relation==2){
									   codeArr.push(">=");
										}
								if(json[_this.attr("id")].valid.relation==3){
									   codeArr.push(">");
										}
								if(json[_this.attr("id")].valid.relation==4){
									   codeArr.push("<");
										}
								if(json[_this.attr("id")].valid.relation==5){
									   codeArr.push("<=");
										}
								codeArr.push(json[_this.attr("id")].valid.value);
								  
								      if(!eval(codeArr.join("")))
									   $('#tip_'+ _this.attr("id")).fadeIn(); 
									  else
									   $('#tip_'+ _this.attr("id")).hide();
						}});
						  
					  }
					  
					  
				 });
				 
			 } 
			 if(json[o].valid.position==0){
			 
				var top=json[o].style.y;
				var left=parseInt(json[o].style.x)+parseInt(json[o].style.w)+10;
				$tip.css("top",top+"px");
				$tip.css("left",left+"px");
			 
			}else{
				 var top=parseInt(json[o].style.y)+parseInt(json[o].style.h)+10;
				 var left= json[o].style.x  ;
				$tip.css("top",top+"px");
				$tip.css("left",left+"px");
			}
			$tip.css("border-width",json[o].valid.style.borderWidth+"px"); 
			$tip.css("border-color","#"+json[o].valid.style.borderColor); 
			$tip.css("background-color","#"+json[o].valid.style.backgroundColor); 
			$tip.css("color","#"+json[o].valid.style.color); 
			$tip.css("font-size",json[o].valid.style.fontSize+"px"); 
			$tip.css("padding-left",json[o].valid.style.paddingLeft+"px");
			 $("body").append($tip);
		
			 $("body").append($textarea);
		}
		
		if(o.indexOf("time_")!=-1){
			var $time=$("<input id='"+o+"' style='z-index:2;background-repeat:no-repeat;position:absolute;border-style:solid;' type='text'/>");
			 $time.css("left",json[o].style.x+"px");
			 
			 $time.css("top",json[o].style.y+"px");
			 $time.css("width",json[o].style.w+"px");
			 $time.css("height",json[o].style.h+"px");
			 $time.css("border-width",json[o].style.borderWidth+"px");
			 $time.css("border-color","#"+json[o].style.borderColor);
			 $time.css("font-size",json[o].style.fontSize+"px");
			 $time.css("color","#"+json[o].style.color);
			 $time.css("background-color","#"+json[o].style.backgroundColor);
			 $time.css("font-family",fontDict[json[o].style.fontFamily]);
			 if(json[o].style.backgroundImage.indexOf(".")>1)
			 $time.css("background-image","url("+context+"/resources/uploadimg/"+json[o].style.backgroundImage+")");
			 $time.css("padding-left",json[o].style.paddingLeft+"px");
 
				$time.data("fmt",json[o].event.init.fmt);
				$time.bind("click",function(e){
					 
					WdatePicker({dateFmt:$time.data("fmt")}); 
				});
				if(json[o].event.init.isNow){
					$time.val(new Date().format($time.data("fmt")));
				}
				
				if(json[o].event.init.sql!=""){
					
				    var sql=json[o].event.init.sql;
				   
					var r0=new RegExp("U\{(.+?)\}");
	        		var r1=new RegExp("L\{(.+?)\}");
	        		var arr0=[],arr1=[];
	        		while(arr0=r0.exec(sql)) sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'"); 
	        		while(arr1=r1.exec(sql))  
	        		 {
	        				if(arr1[1].indexOf("checkbox_")==-1)
	        				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
	        				else
	        				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
	        			}
	        		 	 
	        		
						$.ajax({async:false,
							    url:context+"/ds/singleValue",
						        type:"post",
								data:{ds:json[o].event.init.ds,
							    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
							    sql:sql},
								success:function(data){
							   $time.val(data);
						}});
			     }
				
				
				if(json[o].event.init.httpURL!=""){
		        	var t=json[o].event.init.valueType;
		        	var msg="";
		        	if(t=="kv"){     		
		        	var kv=json[o].event.init.kvPair;
		        
		        	for(var k in kv){
		        		if(kv[k].indexOf("U{")!=-1){
		        			kv[k]=eval(kv[k].replace(/U\{(.+?)\}/g,"getQuery('$1')"));
		        		}
		        		else if(kv[k].indexOf("L{")!=-1){
		        			kv[k]=eval(kv[k].replace(/L\{(checkbox.+?)\}/g,"checkboxval('#$1')"));
		        		 
		        			kv[k]=eval(kv[k].replace(/L\{(.+?)\}/g,"$('#$1').val()"));
		        		}
		        	}
		        	msg=JSON.stringify(json[o].event.init.kvPair);
		        	  
		        	}else{
		        		msg=json[o].event.init.value;
		        		var r0=new RegExp("U\{(.+?)\}");
		        		var r1=new RegExp("L\{(.+?)\}");
		        		var arr0=[],arr1=[];
		        		while(arr0=r0.exec(msg)) msg=msg.replace(arr0[0],getQuery(arr0[1])); 
		        		while(arr1=r1.exec(msg))  
		        		 {
		        				if(arr1[1].indexOf("checkbox_")==-1)
		        				msg=msg.replace(arr1[0],$("#"+arr1[1]).val());
		        				else
		        				msg=msg.replace(arr1[0],checkboxval("#"+arr1[1]));
		        			}
		        		 
		        	  
		        	}
		        	$.ajax({url:context+"/obtainHttpMsg",
		        		 type:"post",
		        		 async:false,
							data:{httpmethod:json[o].event.init.httpmethod,
		        		    valueType:json[o].event.init.valueType,
		        		    msg:msg,
						    httpURL:json[o].event.init.httpURL},
							success:function(data){
						 if(data.indexOf("{")!=-1){
							 
						    var R=JSON.parse(data); 
							$time.val(eval(json[o].event.init.httpReturn));
							 }else if(data.indexOf("<")!=-1){
							      var R = $($.parseXML(data));
							      $time.val(eval(json[o].event.init.httpReturn));
							 
								 }else  $time.val(data);
					 
						 
					}});
				}
				
				
			 $("body").append($time);
		}
		
		if(o.indexOf("text_")!=-1){
		 
			 var $text=$("<input id='"+o+"' style='z-index:2;background-repeat:no-repeat;position:absolute;border-style:solid;' type='text'/>");
			 $text.css("left",json[o].style.x+"px");
			 
			 $text.css("top",json[o].style.y+"px");
			 $text.css("width",json[o].style.w+"px");
			 $text.css("height",json[o].style.h+"px");
			 $text.css("border-width",json[o].style.borderWidth+"px");
			 $text.css("border-color","#"+json[o].style.borderColor);
			 $text.css("font-size",json[o].style.fontSize+"px");
			 $text.css("color","#"+json[o].style.color);
			 $text.css("background-color","#"+json[o].style.backgroundColor);
			 $text.css("font-family",fontDict[json[o].style.fontFamily]);
			 if(json[o].style.backgroundImage.indexOf(".")>1)
			 $text.css("background-image","url("+context+"/resources/uploadimg/"+json[o].style.backgroundImage+")");
			 $text.css("padding-left",json[o].style.paddingLeft+"px");
		 //事件
			         $text.data("click",nativeParse(json[o],"click"));
			    
			         $text.data("afterinit",nativeParse(json[o],"afterinit"));
			        
			         setTimeout(function(){
			        	 eval($text.data("afterinit")); 
			         },500);
			        
			        $text.click(function(){
			         
                      eval($(this).data("click")); 
                     });
                        $text.data("dblclick",nativeParse(json[o],"dblclick"));
                    
			        $text.dblclick(function(){
                      eval($(this).data("dblclick")); 
                     });
			 
                  $text.data("focus",nativeParse(json[o],"focus"));
                    
			        $text.focus(function(){
                      eval($(this).data("focus")); 
                     });
			 //初始化
			if(json[o].event.init.initValue!=""){
				$text.val(json[o].event.init.initValue);
			}
			 
			if(json[o].event.init.fromURL!=""){
				var s=json[o].event.init.fromURL;
				s=s.replace(/U\{(.+?)\}/gi,"getQuery('$1')");
				$text.val(eval(s));
				
			}
			
			if(json[o].event.init.sql!=""){
				
			    var sql=json[o].event.init.sql;
				var r0=new RegExp("U\{(.+?)\}");
        		var r1=new RegExp("L\{(.+?)\}");
        		var arr0=[],arr1=[];
        		while(arr0=r0.exec(sql)) sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'"); 
        		while(arr1=r1.exec(sql))  
        		 {
     				if(arr1[1].indexOf("checkbox_")==-1)
     				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
     				else
     				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
     			}
     		 
		  
					$.ajax({async:false,
						    url:context+"/ds/singleValue",
					        type:"post",
							data:{ds:json[o].event.init.ds,
						    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
						    sql:sql},
							success:function(data){
						   $text.val(data);
					}});
		     }
			
	        if(json[o].event.init.httpURL!=""){
	        	var t=json[o].event.init.valueType;
	        	var msg="";
	        	if(t=="kv"){     		
	        	var kv=json[o].event.init.kvPair;
	        
	        	for(var k in kv){
	        		if(kv[k].indexOf("U{")!=-1){
	        			kv[k]=eval(kv[k].replace(/U\{(.+?)\}/g,"getQuery('$1')"));
	        		}
	        		else if(kv[k].indexOf("L{")!=-1){
	        			kv[k]=eval(kv[k].replace(/L\{(checkbox.+?)\}/g,"checkboxval('#$1')"));
	        			kv[k]=eval(kv[k].replace(/L\{(.+?)\}/g,"$('#$1').val()"));
	        		}
	        	}
	        	msg=JSON.stringify(json[o].event.init.kvPair);
	        	  
	        	}else{
	        		msg=json[o].event.init.value;
	        		var r0=new RegExp("U\{(.+?)\}");
	        		var r1=new RegExp("L\{(.+?)\}");
	        		var arr0=[],arr1=[];
	        		while(arr0=r0.exec(msg)) msg=msg.replace(arr0[0],getQuery(arr0[1])); 
	        		while(arr1=r1.exec(msg)) 
	        		 {
	        				if(arr1[1].indexOf("checkbox_")==-1)
	        				msg=msg.replace(arr1[0],$("#"+arr1[1]).val());
	        				else
	        				msg=msg.replace(arr1[0],checkboxval("#"+arr1[1]));
	        			}
	        		 
	        	  
	        	}
	        	$.ajax({url:context+"/obtainHttpMsg",
	        		 type:"post",
	        		 async:false,
						data:{httpmethod:json[o].event.init.httpmethod,
	        		    valueType:json[o].event.init.valueType,
	        		    msg:msg,
					    httpURL:json[o].event.init.httpURL},
						success:function(data){
					 if(data.indexOf("{")!=-1){
						 
					    var R=JSON.parse(data); 
						$text.val(eval(json[o].event.init.httpReturn));
						 }else if(data.indexOf("<")!=-1){
						      var R = $($.parseXML(data));
						      $text.val(eval(json[o].event.init.httpReturn));
						 
							 }else  $text.val(data);
				 
					 
				}});
			}
			
			 //校验
			 var $tip=$('<div id="tip_'+o+'" style="display:none;position:absolute;border-style:solid;border-radius:5px;padding-right:6px;background-repeat:no-repeat;">'+json[o].valid.text+'</div>');
			 if(json[o].valid.on==0){
				
				 $text.blur(function(){
					 
                      var type=json[$(this).attr("id")].valid.type;
					  var reg;
					  if(type==0)
					  reg=/.*/;
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
					  if(type==8&&$.trim(json[$(this).attr("id")].valid.regExp)!="") 
					  reg=new RegExp($.trim(json[$(this).attr("id")].valid.regExp));
					  
					  if(!reg.test($(this).val()))
					   $('#tip_'+ $(this).attr("id")).fadeIn();
					  else
						$('#tip_'+ $(this).attr("id")).fadeOut();
					 var _this=$(this);
					  if(json[$(this).attr("id")].valid.sql!=""){
						var sql=json[$(this).attr("id")].valid.sql;
					   
		        			var r0=new RegExp("U\{(.+?)\}");
			        		var r1=new RegExp("L\{(.+?)\}");
			        		var arr0=[],arr1=[];
			        		while(arr0=r0.exec(sql))  sql=sql.replace(arr0[0],getQuery(arr0[1]));
			        	 
			        		while(arr1=r1.exec(sql))  
			        		 {
		        				if(arr1[1].indexOf("checkbox_")==-1)
		        				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
		        				else
		        				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
		        			}
		        		 
			        			
				         	$.ajax({async:false,
							    url:context+"/ds/singleValue",
						        type:"post",
								data:{ds:json[$(this).attr("id")].valid.ds,
							    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
							    sql:sql},
								success:function(data){
								var codeArr=new Array();	
								codeArr.push(data);
								if(json[_this.attr("id")].valid.relation==0){
							           codeArr.push("==");
								}
								if(json[_this.attr("id")].valid.relation==1){
									   codeArr.push("!=");
										}
								if(json[_this.attr("id")].valid.relation==2){
									   codeArr.push(">=");
										}
								if(json[_this.attr("id")].valid.relation==3){
									   codeArr.push(">");
										}
								if(json[_this.attr("id")].valid.relation==4){
									   codeArr.push("<");
										}
								if(json[_this.attr("id")].valid.relation==5){
									   codeArr.push("<=");
										}
								codeArr.push(json[_this.attr("id")].valid.value);
								  
								      if(!eval(codeArr.join("")))
									   $('#tip_'+ _this.attr("id")).fadeIn(); 
									  else
									   $('#tip_'+ _this.attr("id")).hide();
						}});
						  
					  }
					  
					  
				 });
				 
			 } 
			 if(json[o].valid.position==0){
			 
				var top=json[o].style.y;
				var left=parseInt(json[o].style.x)+parseInt(json[o].style.w)+10;
				$tip.css("top",top+"px");
				$tip.css("left",left+"px");
			 
			}else{
				 var top=parseInt(json[o].style.y)+parseInt(json[o].style.h)+10;
				 var left= json[o].style.x  ;
				$tip.css("top",top+"px");
				$tip.css("left",left+"px");
			}
			$tip.css("border-width",json[o].valid.style.borderWidth+"px"); 
			$tip.css("border-color","#"+json[o].valid.style.borderColor); 
			$tip.css("background-color","#"+json[o].valid.style.backgroundColor); 
			$tip.css("color","#"+json[o].valid.style.color); 
			$tip.css("font-size",json[o].valid.style.fontSize+"px"); 
			$tip.css("padding-left",json[o].valid.style.paddingLeft+"px");
			 $("body").append($tip);
			 $("body").append($text);
			
		}
	        	
		 if(o.indexOf("button_")!=-1){
			 $button=$("<input id='"+o+"' style='border-radius:4px;z-index:2;background-repeat:no-repeat;position:absolute;border-style:solid;' type='button'/>");
             $button.css("left",json[o].style.x+"px"); 
			 $button.css("top",json[o].style.y+"px");
			 $button.css("width",json[o].style.w+"px");
			 $button.css("height",json[o].style.h+"px");
			 $button.css("border-width",json[o].style.borderWidth+"px");
			 $button.css("border-color","#"+json[o].style.borderColor);
			 $button.css("font-size",json[o].style.fontSize+"px");
			 $button.css("color","#"+json[o].style.color);
			 $button.css("background-color","#"+json[o].style.backgroundColor);
			 $button.css("font-family",fontDict[json[o].style.fontFamily]);
			 if(json[o].style.backgroundImage.indexOf(".")>1)
			 $button.css("background-image","url("+context+"/resources/uploadimg/"+json[o].style.backgroundImage+")");
			 $button.css("padding-left",json[o].style.paddingLeft+"px");
			 $button.val(json[o].style.text);
		 //事件
			         $button.data("click",nativeParse(json[o],"click"));
			     
			        $button.click(function(){
			         
                      eval($(this).data("click")); 
                     });
			        
			        
			        $("body").append($button);
			        
		 }
		 if(o.indexOf("ueditor_")!=-1){
			 $textarea=$("<div style='position:absolute;'><textarea  id='"+o+"'  ></textarea></div>");
	 
			 $textarea.css("left",json[o].style.x+"px"); 
			 $textarea.css("top",json[o].style.y+"px");
			 $textarea.find("textarea").css("width",json[o].style.w+"px");
			 $textarea.find("textarea").css("height",json[o].style.h+"px");
			 
			 $("body").append($textarea);
			 window.um=UM.getEditor(o ,{focus:true});
		     if(json[o].event.init.initValue!=""){
				  window.um.setContent(json[o].event.init.initValue,false); 
				}
		     
		     if(json[o].event.init.sql!=""){
					
				    var sql=json[o].event.init.sql;
					var r0=new RegExp("U\{(.+?)\}");
	        		var r1=new RegExp("L\{(.+?)\}");
	        		var arr0=[],arr1=[];
	        		while(arr0=r0.exec(sql))   sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'");
	        		 
	        		while(arr1=r1.exec(sql))   
	        		 {
	        				if(arr1[1].indexOf("checkbox_")==-1)
	        				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
	        				else
	        				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
	        			}
	        		 
			  
						$.ajax({async:false,
							    url:context+"/ds/singleValue",
						        type:"post",
								data:{ds:json[o].event.init.ds,
							    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
							    sql:sql},
								success:function(data){
								window.um.setContent(data,false); 
						}});
			     }
		     
		     if(json[o].event.init.httpURL!=""){
		        	var t=json[o].event.init.valueType;
		        	var msg="";
		        	if(t=="kv"){
		        		
		        	var kv=json[o].event.init.kvPair;
		        
		        	for(var k in kv){
		        		if(kv[k].indexOf("U{")!=-1){
		        			kv[k]=eval(kv[k].replace(/U\{(.+?)\}/g,"getQuery('$1')"));
		        		}
		        		else if(kv[k].indexOf("L{")!=-1){
		        			
		        			kv[k]=eval(kv[k].replace(/L\{(checkbox.+?)\}/g,"checkboxval('#$1')"));
		        			kv[k]=eval(kv[k].replace(/L\{(.+?)\}/g,"$('#$1').val()"));
		        		}
		        	}
		        	msg=JSON.stringify(json[o].event.init.kvPair);
		        	  
		        	}else{
		        		msg=json[o].event.init.value;
		        		var r0=new RegExp("U\{(.+?)\}");
		        		var r1=new RegExp("L\{(.+?)\}");
		        		var arr0=[],arr1=[];
		        		while(arr0=r0.exec(msg)) msg=msg.replace(arr0[0],getQuery(arr0[1]));
		        	 
		        		while(arr1=r1.exec(msg))  
		        		 {
		        				if(arr1[1].indexOf("checkbox_")==-1)
		        				msg=msg.replace(arr1[0],$("#"+arr1[1]).val());
		        				else
		        				msg=msg.replace(arr1[0],checkboxval("#"+arr1[1]));
		        			}
		        		 
		        	  
		        	}
		        	$.ajax({url:context+"/obtainHttpMsg",
		        		 type:"post",
		        		 async:false,
							data:{httpmethod:json[o].event.init.httpmethod,
		        		    valueType:json[o].event.init.valueType,
		        		    msg:msg,
						    httpURL:json[o].event.init.httpURL},
							success:function(data){
						 if(data.indexOf("{")!=-1){
							 
						    var R=JSON.parse(data);  
							window.um.setContent(eval(json[o].event.init.httpReturn),false); 
							 }else if(data.indexOf("<")!=-1){
							      var R = $($.parseXML(data)); 
							      window.um.setContent(eval(json[o].event.init.httpReturn),false);
								 }else  window.um.setContent(data,false);
					 
						 
					}});
				}
				
		     
		     
		     
		 }
		        	
		 if(o.indexOf("hidden_")!=-1){
			 $hidden=$('<input  id="'+o+'"   type="hidden" >');
			 $("body").append($hidden);	
		 }
		 
		 if(o.indexOf("checkbox_")!=-1){
			 $checkbox=$('<div id="'+o+'" style="text-align:center;position:absolute"></div>');
             $checkbox.css("left",json[o].style.x+"px");
			 $checkbox.css("top",parseInt(json[o].style.y)+8+"px");
			 $checkbox.css("width",json[o].style.w+"px");
			 $checkbox.css("height",json[o].style.h+"px");
			  
			 var s="";
			 var i=0;
			 for(var k in json[o].event.init2.kvPair){
				 s+='<input type="hidden" id="'+o+"["+i+']"><div class="checkbox_item" value="'+json[o].event.init2.kvPair[k]+'"></div><div class="checkbox_text" >'+k+'</div><div class="checkbox_blank"></div>';
			     i++;
			 }
			 $checkbox.html(s);
			 
			 if(json[o].event.init2.sql!=""){
				    var sql=json[o].event.init2.sql;
					var r0=new RegExp("U\{(.+?)\}");
	        		var r1=new RegExp("L\{(.+?)\}");
	        		var arr0=[],arr1=[];
	        		while(arr0=r0.exec(sql)) sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'");
	                while(arr1=r1.exec(sql))  
	                {
       				if(arr1[1].indexOf("checkbox_")==-1)
       				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
       				else
       				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
	                }
			 
				 $.ajax({async:false,
					    url:context+"/ds/keyValue",
				        type:"post",
						data:{ds:json[o].event.init2.ds,
					    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
					    sql: sql},
						success:function(data){
						 var s="";  
						 var i=0;
						 for(var j=0;j<data.length;j++){
							 s+='<input type="hidden" id="'+o+"["+i+']"><div class="checkbox_item" value="'+data[j].V+'"></div><div class="checkbox_text" >'+data[j].K+'</div><div class="checkbox_blank"></div>';
						     i++;
						 }
						 $checkbox.html(s);
				}});
				 
					}
			 
             $checkbox.data("click",nativeParse(json[o],"click"));
			 
			 $checkbox.find(".checkbox_item").bind("click",function(){
				 
				  if($(this).hasClass("checkbox_item_click")){  
				  $(this).prev().val("");
				  $(this).removeClass("checkbox_item_click");
				  }else{  
				  $(this).prev().val($(this).attr("value"));
				  $(this).addClass("checkbox_item_click");
				  }
				 eval($(this).parent().data("click"));
				}); 
			 
			 $("body").append($checkbox);
			 
			 $checkbox.find(".checkbox_text").css("font-size",json[o].style.fontSize+"px");
			 $checkbox.find(".checkbox_text").css("color","#"+json[o].style.color);
			 $checkbox.find(".checkbox_text").css("font-family",fontDict[json[o].style.fontFamily]);
			 
			 if(json[o].event.init.sql!=""){
					
				    var sql=json[o].event.init.sql;
					var r0=new RegExp("U\{(.+?)\}");
	        		var r1=new RegExp("L\{(.+?)\}");
	        		var arr0=[],arr1=[];
	        		while(arr0=r0.exec(sql)) sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'");
	                while(arr1=r1.exec(sql))  
	                {
        				if(arr1[1].indexOf("checkbox_")==-1)
        				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
        				else
        				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
        			}
        		 
						$.ajax({async:false,
							    url:context+"/ds/multValue",
						        type:"post",
								data:{ds:json[o].event.init.ds,
							    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
							    sql:sql},
								success:function(data){
									   for(var i in data){
 
										 $checkbox.find(".checkbox_item").each(function(){
											 
										 	 if($(this).attr("value")==data[i].V){
										    	 $(this).prev().val(data[i].V);
												 $(this).addClass("checkbox_item_click");
											 } 
											});
									   }
						}});
			     }
			 
			  if(json[o].event.init.initValue!=""){
				 var arr=json[o].event.init.initValue.split(","); 
			     for(var i=0;i<arr.length;i++){
			    	 
						 $checkbox.find(".checkbox_item").each(function(){
							  
						     if($(this).attr("value")==arr[i]){
						    	 $(this).prev().val(arr[i]);
								 $(this).addClass("checkbox_item_click");
							 } 
							});
			     }
				 
				   
				}
			 
		 }
		 
		 if(o.indexOf("file_")!=-1){
			  
			 $file=$("<div style='position:absolute;background-repeat:no-repeat'> <form method='post' enctype='multipart/form-data'> <input type='hidden' id='"+o+"'> <input id='x"+o+"' type='file' name='x"+o+"'   style='opacity:0;filter:alpha(opacity=0)'></form></div>");
			 $file.css("left",json[o].style.x+"px");
			 $file.css("top",json[o].style.y+"px");
			 $file.find("input:last").css("width",json[o].style.w+"px");
			 $file.find("input:last").css("height",json[o].style.h+"px");
			 if(json[o].style.backgroundImage!="")
			 $file.css("background-image","url("+context+"/resources/uploadimg/"+json[o].style.backgroundImage+")");
			 else
				 $file.css("background-image","url("+context+"/resources/images/uploaddemo.png)");

			 $("body").append($file);
			  
			 $file.find("input:last").change(function(){
				   
				    var imgPath = $(this).val();  
				    if (imgPath == "")   return;  
				    var t=$(this).attr("id");
				    $.ajaxFileUpload(  
				            {  
				                 url:context+'/uploadWithVarible/'+t,         
				                 secureuri:false,  
				                 fileElementId:t,         
				                 dataType: 'json',   
				                 success:function(data){
				                	data=data.replace("<pre>","");
				                	data=data.replace("</pre>","");
				                	data=$.trim(data);
				 
				                	$("#"+t).prev().val(context+"/resources/uploadimg/"+data);
				                	alert("上传成功");
				                 }
				             }  
				           ); 
				    
				    
			 });
			 
		 }
		 
		 if(o.indexOf("radio_")!=-1){
		 $radio=$('<div   style="text-align:center;position:absolute;"><input id="'+o+'" type="hidden"   value=""></div>');
		 $radio.css("left",json[o].style.x+"px");
		 $radio.css("top",parseInt(json[o].style.y)+4+"px");
		 $radio.css("width",json[o].style.w+"px");
		 $radio.css("height",json[o].style.h+"px");
		  
		 var s="";
		 for(var k in json[o].event.init2.kvPair){
			 s+='<div class="radio_item"  value="'+json[o].event.init2.kvPair[k]+'"></div><div class="radio_text" >'+k+'</div><div class="radio_blank"></div>';
		 }
		 $radio.find("input").after(s);
		 
		 if(json[o].event.init2.sql!=""){
			    var sql=json[o].event.init2.sql;
				var r0=new RegExp("U\{(.+?)\}");
        		var r1=new RegExp("L\{(.+?)\}");
        		var arr0=[],arr1=[];
        		while(arr0=r0.exec(sql)) sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'");
                while(arr1=r1.exec(sql))  
                {
   				if(arr1[1].indexOf("checkbox_")==-1)
   				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
   				else
   				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
                }
	 
			 $.ajax({async:false,
				    url:context+"/ds/keyValue",
			        type:"post",
					data:{ds:json[o].event.init2.ds,
				    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
				    sql: sql},
					success:function(data){
						var s=""; 
					for(var i=0;i<data.length;i++){
						 s+='<div class="radio_item" value="'+data[i].V+'"></div><div class="radio_text" >'+data[i].K+'</div><div class="radio_blank"></div>';
							
					}
					 $radio.find("input").after(s);
			}});
			 
				}
				
		 $radio.find(".radio_text").css("font-size",json[o].style.fontSize+"px");
		 $radio.find(".radio_text").css("color","#"+json[o].style.color);
		 $radio.find(".radio_text").css("font-family",fontDict[json[o].style.fontFamily]);
		  
		 $radio.data("click",nativeParse(json[o],"click"));
		  
		 $radio.find(".radio_item").bind("click",function(){
			 $(this).siblings("input").val($(this).attr("value"));
			 $(this).siblings(".radio_item").removeClass("radio_item_click");
			 $(this).addClass("radio_item_click");
			 eval($(this).parent().data("click"));
			});
			
		 $("body").append($radio);

		   if(json[o].event.init.initValue!=""){
			   $radio.parent().next().val(json[o].event.init.initValue);
			   $radio.siblings(".radio_item").removeClass("radio_item_click");
				 $radio.find(".radio_item").each(function(){
					 
				     if($(this).attr("value")==json[o].event.init.initValue){
						 $(this).addClass("radio_item_click");
					 } 
					});
			   
			}
		 
			if(json[o].event.init.fromURL!=""){
				var s=json[o].event.init.fromURL;
				 
				s=s.replace(/U\{(.+?)\}/gi,"getQuery('$1')"); 
				   $radio.parent().next().val(eval(s));
				   $radio.siblings(".radio_item").removeClass("radio_item_click");
					 
					 $radio.find(".radio_item").each(function(){
						
					     if($(this).attr("value")==eval(s)){
							 $(this).addClass("radio_item_click");
						 } 
						});
			}
			

            if(json[o].event.init.sql!=""){
				
			    var sql=json[o].event.init.sql;
				var r0=new RegExp("U\{(.+?)\}");
        		var r1=new RegExp("L\{(.+?)\}");
        		var arr0=[],arr1=[];
        		while(arr0=r0.exec(sql)) sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'");
                while(arr1=r1.exec(sql))  
                {
    				if(arr1[1].indexOf("checkbox_")==-1)
    				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
    				else
    				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
    			}
    		 
					$.ajax({async:false,
						    url:context+"/ds/singleValue",
					        type:"post",
							data:{ds:json[o].event.init.ds,
						    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
						    sql:sql},
							success:function(data){
								     $radio.parent().next().val(data);
								    
								     $radio.siblings(".radio_item").removeClass("radio_item_click");
									  
								     
									 $radio.find(".radio_item").each(function(){
										
									     if($(this).attr("value")==data){
									    	  
											 $(this).addClass("radio_item_click");
										
										 } 
										});
					}});
		     }
        
            if(json[o].event.init.httpURL!=""){
	        	var t=json[o].event.init.valueType;
	        	var msg="";
	        	if(t=="kv"){
	        		
	        	var kv=json[o].event.init.kvPair;
	        
	        	for(var k in kv){
	        		if(kv[k].indexOf("U{")!=-1){
	        			kv[k]=eval(kv[k].replace(/U\{(.+?)\}/g,"getQuery('$1')"));
	        		}
	        		else if(kv[k].indexOf("L{")!=-1){
	        			kv[k]=eval(kv[k].replace(/L\{(checkbox.+?)\}/g,"checkboxval('#$1')"));
	        		
	        			kv[k]=eval(kv[k].replace(/L\{(.+?)\}/g,"$('#$1').val()"));
	        		}
	        	}
	        	msg=JSON.stringify(json[o].event.init.kvPair);
	        	  
	        	}else{
	        		msg=json[o].event.init.value;
	        		var r0=new RegExp("U\{(.+?)\}");
	        		var r1=new RegExp("L\{(.+?)\}");
	        		var arr0=[],arr1=[];
	        		while(arr0=r0.exec(msg))  msg=msg.replace(arr0[0],getQuery(arr0[1]));
	        	    while(arr1=r1.exec(msg))  
	        	    {
        				if(arr1[1].indexOf("checkbox_")==-1)
        				msg=msg.replace(arr1[0],$("#"+arr1[1]).val());
        				else
        				msg=msg.replace(arr1[0],checkboxval("#"+arr1[1]));
        			}
        		 
		       
	        	}
	        	$.ajax({url:context+"/obtainHttpMsg",
	        		 type:"post",
	        		 async:false,
						data:{httpmethod:json[o].event.init.httpmethod,
	        		    valueType:json[o].event.init.valueType,
	        		    msg:msg,
					    httpURL:json[o].event.init.httpURL},
						success:function(data){
					 if(data.indexOf("{")!=-1){
						 
					    var R=JSON.parse(data); 
					  
					    $radio.parent().next().val(eval(json[o].event.init.httpReturn));
					    $radio.siblings(".radio_item").removeClass("radio_item_click");
						 $radio.find(".radio_item").each(function(){
							
						     if($(this).attr("value")==eval(json[o].event.init.httpReturn)){
								 $(this).addClass("radio_item_click");
							 } 
							});
						 }else if(data.indexOf("<")!=-1){
						      var R = $($.parseXML(data));
						      $radio.parent().next().val(eval(json[o].event.init.httpReturn));
						      $radio.siblings(".radio_item").removeClass("radio_item_click");
								 $radio.find(".radio_item").each(function(){
									 
								     if($(this).attr("value")==eval(json[o].event.init.httpReturn)){
										 $(this).addClass("radio_item_click");
									 } 
									});
							 }else{
								 
								 $radio.parent().next().val(data);
								 $radio.siblings(".radio_item").removeClass("radio_item_click");
								 $radio.find(".radio_item").each(function(){
									
								     if($(this).attr("value")==data){
										 $(this).addClass("radio_item_click");
									 } 
									});
							 
							 }
					         
					 
				}});
			}
			
			
		 
		 }
		 
		 if(o.indexOf("select_")!=-1){
			 $select=$('<div style="position:absolute"><select    id="'+o+'"    ><option value="0">我的数据</option></select></div>');
			 if(!$.isEmptyObject(json[o].event.init2.kvPair)){
				 var s=""; 
			 
				 for(var k in json[o].event.init2.kvPair){
				 s+="<option value='"+json[o].event.init2.kvPair[k]+"'>"+k+"</option>"
					 
				 }
				   $select.find("select").html(s);
			 }
			 
			 if(json[o].event.init2.sql!=""){
				 var sql=json[o].event.init2.sql;
					var r0=new RegExp("U\{(.+?)\}");
	        		var r1=new RegExp("L\{(.+?)\}");
	        		var arr0=[],arr1=[];
	        		while(arr0=r0.exec(sql)) sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'");
	                while(arr1=r1.exec(sql))  
	                {
	   				if(arr1[1].indexOf("checkbox_")==-1)
	   				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
	   				else
	   				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
	                }	 
			 
			 $.ajax({async:false,
				    url:context+"/ds/keyValue",
			        type:"post",
					data:{ds:json[o].event.init2.ds,
				    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
				    sql: sql},
					success:function(data){
						var s=""; 
					for(var i=0;i<data.length;i++){
					 s+="<option value='"+data[i].V+"'>"+data[i].K+"</option>"
					}
				    $select.find("select").html(s);
			}});
			 
				}
				
				
			 $("body").append($select);
			 $("#"+o).easyDropDown({cutOff: 10});
			 $select.css("left",json[o].style.x+"px");
			 $select.css("top",json[o].style.y+"px");
			 $select.children(".dropdown").css("width",json[o].style.w*0.86+"px");
			 $select.children(".dropdown").css("height",json[o].style.h*0.4+"px");
			 $select.children(".dropdown").css("border-width",json[o].style.borderWidth+"px");
			 $select.children(".dropdown").css("border-color","#"+json[o].style.borderColor);
			 $select.children(".dropdown").children("div").css("border-width",json[o].style.borderWidth+"px");
			 $select.children(".dropdown").children("div").css("border-color","#"+json[o].style.borderColor);
			 $select.children(".dropdown").children("span").css("font-size",json[o].style.fontSize+"px");
			 $select.children(".dropdown").children("span").css("color","#"+json[o].style.color);
			 $select.children(".dropdown").find("li").css("font-size",json[o].style.fontSize+"px");
			 $select.children(".dropdown").find("li").css("font-family",fontDict[json[o].style.fontFamily]);
			 $select.children(".dropdown").children("span").css("font-family",fontDict[json[o].style.fontFamily]);
			 $select.children(".dropdown").find("li").css("color","#"+json[o].style.color);
			 $select.children(".dropdown").children("div").css("background-color","#"+json[o].style.backgroundColor);
			 $select.children(".dropdown").css("background-color","#"+json[o].style.backgroundColor);
		     
			   $select.data("change",nativeParse(json[o],"change"));
	         
		        $select.change(function(){
	              eval($(this).data("change")); 
	             });
			 
		        if(json[o].event.init.initValue!=""){
				  
				   $select.find("select").easyDropDown("select",json[o].event.init.initValue);
				}
				if(json[o].event.init.fromURL!=""){
					var s=json[o].event.init.fromURL;
					s=s.replace(/U\{(.+?)\}/gi,"getQuery('$1')");
					$select.find("select").easyDropDown("select",eval(s));
					
				}
				
			    if(json[o].event.init.httpURL!=""){
		        	var t=json[o].event.init.valueType;
		        	var msg="";
		        	if(t=="kv"){
		        		
		        	var kv=json[o].event.init.kvPair;
		        
		        	for(var k in kv){
		        		if(kv[k].indexOf("U{")!=-1){
		        			kv[k]=eval(kv[k].replace(/U\{(.+?)\}/g,"getQuery('$1')"));
		        		}
		        		else if(kv[k].indexOf("L{")!=-1){
		        			kv[k]=eval(kv[k].replace(/L\{(checkbox.+?)\}/g,"checkboxval('#$1')"));
		        		
		        			kv[k]=eval(kv[k].replace(/L\{(.+?)\}/g,"$('#$1').val()"));
		        		}
		        	}
		        	msg=JSON.stringify(json[o].event.init.kvPair);
		        	  
		        	}else{
		        		msg=json[o].event.init.value;
		        		var r0=new RegExp("U\{(.+?)\}");
		        		var r1=new RegExp("L\{(.+?)\}");
		        		var arr0=[],arr1=[];
		        		while(arr0=r0.exec(msg))  msg=msg.replace(arr0[0],getQuery(arr0[1]));
		        	    while(arr1=r1.exec(msg)) 
		        	    {
	        				if(arr1[1].indexOf("checkbox_")==-1)
	        				msg=msg.replace(arr1[0],$("#"+arr1[1]).val());
	        				else
	        				msg=msg.replace(arr1[0],checkboxval("#"+arr1[1]));
	        			}
	        		 
			       
		        	}
		        	$.ajax({url:context+"/obtainHttpMsg",
		        		 type:"post",
		        		 async:false,
							data:{httpmethod:json[o].event.init.httpmethod,
		        		    valueType:json[o].event.init.valueType,
		        		    msg:msg,
						    httpURL:json[o].event.init.httpURL},
							success:function(data){
						 if(data.indexOf("{")!=-1){
							 
						    var R=JSON.parse(data); 
						    $select.find("select").easyDropDown("select",eval(json[o].event.init.httpReturn));
						 
							 }else if(data.indexOf("<")!=-1){
							      var R = $($.parseXML(data));
							      $select.find("select").easyDropDown("select",eval(json[o].event.init.httpReturn));
							 
								 }else  
						          $select.find("select").easyDropDown("select",data);
						 
					}});
				}
				
                if(json[o].event.init.sql!=""){
					
				    var sql=json[o].event.init.sql;
					var r0=new RegExp("U\{(.+?)\}");
	        		var r1=new RegExp("L\{(.+?)\}");
	        		var arr0=[],arr1=[];
	        		while(arr0=r0.exec(sql)) sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'");
	                while(arr1=r1.exec(sql))  
	                {
        				if(arr1[1].indexOf("checkbox_")==-1)
        				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
        				else
        				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
        			}
        		 
						$.ajax({async:false,
							    url:context+"/ds/singleValue",
						        type:"post",
								data:{ds:json[o].event.init.ds,
							    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
							    sql:sql},
								success:function(data){
								$select.find("select").easyDropDown("select",data);
						}});
			     }
				
			 
		 }
	        	
		 if(o.indexOf("font_")!=-1){
				
			 var $font=$("<div id='"+o+"' style='z-index:2;position:absolute;border-style:solid;background-repeat:no-repeat;'>"+json[o].style.text+"</font>");
			 $font.css("left",json[o].style.x+"px");
			 $font.css("top",json[o].style.y+"px");
			 $font.css("width",json[o].style.w+"px");
			 $font.css("height",json[o].style.h+"px");
			 $font.css("line-height",json[o].style.h+"px");
			 $font.css("border-width",json[o].style.borderWidth+"px");
			 $font.css("border-color","#"+json[o].style.borderColor);
			 $font.css("font-size",json[o].style.fontSize+"px");
			 $font.css("padding-left",json[o].style.paddingLeft+"px");
			 $font.css("color","#"+json[o].style.color);
			 $font.css("background-color","#"+json[o].style.backgroundColor);
			 $font.css("font-family",fontDict[json[o].style.fontFamily]);
			 $("body").append($font);
			}
		 
	   if(o.indexOf("password_")!=-1){
	 
			 var $password=$("<input id='"+o+"' style='z-index:2;background-repeat:no-repeat;position:absolute;border-style:solid;' type='password'/>");
			 $password.css("left",json[o].style.x+"px");
			 
			 $password.css("top",json[o].style.y+"px");
			 $password.css("width",json[o].style.w+"px");
			 $password.css("height",json[o].style.h+"px");
			 $password.css("border-width",json[o].style.borderWidth+"px");
			 $password.css("border-color","#"+json[o].style.borderColor);
			 $password.css("font-size",json[o].style.fontSize+"px");
			 $password.css("color","#"+json[o].style.color);
			 $password.css("background-color","#"+json[o].style.backgroundColor);
			 $password.css("font-family",fontDict[json[o].style.fontFamily]);
			 if(json[o].style.backgroundImage.indexOf(".")>1)
			 $password.css("background-image","url("+context+"/resources/uploadimg/"+json[o].style.backgroundImage+")");
			 $password.css("padding-left",json[o].style.paddingLeft+"px");
			 
	         $password.data("click",nativeParse(json[o],"click"));
			    
	         $password.data("afterinit",nativeParse(json[o],"afterinit"));
	        
	         setTimeout(function(){
	        	 eval($password.data("afterinit")); 
	         },500);
	        
	        $password.click(function(){
	         
              eval($(this).data("click")); 
             });
	        
                $password.data("dblclick",nativeParse(json[o],"dblclick"));
            
	        $password.dblclick(function(){
              eval($(this).data("dblclick")); 
             });
	 
            $password.data("focus",nativeParse(json[o],"focus"));
            
	        $password.focus(function(){
              eval($(this).data("focus")); 
             });
			 
			 
				if(json[o].event.init.initValue!=""){
					$password.val(json[o].event.init.initValue);
				}
				if(json[o].event.init.fromURL!=""){
					var s=json[o].event.init.fromURL;
					s=s.replace(/U\{(.+?)\}/gi,"getQuery('$1')");
					$password.val(eval(s));
					
				}
				if(json[o].event.init.sql!=""){
					
				    var sql=json[o].event.init.sql;
					var r0=new RegExp("U\{(.+?)\}");
	        		var r1=new RegExp("L\{(.+?)\}");
	        		var arr0=[],arr1=[];
	        		while(arr0=r0.exec(sql)){
	         
	        		sql=sql.replace(arr0[0],"'"+getQuery(arr0[1])+"'");
	        		}
	        		while(arr1=r1.exec(sql))
	        		 {
        				if(arr1[1].indexOf("checkbox_")==-1)
        				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
        				else
        				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
        			}
        		 
			  
						$.ajax({async:false,
							    url:context+"/ds/singleValue",
						        type:"post",
								data:{ds:json[o].event.init.ds,
							    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
							    sql:sql},
								success:function(data){
							   $password.val(data);
						}});
			     }
		        if(json[o].event.init.httpURL!=""){
		        	var t=json[o].event.init.valueType;
		        	var msg="";
		        	if(t=="kv"){
		        		
		        	var kv=json[o].event.init.kvPair;
		        
		        	for(var k in kv){
		        		if(kv[k].indexOf("U{")!=-1){
		        			kv[k]=eval(kv[k].replace(/U\{(.+?)\}/g,"getQuery('$1')"));
		        		}
		        		else if(kv[k].indexOf("L{")!=-1){
		        			
		        			kv[k]=eval(kv[k].replace(/L\{(checkbox.+?)\}/g,"checkboxval('#$1')"));
		        			kv[k]=eval(kv[k].replace(/L\{(.+?)\}/g,"$('#$1').val()"));
		        		}
		        	}
		        	msg=JSON.stringify(json[o].event.init.kvPair);
		        	  
		        	}else{
		        		msg=json[o].event.init.value;
		        		var r0=new RegExp("U\{(.+?)\}");
		        		var r1=new RegExp("L\{(.+?)\}");
		        		var arr0=[],arr1=[];
		        		while(arr0=r0.exec(msg)){
		         
		        		msg=msg.replace(arr0[0],getQuery(arr0[1]));
		        		}
		        		
		        		while(arr1=r1.exec(msg))
		        		 {
	        				if(arr1[1].indexOf("checkbox_")==-1)
	        				msg=msg.replace(arr1[0],$("#"+arr1[1]).val());
	        				else
	        				msg=msg.replace(arr1[0],checkboxval("#"+arr1[1]));
	        			}
	        		 
		        	  
		        	}
		        	$.ajax({url:context+"/obtainHttpMsg",
		        		 type:"post",
		        		 async:false,
							data:{httpmethod:json[o].event.init.httpmethod,
		        		    valueType:json[o].event.init.valueType,
		        		    msg:msg,
						    httpURL:json[o].event.init.httpURL},
							success:function(data){
						 if(data.indexOf("{")!=-1){
							 
						    var R=JSON.parse(data); 
							$password.val(eval(json[o].event.init.httpReturn));
							 }else if(data.indexOf("<")!=-1){
							      var R = $($.parseXML(data));
							      $password.val(eval(json[o].event.init.httpReturn));
							 
								 }else  $password.val(data);
					 
						 
					}});
				}
		        	
		        	
		        	
				 var $tip=$('<div id="tip_'+o+'" style="display:none;position:absolute;border-style:solid;border-radius:5px;padding-right:6px;background-repeat:no-repeat;">'+json[o].valid.text+'</div>');
				 if(json[o].valid.on==0){
					
					 $password.blur(function(){
						 
	                      var type=json[$(this).attr("id")].valid.type;
						  var reg;
						  if(type==0)
						  reg=/.*/;
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
						  if(type==8&&$.trim(json[$(this).attr("id")].valid.regExp)!="") 
						  reg=new RegExp($.trim(json[$(this).attr("id")].valid.regExp));
						  
						  if(!reg.test($(this).val()))
						   $('#tip_'+ $(this).attr("id")).fadeIn();
						  else
							$('#tip_'+ $(this).attr("id")).fadeOut();
						 var _this=$(this);
						  if(json[$(this).attr("id")].valid.sql!=""){
							var sql=json[$(this).attr("id")].valid.sql;
						   
			        			var r0=new RegExp("U\{(.+?)\}");
				        		var r1=new RegExp("L\{(.+?)\}");
				        		var arr0=[],arr1=[];
				        		while(arr0=r0.exec(sql))  sql=sql.replace(arr0[0],getQuery(arr0[1]));
				        	 
				        		while(arr1=r1.exec(sql)) 
				        		 {
			        				if(arr1[1].indexOf("checkbox_")==-1)
			        				sql=sql.replace(arr1[0],$("#"+arr1[1]).val());
			        				else
			        				sql=sql.replace(arr1[0],checkboxval("#"+arr1[1]));
			        			}
			        		 
					         	
				        		$.ajax({async:false,
								    url:context+"/ds/singleValue",
							        type:"post",
									data:{ds:json[$(this).attr("id")].valid.ds,
								    projectname:location.toString().replace(/.+ublic\/(.+)\/.+/gi,"$1"),
								    sql:sql},
									success:function(data){
									var codeArr=new Array();	
									codeArr.push(data);
									if(json[_this.attr("id")].valid.relation==0){
								           codeArr.push("==");
									}
									if(json[_this.attr("id")].valid.relation==1){
										   codeArr.push("!=");
											}
									if(json[_this.attr("id")].valid.relation==2){
										   codeArr.push(">=");
											}
									if(json[_this.attr("id")].valid.relation==3){
										   codeArr.push(">");
											}
									if(json[_this.attr("id")].valid.relation==4){
										   codeArr.push("<");
											}
									if(json[_this.attr("id")].valid.relation==5){
										   codeArr.push("<=");
											}
									codeArr.push(json[_this.attr("id")].valid.value);
									  
									      if(!eval(codeArr.join("")))
										   $('#tip_'+ _this.attr("id")).fadeIn(); 
										  else
										   $('#tip_'+ _this.attr("id")).hide();
							}});
							  
						  }
						  
						  
					 });
					 
				 } 
				 if(json[o].valid.position==0){
				 
					var top=json[o].style.y;
					var left=parseInt(json[o].style.x)+parseInt(json[o].style.w)+10;
					$tip.css("top",top+"px");
					$tip.css("left",left+"px");
				 
				}else{
					 var top=parseInt(json[o].style.y)+parseInt(json[o].style.h)+10;
					 var left= json[o].style.x  ;
					$tip.css("top",top+"px");
					$tip.css("left",left+"px");
				}
				$tip.css("border-width",json[o].valid.style.borderWidth+"px"); 
				$tip.css("border-color","#"+json[o].valid.style.borderColor); 
				$tip.css("background-color","#"+json[o].valid.style.backgroundColor); 
				$tip.css("color","#"+json[o].valid.style.color); 
				$tip.css("font-size",json[o].valid.style.fontSize+"px"); 
				$tip.css("padding-left",json[o].valid.style.paddingLeft+"px");
				 $("body").append($tip);
			 $("body").append($password);
				
			
		}
	}
	

	
}

init();
$(".modal").height($(document).height());
var  zindexArr=[];
$("select").each(function(){
	zindexArr.push(parseInt($(this).parent().parent().parent().css("top")));	
	
	});
zindexArr.sort();

var z=300;
for(var i=0;i<zindexArr.length;i++){
	$("select").each(function(){
		if(zindexArr[i]==parseInt($(this).parent().parent().parent().css("top"))){
			 
		 $(this).parent().parent().parent().css("z-index",z);
				z--;
				 return false;
		}
		
		});
}

function nativeParse(o,e){
	 var finalRows=[];
	 var Script=o.event[e].script.split("\n");
 
	 for(var i=0;i<Script.length;i++){
		 if(Script[i].indexOf("如果2 ")!=-1){
			  var rows=Script[i].split(" ");
              
              for(var j=0;j<rows.length;j++){
            	   
            	if(rows[j]=="如果2"){
            		finalRows.push("if(");
            		continue ;
            	}
            	  if(rows[j]==""){
            		  finalRows.push(")");
            		continue ;
            	}
            	  if(rows[j]=="并且"){
            		  finalRows.push("&&");
            		continue ;
            	}
            	  if(rows[j]=="或者"){
            		  finalRows.push("||");
            		continue ;
            	}
            	  if(rows[j]=="+"){
            		  finalRows.push("+");
              		continue ;
              	}
            	  if(rows[j]=="−"){
            		  finalRows.push("-");
              		continue ;
              	}  
            	  if(rows[j]=="×"){
            		  finalRows.push("*");
              		continue ;
              	}
              	 if(rows[j]=="÷"){
              		finalRows.push("/");
               		continue ;
               	}
            	  if(rows[j]=="="){
            		  finalRows.push("==");
                		continue ;
                	}
            	  if(rows[j]=="≠"){
            		  finalRows.push("!=");
              		continue ;
              	}
            	  
            	  if(rows[j].indexOf("L{")!=-1){
            		 
            		  if(rows[j].indexOf("checkbox_")!=-1)
                		  finalRows.push(rows[j].replace(/L\{(checkbox.+)\}/,"checkboxval('#$1')"));
                		 else
                		  finalRows.push(rows[j].replace(/L\{(.+)\}/,"$('#$1').val()"));
            		if(rows[j-1]=="包含"){
            			finalRows.push(")!=-1");
            		}
              		if(rows[j-1]=="不包含"){
              			finalRows.push(")==-1");
            		}
            		continue;
            	}
            	  if(rows[j].indexOf("U{")!=-1){
            		  finalRows.push(rows[j].replace(/U\{(.+?)\}/g,"getQuery('$1')"));
            		if(rows[j-1]=="包含"){
            			finalRows.push(")!=-1");
            		}
              		if(rows[j-1]=="不包含"){
              			finalRows.push(")==-1");
            		}
            		continue;
            	}
            	
            	  if(rows[j]=="包含"){
            		  finalRows.push(".indexOf("); 
            		continue ;
            	} 
            	  if(rows[j]=="不包含"){
            		  finalRows.push(".indexOf(");
            		continue ;
            	} 
            	  if(rows[j]=="≥"){
            		  finalRows.push(">="); 
              		continue ;
              	}   
            	  if(rows[j]=="≤"){
            		  finalRows.push("<="); 
              		continue ;
              	} 
            	  if(rows[j]=="<"){
            		  finalRows.push("<"); 
              		continue ;
              	}   
            	  if(rows[j]==">"){
            		  finalRows.push(">"); 
              		continue ;
              	} 
            	  if(isNaN(rows[j])){
            		  finalRows.push("'"+rows[j]+"'");
              		if(rows[j-1]=="包含"){
              			finalRows.push(")!=-1");
            		}
              		if(rows[j-1]=="不包含"){
              			finalRows.push(")==-1");
            		}
              		continue ;
              	}
           
            	  finalRows.push(rows[j]);
            	  
            	  }
            	  
            	  finalRows.push("\n");
		 }
		 if(Script[i].indexOf("如果 ")!=-1){
			  
		
               var rows=Script[i].split(" ");
               
              for(var j=0;j<rows.length;j++){
            	   
            	if(rows[j]=="如果"){
            		finalRows.push("if(");
            		continue ;
            	}
            	  if(rows[j]==""){
            		  finalRows.push(")");
            		continue ;
            	}
            	  if(rows[j]=="并且"){
            		  finalRows.push("&&");
            		continue ;
            	}
            	  if(rows[j]=="或者"){
            		  finalRows.push("||");
            		continue ;
            	}
            	  if(rows[j]=="+"){
            		  finalRows.push("+");
              		continue ;
              	}
            	  if(rows[j]=="−"){
            		  finalRows.push("-");
              		continue ;
              	}  
            	  if(rows[j]=="×"){
            		  finalRows.push("*");
              		continue ;
              	}
              	 if(rows[j]=="÷"){
              		finalRows.push("/");
               		continue ;
               	}
            	  if(rows[j]=="="){
            		  finalRows.push("==");
                		continue ;
                	}
            	  if(rows[j]=="≠"){
            		  finalRows.push("!=");
              		continue ;
              	}
            	  
            	  if(rows[j].indexOf("L{")!=-1){
            		 
            		 if(rows[j].indexOf("checkbox_")!=-1)
            		  finalRows.push(rows[j].replace(/L\{(checkbox.+)\}/,"checkboxval('#$1')"));
            		 else
            		  finalRows.push(rows[j].replace(/L\{(.+)\}/,"$('#$1').val()"));
            		 
            		if(rows[j-1]=="包含"){
            			finalRows.push(")!=-1");
            		}
              		if(rows[j-1]=="不包含"){
              			finalRows.push(")==-1");
            		}
            		continue;
            	}
            	  if(rows[j].indexOf("U{")!=-1){
            		  finalRows.push(rows[j].replace(/U\{(.+?)\}/g,"getQuery('$1')"));
            		if(rows[j-1]=="包含"){
            			finalRows.push(")!=-1");
            		}
              		if(rows[j-1]=="不包含"){
              			finalRows.push(")==-1");
            		}
            		continue;
            	}
            	console.log(finalRows.join(""));
            	  
            	  if(rows[j]=="包含"){
            		  finalRows.push(".indexOf("); 
            		continue ;
            	} 
            	  if(rows[j]=="不包含"){
            		  finalRows.push(".indexOf(");
            		continue ;
            	} 
            	  if(rows[j]=="≥"){
            		  finalRows.push(">="); 
              		continue ;
              	}   
            	  if(rows[j]=="≤"){
            		  finalRows.push("<="); 
              		continue ;
              	} 
            	  if(rows[j]=="<"){
            		  finalRows.push("<"); 
              		continue ;
              	}   
            	  if(rows[j]==">"){
            		  finalRows.push(">"); 
              		continue ;
              	} 
            	  
            	  
            	  if(isNaN(rows[j])){
            		  finalRows.push("'"+rows[j]+"'");
              		if(rows[j-1]=="包含"){
              			finalRows.push(")!=-1");
            		}
              		if(rows[j-1]=="不包含"){
              			finalRows.push(")==-1");
            		}
              		continue ;
              	}
           
            	  finalRows.push(rows[j]);
                		 
                	 
              }
              finalRows.push("\n");
		 
			 
		 }
		 if(Script[i].indexOf("失效")!=-1){

             var rows=Script[i].split(" ")[1].split(",");
             
            for(var j=0;j<rows.length;j++){

		      if(rows[j].indexOf("time_")!=-1||rows[j].indexOf("textarea_")!=-1||rows[j].indexOf("text_")!=-1||rows[j].indexOf("password_")!=-1){
		     
		    	  finalRows.push('$("#'+rows[j]+'").attr("disabled",true);\n');
		     
		    	  
		      }
		      if(rows[j].indexOf("select_")!=-1){
				     
		    	  finalRows.push('$("#'+rows[j]+'").easyDropDown("disable");\n');
		      
		      }
		      if(rows[j].indexOf("ueditor_")!=-1){
				     
		    	  finalRows.push('window.um.setDisabled("fullscreen");\n');
		      
		      }
		      if(rows[j].indexOf("checkbox_")!=-1){
				     
		    	  finalRows.push('$("#'+rows[j]+'").find(".checkbox_item").unbind("click");\n');
		      
		      }
		      if(rows[j].indexOf("radio_")!=-1){
				  
		    	  finalRows.push('$("#'+rows[j]+'").siblings(".radio_item").unbind("click");\n');
		      
		      }
            }
		 }  
		 
		 if(Script[i].indexOf("清空")!=-1){
			 
             var rows=Script[i].split(" ")[1].split(",");
             
            for(var j=0;j<rows.length;j++){
            	  if(rows[j].indexOf("select_")!=-1){
 				     
    		    	  finalRows.push('$("#'+rows[j]+'").easyDropDown("select",0);\n');
    		      
    		      }
            	  if(rows[j].indexOf("ueditor_")!=-1){
  				     
    		    	  finalRows.push('window.um.setContent("",false);\n');
    		      
    		      }
            	  if(rows[j].indexOf("checkbox_")!=-1){
 				     
    		    	  finalRows.push('$("#'+rows[j]+'").find(".checkbox_item").removeClass("checkbox_item_click");\n');
    		    	  finalRows.push("$('#"+rows[j]+" input').val('');\n");
  					
    		      }
    		      if(rows[j].indexOf("radio_")!=-1){
    				  
    		    	  finalRows.push('$("#'+rows[j]+'").siblings(".radio_item").removeClass("radio_item_click");\n');
    		    	  finalRows.push("$('#"+rows[j]+"').siblings('.radio_item:first').addClass('radio_item_click');\n");
    		    	  finalRows.push("$('#"+rows[j]+"').val($('#"+rows[j]+"').siblings('.radio_item:first').attr('value'));\n");
  					
    		      }
		      if(rows[j].indexOf("time_")!=-1||rows[j].indexOf("textarea_")!=-1||rows[j].indexOf("text_")!=-1||rows[j].indexOf("password_")!=-1){
		     
		    	  finalRows.push('$("#'+rows[j]+'").val("");\n');
		     
		    	  
		      }
            }
		 }  
		 
		 if(Script[i].indexOf("那么2开始")!=-1){
			 finalRows.push("{\n");
		 }
		 if(Script[i].indexOf("退出")!=-1){
			 finalRows.push("return;\n");
		 }
		 if(Script[i].indexOf("页面刷新")!=-1){
			 finalRows.push("history.go(0);\n");
		 }
		 if(Script[i].indexOf("那么开始")!=-1){
			 finalRows.push("{\n");
		 }
		 if(Script[i].indexOf("则开始")==0){
			 finalRows.push("{\n");
		 }
		 if(Script[i].indexOf("则2开始")==0){
			 finalRows.push("{\n");
		 }
		 if(Script[i].indexOf("否则开始")==0){
			 finalRows.push("else\n{\n");
		 }
		 if(Script[i].indexOf("否则2开始")==0){
			 finalRows.push("else\n{\n");
		 }
		 if(Script[i].indexOf("那么结束")!=-1){
			 finalRows.push("}\n");
		 }
		 if(Script[i].indexOf("那么2结束")!=-1){
			 finalRows.push("}\n");
		 }
		 if(Script[i].indexOf("则结束")==0){
			 finalRows.push("}\n");
		 }
		 if(Script[i].indexOf("则2结束")==0){
			 finalRows.push("}\n");
		 }
		 if(Script[i].indexOf("否则结束")==0){
			 finalRows.push("}\n");
		 }
		 if(Script[i].indexOf("否则2结束")==0){
			 finalRows.push("}\n");
		 }
		 if(Script[i].indexOf("跳转")==0){
			 
			 var url=Script[i].split(" ")[1].replace(/U\{(.+?)\}/g,"\"+getQuery('$1')+\"");
			 url=url.replace(/L\{(checkbox.+)\}/g,"\"+checkboxval('#$1')+\"");
			 url=url.replace(/L\{(.+)\}/g,"\"+$('#$1').val()+\"");
		 
			  finalRows.push("location=\""+url+"\";");
			  finalRows.push("\n");
		 }
		 
		 if(Script[i].indexOf("赋值")==0){
			  
			 var s=Script[i].split(" ");
			 var s0=Script[i].split(" ");
			 s0.splice(0,2);
			 var v=s0.join(" ");
			 
			 if(s[1].indexOf("ueditor_")==0){
				  if(JSON.parse(v).type=="static"){
						finalRows.push("window.um.setContent(JSON.parse('"+v+"').value,false);");
						finalRows.push("\n"); 
						 }
				  if(JSON.parse(v).type=="http"){
						 
					    var msg="";
						 if(JSON.parse(v).valueType=="kv"){
							  
							 var kv=JSON.parse(v).value;
							 msg= "{";
					        	for(var k in kv){
					        	 
					        		if(kv[k].indexOf("U{")!=-1){
					        			kv[k]=kv[k].replace(/U\{(.+?)\}/g,"\"+getQuery('$1')+\"");
					        			
					        		}
					        		else if(kv[k].indexOf("L{")!=-1){
					        			kv[k]=kv[k].replace(/L\{(checkbox.+)\}/g,"\"+checkboxval('#$1')+\""); 
					        			kv[k]=kv[k].replace(/L\{(.+)\}/g,"\"+$('#$1').val()+\"");
					        		}
					        		msg+=k+":\\\""+kv[k]+"\\\",";
					        	}
					        if(msg.lastIndexOf(",")==msg.length-1)
					        msg=msg.substring(0,msg.length-1);
					        msg+="}";
					        	 
						 }else{
							 msg=JSON.parse(v).value;
							 msg=msg.replace(/U\{(.+?)\}/gi,"\"+getQuery('$1')+\"");
							 msg=msg.replace(/L\{(checkbox.+?)\}/gi,"\"+checkboxval('#$1')+\""); 
							 msg=msg.replace(/L\{(.+?)\}/gi,"\"+$('#$1').val()+\"");
							 msg=msg.replace(/\n/gi," ");
				         }
			  
						 finalRows.push('$.ajax({url:context+"/obtainHttpMsg", type:"post", async:false,\n');
						 finalRows.push('data:{httpmethod:"'+JSON.parse(v).method+'",\n');
						 finalRows.push('valueType:"'+JSON.parse(v).valueType+'",\n');	
						 finalRows.push('msg:"'+msg+'",\n');    
						 finalRows.push('httpURL:"'+JSON.parse(v).url+'"},\n');    
						 finalRows.push('success:function(data){\n');
						 finalRows.push('if(data.indexOf("{")!=-1){ var R=JSON.parse(data); \n'); 
						 finalRows.push('window.um.setContent(eval("'+JSON.parse(v).returnValue+'"),false);\n');
						 finalRows.push('}else if(data.indexOf("<")!=-1){\n');	  
						 finalRows.push('var R = $($.parseXML(data));\n');	  
						 finalRows.push('window.um.setContent(eval("'+JSON.parse(v).returnValue+'"),false);\n');
						 finalRows.push('}else window.um.setContent(data,false);\n');
			             finalRows.push('}});'); 
					 
					 }
						 
				     if(JSON.parse(v).type=="sql"){
						 var sx=JSON.parse(v).sql;
						 sx=sx.replace(/U\{(.+?)\}/gi,"'\"+getQuery('$1')+\"'");
						 sx=sx.replace(/L\{(checkbox.+?)\}/gi,"'\"+checkboxval('#$1')+\"'");
						 sx=sx.replace(/L\{(ueditor.+?)\}/gi,"'\"+window.um.getContent()+\"'"); 
						 sx=sx.replace(/L\{(.+?)\}/gi,"'\"+$('#$1').val()+\"'");
						 var uri="singleValue";
						 if(sx.indexOf("select ")==-1) uri="execDML";
						 finalRows.push('$.ajax({async:false,url:context+"/ds/'+uri+'",type:"post",');
						 finalRows.push('data:{ds:JSON.parse(\''+v+'\').ds,');
						 finalRows.push('\nprojectname:location.toString().replace(/.+ublic\\/(.+)\\/.+/gi,"$1"),\n');
						 finalRows.push('sql:"'+sx+'"},success:function(data){ window.um.setContent(data,false);}});');
					 
					finalRows.push("\n");
								 
					}
					 if(JSON.parse(v).type=="url"){
						 
					 var sx=JSON.parse(v).key;
					 sx=sx.replace(/U\{(.+?)\}/gi,"getQuery('$1')");
					 
					finalRows.push("window.um.setContent("+sx+",false);");
					finalRows.push("\n");
								 
					 }
						 
			 }
			 
			 if(s[1].indexOf("checkbox_")==0){
				  finalRows.push("$('#"+s[1]+"').find('.checkbox_item').removeClass('checkbox_item_click');\n");
				  finalRows.push("$('#"+s[1]+"').find('input').val('');\n");
				  if(JSON.parse(v).type=="static"){
					  
				        finalRows.push("var arr=JSON.parse('"+v+"').value.split(',');");
					    finalRows.push("for(var i=0;i<arr.length;i++){");
						finalRows.push("$('#"+s[1]+"').find('.checkbox_item').each(function(){if($(this).attr('value')==arr[i]){ $(this).addClass('checkbox_item_click'); $(this).prev().val(arr[i]);}});");
				 	
						finalRows.push("}\n"); 
						 }
				  
				  if(JSON.parse(v).type=="sql"){
						 var sx=JSON.parse(v).sql;
						 sx=sx.replace(/U\{(.+?)\}/gi,"'\"+getQuery('$1')+\"'");
						 sx=sx.replace(/L\{(checkbox.+?)\}/gi,"'\"+checkboxval('#$1')+\"'");
						 sx=sx.replace(/L\{(ueditor.+?)\}/gi,"'\"+window.um.getContent()+\"'");
						 sx=sx.replace(/L\{(.+?)\}/gi,"'\"+$('#$1').val()+\"'");
						 
						 finalRows.push('$.ajax({async:false,url:context+"/ds/multValue",type:"post",');
						 finalRows.push('data:{ds:JSON.parse(\''+v+'\').ds,');
						 finalRows.push('\nprojectname:location.toString().replace(/.+ublic\\/(.+)\\/.+/gi,"$1"),\n');
						 finalRows.push('sql:"'+sx+'"},success:function(data){');
						   
						    finalRows.push("for(var i=0;i<data.length;i++){");
							finalRows.push("$('#"+s[1]+"').find('.checkbox_item').each(function(){if($(this).attr('value')==data[i].V){ $(this).addClass('checkbox_item_click'); $(this).prev().val(data[i].V);}});");
					 	    finalRows.push("}\n"); 
						 
						 
					finalRows.push("}});\n");
								 
					}
				  
				  
			 }
            
			 
			 if(s[1].indexOf("radio_")==0){
				   finalRows.push("$('#"+s[1]+"').siblings('.radio_item').removeClass('radio_item_click');\n");
				   finalRows.push("$('#"+s[1]+"').val('');\n");
				  if(JSON.parse(v).type=="static"){
					 
						finalRows.push("$('#"+s[1]+"').siblings('.radio_item').each(function(){if($(this).attr('value')==JSON.parse('"+v+"').value) $(this).addClass('radio_item_click'); });");
						finalRows.push("$('#"+s[1]+"').val(JSON.parse('"+v+"').value);");
						
						finalRows.push("\n"); 
						 }
				  
				  if(JSON.parse(v).type=="http"){
						 
					    var msg="";
						 if(JSON.parse(v).valueType=="kv"){
							  
							 var kv=JSON.parse(v).value;
							 msg= "{";
					        	for(var k in kv){
					        	 
					        		if(kv[k].indexOf("U{")!=-1){
					        			kv[k]=kv[k].replace(/U\{(.+?)\}/g,"\"+getQuery('$1')+\"");
					        			
					        		}
					        		else if(kv[k].indexOf("L{")!=-1){
					        			kv[k]=kv[k].replace(/L\{(checkbox.+)\}/g,"\"+checkboxval('#$1')+\""); 
					        			kv[k]=kv[k].replace(/L\{(.+)\}/g,"\"+$('#$1').val()+\"");
					        		}
					        		msg+=k+":\\\""+kv[k]+"\\\",";
					        	}
					        if(msg.lastIndexOf(",")==msg.length-1)
					        msg=msg.substring(0,msg.length-1);
					        msg+="}";
					        	 
						 }else{
							 msg=JSON.parse(v).value;
							 msg=msg.replace(/U\{(.+?)\}/gi,"\"+getQuery('$1')+\"");
							 msg=msg.replace(/L\{(checkbox.+?)\}/gi,"\"+checkboxval('#$1')+\"");
							 msg=msg.replace(/L\{(.+?)\}/gi,"\"+$('#$1').val()+\"");
							 msg=msg.replace(/\n/gi," ");
				         }
			  
						 finalRows.push('$.ajax({url:context+"/obtainHttpMsg", type:"post", async:false,\n');
						 finalRows.push('data:{httpmethod:"'+JSON.parse(v).method+'",\n');
						 finalRows.push('valueType:"'+JSON.parse(v).valueType+'",\n');	
						 finalRows.push('msg:"'+msg+'",\n');    
						 finalRows.push('httpURL:"'+JSON.parse(v).url+'"},\n');    
						 finalRows.push('success:function(data){\n');
 
						 finalRows.push('if(data.indexOf("{")!=-1){ var R=JSON.parse(data); \n'); 
						 finalRows.push('$("#'+s[1]+'").siblings(".radio_item").each(function(){if($(this).attr("value")==eval("'+JSON.parse(v).returnValue+'")) $(this).addClass("radio_item_click");});\n');
						 finalRows.push('$("#'+s[1]+'").val(eval("'+JSON.parse(v).returnValue+'"));\n');

						 finalRows.push('}else if(data.indexOf("<")!=-1){\n');	  
						 finalRows.push('var R = $($.parseXML(data));\n');	  
						 finalRows.push('$("#'+s[1]+'").siblings(".radio_item").each(function(){if($(this).attr("value")==eval("'+JSON.parse(v).returnValue+'")) $(this).addClass("radio_item_click");});\n');
						 finalRows.push('$("#'+s[1]+'").val(eval("'+JSON.parse(v).returnValue+'"));\n');

						 finalRows.push('}else');
						 finalRows.push('$("#'+s[1]+'").siblings(".radio_item").each(function(){if($(this).attr("value")==data) $(this).addClass("radio_item_click");});\n');
						 finalRows.push('$("#'+s[1]+'").val(data);\n');

			             finalRows.push('\n}});'); 
					 
					 }
				  
				  if(JSON.parse(v).type=="sql"){
						 var sx=JSON.parse(v).sql;
						 sx=sx.replace(/U\{(.+?)\}/gi,"'\"+getQuery('$1')+\"'");
						 sx=sx.replace(/L\{(checkbox.+?)\}/gi,"'\"+checkboxval('#$1')+\"'");
						 sx=sx.replace(/L\{(ueditor.+?)\}/gi,"'\"+window.um.getContent()+\"'");
						 sx=sx.replace(/L\{(.+?)\}/gi,"'\"+$('#$1').val()+\"'");
						 var uri="singleValue";
						 if(sx.indexOf("select ")==-1) uri="execDML";
						 finalRows.push('$.ajax({async:false,url:context+"/ds/'+uri+'",type:"post",');
						 finalRows.push('data:{ds:JSON.parse(\''+v+'\').ds,');
						 finalRows.push('\nprojectname:location.toString().replace(/.+ublic\\/(.+)\\/.+/gi,"$1"),\n');
						 finalRows.push('sql:"'+sx+'"},success:function(data){');
						  
						 finalRows.push('$("#'+s[1]+'").siblings(".radio_item").each(function(){if($(this).attr("value")==data) $(this).addClass("radio_item_click");});\n');
						 finalRows.push('$("#'+s[1]+'").val(data);\n');
						 
					finalRows.push("}});\n");
								 
					}
				  
					 if(JSON.parse(v).type=="url"){
						 
					 var sx=JSON.parse(v).key;
					 sx=sx.replace(/U\{(.+?)\}/gi,"getQuery('$1')");
					 finalRows.push('$("#'+s[1]+'").siblings(".radio_item").each(function(){if($(this).attr("value")=='+sx+') $(this).addClass("radio_item_click");});\n');
					 finalRows.push('$("#'+s[1]+'").val('+sx+');\n');
					  
					 finalRows.push("\n");
								 
					 }
						 
				  
			 }
             
			 if(s[1].indexOf("select_")==0){
				 
				        if(JSON.parse(v).type=="static"){
						finalRows.push("$('#"+s[1]+"').easyDropDown('select',JSON.parse('"+v+"').value);");
						finalRows.push("\n"); 
						 }
				        
				        if(JSON.parse(v).type=="http"){
							 
						    var msg="";
							 if(JSON.parse(v).valueType=="kv"){
								  
								 var kv=JSON.parse(v).value;
								 msg= "{";
						        	for(var k in kv){
						        	 
						        		if(kv[k].indexOf("U{")!=-1){
						        			kv[k]=kv[k].replace(/U\{(.+?)\}/g,"\"+getQuery('$1')+\"");
						        			
						        		}
						        		else if(kv[k].indexOf("L{")!=-1){
						        			kv[k]=kv[k].replace(/L\{(checkbox.+)\}/g,"\"+checkboxval('#$1')+\""); 
						        			kv[k]=kv[k].replace(/L\{(.+)\}/g,"\"+$('#$1').val()+\"");
						        		}
						        		msg+=k+":\\\""+kv[k]+"\\\",";
						        	}
						        if(msg.lastIndexOf(",")==msg.length-1)
						        msg=msg.substring(0,msg.length-1);
						        msg+="}";
						        	 
							 }else{
								 msg=JSON.parse(v).value;
								 msg=msg.replace(/U\{(.+?)\}/gi,"\"+getQuery('$1')+\"");
								 msg=msg.replace(/L\{(checkbox.+?)\}/gi,"\"+checkboxval('#$1')+\"");
								 msg=msg.replace(/L\{(.+?)\}/gi,"\"+$('#$1').val()+\"");
								 msg=msg.replace(/\n/gi," ");
					         }
				  
							 finalRows.push('$.ajax({url:context+"/obtainHttpMsg", type:"post", async:false,\n');
							 finalRows.push('data:{httpmethod:"'+JSON.parse(v).method+'",\n');
							 finalRows.push('valueType:"'+JSON.parse(v).valueType+'",\n');	
							 finalRows.push('msg:"'+msg+'",\n');    
							 finalRows.push('httpURL:"'+JSON.parse(v).url+'"},\n');    
							 finalRows.push('success:function(data){\n');
							 finalRows.push('if(data.indexOf("{")!=-1){ var R=JSON.parse(data); \n'); 
							 finalRows.push('$("#'+s[1]+'").easyDropDown("select",eval("'+JSON.parse(v).returnValue+'"));\n');
							 finalRows.push('}else if(data.indexOf("<")!=-1){\n');	  
							 finalRows.push('var R = $($.parseXML(data));\n');	  
							 finalRows.push('$("#'+s[1]+'").easyDropDown("select",eval("'+JSON.parse(v).returnValue+'"));\n');
							 finalRows.push('}else $("#'+s[1]+'").easyDropDown("select",data);\n');
				             finalRows.push('}});'); 
						 
						 }
				        if(JSON.parse(v).type=="sql"){
							 var sx=JSON.parse(v).sql;
							 sx=sx.replace(/U\{(.+?)\}/gi,"'\"+getQuery('$1')+\"'");
							 sx=sx.replace(/L\{(checkbox.+?)\}/gi,"'\"+checkboxval('#$1')+\"'");
							 sx=sx.replace(/L\{(ueditor.+?)\}/gi,"'\"+window.um.getContent()+\"'");
							 sx=sx.replace(/L\{(.+?)\}/gi,"'\"+$('#$1').val()+\"'");
							 var uri="singleValue";
							 if(sx.indexOf("select ")==-1) uri="execDML";
							 finalRows.push('$.ajax({async:false,url:context+"/ds/'+uri+'",type:"post",');
							 finalRows.push('data:{ds:JSON.parse(\''+v+'\').ds,');
							 finalRows.push('\nprojectname:location.toString().replace(/.+ublic\\/(.+)\\/.+/gi,"$1"),\n');
							 finalRows.push('sql:"'+sx+'"},success:function(data){ $("#'+s[1]+'").easyDropDown("select",data);}});');
						 
						finalRows.push("\n");
									 
						}
						 if(JSON.parse(v).type=="url"){
							 
						 var sx=JSON.parse(v).key;
						 sx=sx.replace(/U\{(.+?)\}/gi,"getQuery('$1')");
						 
						finalRows.push("$('#"+s[1]+"').easyDropDown('select',"+sx+");");
						finalRows.push("\n");
									 
						 }
				        
			 }
			 if(s[1].indexOf("time_")==0||s[1].indexOf("textarea_")==0||s[1].indexOf("text_")==0||s[1].indexOf("password_")==0){
				 
				 if(JSON.parse(v).type=="static"){
				finalRows.push("$('#"+s[1]+"').val(JSON.parse('"+v+"').value);");
				finalRows.push("\n");
					 
				 }
				
				 if(JSON.parse(v).type=="http"){
				 
				    var msg="";
					 if(JSON.parse(v).valueType=="kv"){
						  
						 var kv=JSON.parse(v).value;
						 msg= "{";
				        	for(var k in kv){
				        	 
				        		if(kv[k].indexOf("U{")!=-1){
				        			kv[k]=kv[k].replace(/U\{(.+?)\}/g,"\"+getQuery('$1')+\"");
				        			
				        		}
				        		else if(kv[k].indexOf("L{")!=-1){
				        			kv[k]=kv[k].replace(/L\{(checkbox.+)\}/g,"\"+checkboxval('#$1')+\"");
				        		
				        			kv[k]=kv[k].replace(/L\{(.+)\}/g,"\"+$('#$1').val()+\"");
				        		}
				        		msg+=k+":\\\""+kv[k]+"\\\",";
				        	}
				        if(msg.lastIndexOf(",")==msg.length-1)
				        msg=msg.substring(0,msg.length-1);
				        msg+="}";
				        	 
					 }else{
						 msg=JSON.parse(v).value;
						 msg=msg.replace(/U\{(.+?)\}/gi,"\"+getQuery('$1')+\"");
						 msg=msg.replace(/L\{(checkbox.+?)\}/gi,"\"+checkboxval('#$1')+\"");
						 msg=msg.replace(/L\{(.+?)\}/gi,"\"+$('#$1').val()+\"");
						 msg=msg.replace(/\n/gi," ");
			         }
		  
					 finalRows.push('$.ajax({url:context+"/obtainHttpMsg", type:"post", async:false,\n');
					 finalRows.push('data:{httpmethod:"'+JSON.parse(v).method+'",\n');
					 finalRows.push('valueType:"'+JSON.parse(v).valueType+'",\n');	
					 finalRows.push('msg:"'+msg+'",\n');    
					 finalRows.push('httpURL:"'+JSON.parse(v).url+'"},\n');    
					 finalRows.push('success:function(data){\n');
					 finalRows.push('if(data.indexOf("{")!=-1){ var R=JSON.parse(data); \n'); 
					 finalRows.push('$("#'+s[1]+'").val(eval("'+JSON.parse(v).returnValue+'"));\n');
					 finalRows.push('}else if(data.indexOf("<")!=-1){\n');	  
					 finalRows.push('var R = $($.parseXML(data));\n');	  
					 finalRows.push('$("#'+s[1]+'").val(eval("'+JSON.parse(v).returnValue+'"));\n');
					 finalRows.push('}else $("#'+s[1]+'").val(data);\n');
		             finalRows.push('}});'); 
				 
				 }
				 if(JSON.parse(v).type=="sql"){
					 var sx=JSON.parse(v).sql;
					 sx=sx.replace(/U\{(.+?)\}/gi,"'\"+getQuery('$1')+\"'");
					 sx=sx.replace(/L\{(checkbox.+?)\}/gi,"'\"+checkboxval('#$1')+\"'");
					 sx=sx.replace(/L\{(ueditor.+?)\}/gi,"'\"+window.um.getContent()+\"'");
					 sx=sx.replace(/L\{(.+?)\}/gi,"'\"+$('#$1').val()+\"'");
					  
					 var uri="singleValue";
					 if(sx.indexOf("select ")==-1) uri="execDML";
				 
					 finalRows.push('$.ajax({async:false,url:context+"/ds/'+uri+'",type:"post",');
					 finalRows.push('data:{ds:JSON.parse(\''+v+'\').ds,');
					 finalRows.push('\nprojectname:location.toString().replace(/.+ublic\\/(.+)\\/.+/gi,"$1"),\n');
					 finalRows.push('sql:"'+sx+'"},success:function(data){ $("#'+s[1]+'").val(data);}});');
				 
				finalRows.push("\n");
							 
				}
				 if(JSON.parse(v).type=="url"){
					 
				 var sx=JSON.parse(v).key;
				 sx=sx.replace(/U\{(.+?)\}/gi,"getQuery('$1')");
				 
				finalRows.push("$('#"+s[1]+"').val("+sx+");");
				finalRows.push("\n");
							 
				 }
			 }
		 }
		 if(Script[i].indexOf("弹出")!=-1){
			 var j=JSON.parse(Script[i].split(" ")[1]);

			 var url=j.url;
			 var h=j.h;
			 var w=j.w;
			 var title=j.title;
			 var bg=j.bg;
			
		   finalRows.push("opener('"+url+"',"+w+","+h+",'"+title+"','"+bg+"');");
 
		 finalRows.push("\n");
		 }
		 if(Script[i].indexOf("提示")!=-1){
			 
				var temp=Script[i].split(" ");
				temp.splice(0,1); 
			    var s=temp.join(" ");
		 
				 s=s.replace(/U\{(.+?)\}/gi,"'+getQuery('$1')+'");
				 s=s.replace(/L\{(checkbox.+?)\}/gi,"'+checkboxval('#$1')+'");
				 s=s.replace(/L\{(ueditor.+?)\}/gi,"'+window.um.getContentTxt()+'");
				 s=s.replace(/L\{(.+?)\}/gi,"'+$('#$1').val()+'");
				 
			 if(json["window"].type=="default"){
		  
			 finalRows.push("alert('"+s+"');");
			 }else{
			 finalRows.push("show('alert',json.window,'"+s+"');");
			 }
			 finalRows.push("\n");
		 }
		 if(Script[i].indexOf("异常")!=-1){

				var temp=Script[i].split(" ");
				temp.splice(0,1); 
			    var s=temp.join(" ");
		 
				 s=s.replace(/U\{(.+?)\}/gi,"'+getQuery('$1')+'");
				 s=s.replace(/L\{(checkbox.+?)\}/gi,"'+checkboxval('#$1')+'");
				 s=s.replace(/L\{(.+?)\}/gi,"'+$('#$1').val()+'");
			 
			 if(json["window"].type=="default"){
		  
			 finalRows.push("alert('"+s+"');");
			 }else{
			 finalRows.push("show('confirm',json.window,'"+s+"');");
			 }
			 finalRows.push("\n");
		 }
		 
		 
		
	 }
				 
	return  finalRows.join("");
}
 

</script>
</html>