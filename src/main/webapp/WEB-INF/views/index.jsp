<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>
如意-在线开发平台
</title>
<script src="<%=request.getContextPath()%>/resources/echarts.common.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jquery-1.11.0.min.js"></script>
<link href="<%=request.getContextPath()%>/resources/index.css" rel="stylesheet" type="text/css" />

</head>
<body >
<div class="warp">
 
<div style="width:1200px;height:600px;position:relative;margin-left: auto;
margin-right: auto;">

 
<div class="guide2">我的账号 &nbsp;&nbsp;&nbsp;<input type="text" style="width:200px;height:35px;border:solid 1px white;background-color:transparent;color:white;font-size:26px;"/> </div>
<div class="guide3">我的密码 &nbsp;&nbsp;&nbsp;<input type="password" style="width:200px;height:35px;border:solid 1px white;background-color:transparent;color:white;font-size:26px;"/>  </div>
<div class="guide4">项目名称 &nbsp;&nbsp;&nbsp;<input type="text" style="width:200px;height:35px;border:solid 1px white;background-color:transparent;color:white;font-size:26px;"/> </div>
<div class="guide5">完成</div>


 <div class="guide1">我是一名</div>
  <div class="role1">
 <div style="height:90px;width:100px;"></div><div>产品经理/项目经理</div></div>


  <div class="role2">
 <div style="height:90px;width:100px;"></div><div>软件工程师</div></div>

  <div class="role3">
 <div style="height:90px;width:100px;"></div><div>需求工程师</div></div>


  <div class="role4">
 <div style="height:90px;width:100px;"></div><div>UI工程师</div></div>
 
   <div class="role5">
 <div style="height:90px;width:100px;"></div><div>测试工程师</div></div>
 
    <div class="role6">
 <div style="height:90px;width:100px;"></div><div>DBA</div></div>
 
     <div class="role7">
 <div style="height:90px;width:100px;"></div><div>酱油党</div></div>
 
 
 

<div style="width:50px;height:70px;position:absolute;top:12px;left:12px;background-image:url(images/ruyi.png);background-repeat:no-repeat;"></div>
<div style=" height:60px;position:absolute;top:32px;left:78px; font-size:20px;font-weight:bold;color:white;">在线开发平台</div>
<div class="login">登录</div>
<div class="regist">注册</div>
<div class="left_top"></div> 
<div class="cloud_img1"></div> 
<div class="cloud_img1_warp"></div> 
<div class="cloud_img2"></div> 
 <div class="cloud_img2_warp"></div> 
 <div class="mid_top_1"></div> 
  <div class="mid_top_1_text">云</div> 
  <div class="mid_top_2"></div> 
   <div class="mid_top_2_text">如意在线开发平台提供面向SaaS的云服务，平台维护用户、表单定义、引擎、外围接口、模版、报表等数据，业务数据由业务系统自行维护。</div> 
 
<div class="chart_w"></div> 
<div class="graph_text_warp"></div> 
<div class="left_top_img"></div> 
<div class="form_warp"></div> 
<div class="right_top"></div>
 
<div class="right_top_content">
<div style="height:60px;width:100%;line-height:60px;text-align:center;">项目管理</div>
<div style="height:50px;width:100%;"> </div>
<div style="height:60px;width:170px;font-size:13px;padding:18px;padding-bottom:0px;">
 如意创造性地把项目管理过程和开发任务糅合在一起。一个如意，就够了!</div>
</div> 
<div class="right_top_img"></div> 
<div class="chart_warp"></div> 
<div id="chart" class="chart"></div> 

<div class="left_top_content">
<div style="height:60px;width:100%; font-size:18px;line-height:60px;padding-left:18px; ">页面模板</div>
<div style="height:140px;width:80%; font-size:13px;padding-left :18px; ">页面模板允许你在UED设计的HTML页面上进行可视化编程，通过元素拖拽、属性编辑等一系列操作即可完成页面开发，最大程度降低前后端耦合度。相信趣味的操作过程能让你快速上手!</div>
</div>
  
 
    <div class="fimg1"></div>
    <div class="fimg2"></div>
    <div class="fimg3"></div>
    <div class="fimg4"></div>
    <div class="fimg5"></div>
    <div class="fimg6"></div>
  <div class="graph_text">
  报表生成器可以让你在线配置并生成报表，支持柱状图、折线图、饼图、散点图、地图等常用图表；如意将原本毫无关系的数据源和报表展现绑定在一起，大大增强了报表的可扩展性。
  </div> 
  
 <div class="form">
<div style="height:60px;width:100%; font-size:18px;line-height:60px;padding-left:45px;">在线表单设计</div>
</div>
<div class="form_text">
完全基于web2.0构建的表单设计器，内置权限系统、函数时间轴、事件监听、级联操作、运行时校验、反向ER模型构建、工作流接口等；无需编程经验，即可快速在线开发表单。
</div> 

 

 </div>
 
  <div id="foot" style=" width:110px;  height:30px;position:absolute;bottom:0px;left:480px;font-size:13px;background-image:url(images/lab.png);background-repeat:no-repeat;">
 
</div> 
 
 </div>
<script>
 
  $("div[class^='role']").mouseover(function(){
   if(grole!="") return ;
 $(this).addClass("selectedRole");
 
  });
    $("div[class^='role']").mouseout(function(){
$(this).removeClass("selectedRole");
  });
  var grole="";


$(".regist,.login,.guide5").mouseover(function(){
$(this).css("color","#5C6AB3");
$(this).css("background-color","#fff");
});
$(".regist,.login,.guide5").mouseout(function(){
$(this).css("color","#fff");
$(this).css("background-color","");
});

$(".regist").click(function(){
$(".regist,.login").fadeOut();
var offset=180;
$(".left_top").animate({left:parseInt($(".left_top").css("left"))-offset});
$(".left_top_content").animate({left:parseInt($(".left_top_content").css("left"))-offset});
$(".left_top_img").animate({left:parseInt($(".left_top_img").css("left"))-offset});
$(".right_top").animate({left:parseInt($(".right_top").css("left"))+offset});
$(".right_top_img").animate({left:parseInt($(".right_top_img").css("left"))+offset});
$(".mid_top_1").animate({top:parseInt($(".mid_top_1").css("top"))-offset});
$(".mid_top_1_text").animate({top:parseInt($(".mid_top_1_text").css("top"))-offset});
$(".mid_top_2").animate({top:parseInt($(".mid_top_2").css("top"))-offset});
$(".cloud_img2").animate({top:parseInt($(".cloud_img2").css("top"))-offset});
$(".cloud_img2_warp").animate({top:parseInt($(".cloud_img2_warp").css("top"))-offset});
$(".mid_top_2_text").animate({top:parseInt($(".mid_top_2_text").css("top"))-offset});
$(".right_top_content").animate({left:parseInt($(".right_top_content").css("left"))+offset});
 $(".cloud_img1").animate({top:parseInt($(".cloud_img1").css("top"))-offset});
$(".cloud_img1_warp").animate({top:parseInt($(".cloud_img1_warp").css("top"))-offset});
$(".chart").animate({top:parseInt($(".chart").css("top"))+offset});
$(".chart_warp").animate({top:parseInt($(".chart_warp").css("top"))+offset});
$(".chart_w").animate({top:parseInt($(".chart_w").css("top"))+offset});
$(".form_text").animate({top:parseInt($(".form_text").css("top"))+offset});
$(".graph_text").animate({top:parseInt($(".graph_text").css("top"))+offset});
$(".graph_text_warp").animate({top:parseInt($(".graph_text_warp").css("top"))+offset});
$(".form").animate({top:parseInt($(".form").css("top"))+offset});
$(".form_warp").animate({top:parseInt($(".form_warp").css("top"))+offset});
$(".fimg1").animate({top:parseInt($(".fimg1").css("top"))+offset});
$(".fimg2").animate({top:parseInt($(".fimg2").css("top"))+offset});
$(".fimg3").animate({top:parseInt($(".fimg3").css("top"))+offset});
$(".fimg4").animate({top:parseInt($(".fimg4").css("top"))+offset});
$(".fimg5").animate({top:parseInt($(".fimg5").css("top"))+offset});
$(".fimg6").animate({top:parseInt($(".fimg6").css("top"))+offset});

$(".fimg4,.fimg5,.fimg6,.fimg3,.fimg1,.fimg2,.form_warp,.form,.graph_text_warp,.graph_text,.form_text,.chart,.chart_w,.chart_warp,.cloud_img1,cloud_img1_warp,.cloud_img2,cloud_img2_warp,.mid_top_1,.mid_top_2,.mid_top_1_text,.mid_top_2_text,.left_top,.left_top_content,.left_top_img,.right_top,.right_top_content,.right_top_img").fadeOut();
setTimeout(function(){
$(".guide1").fadeIn();
},1000);
setTimeout(function(){
$(".role1").fadeIn();
},1200);
setTimeout(function(){
$(".role2").fadeIn();
},1400);
setTimeout(function(){
$(".role3").fadeIn();
},1600);
setTimeout(function(){
$(".role4").fadeIn();
},1800);
setTimeout(function(){
$(".role5").fadeIn();
},2000);
setTimeout(function(){
$(".role6").fadeIn();
},2200);
setTimeout(function(){
$(".role7").fadeIn();
},2400);
setTimeout(function(){
 $("div[class^='role']").click(function(){
 if(grole!="") return ;
grole=$(this).attr("class").replace(" selectedRole","");
 $("div[class^='role']:not(."+grole+")").each(function(){
 $(this).animate({top: $(window).height()-130}).fadeOut();
 setTimeout(function(){
  $("."+grole).animate({top:40,left:550},'slow');
    $(".guide1").animate({left:450},'slow');
 $("."+grole).css("background-color","transparent");
 },1000);
 
 if(grole=="role1"){
  setTimeout(function(){
    $(".guide2,.guide3,.guide4,.guide5").fadeIn();
 },2000);
 
 }
 
 
 });
 });
},2500);
});

$("#foot").css("left",($(window).width()-110)/2);
 
 window.onresize=function(){
 
 
$("#foot").css("left",($(window).width()-110)/2);
 }
 
var chart = echarts.init($('#chart').get(0));
var option={
	"title":{text:"报表生成器",left:120,top:10,textStyle:{fontWeight:"normal",color:"#CCCEE7",fontSize:18}},
									    "grid": {
									        "x": 45,
									        "y": 45,
									        "x2": 30,
									        "y2": 34
									       
									    },
								  
									    "xAxis": {
									        "boundaryGap": false,
							 		        "splitLine": {
									            "show": false
									        },
									        "axisTick":{
									        show:false
									        }
									        ,
									        "axisLine": {
									            "lineStyle": {
									                "color": "#A4A6CD"
									            }
									        },
									        "data": ["1月","2月","3月","4月","5月","6月","7月","8月","9月"],
									        "axisLabel": {
									       
									            "textStyle": {
									                "color": "#A4A6CD"
									            }
									        }
									    },
									    "yAxis": {
									         "splitLine": {
									          "lineStyle": {
									                "color": "#A4A6CD"
									            }
									        },
									          "axisTick":{
									        show:false
									        },
									        "nameTextStyle": {
									            "color": "#A4A6CD"
									        },
									        "axisLine": {
									           show:false
									        },
									        "axisLabel": {
									            "textStyle": {
									                "color": "#A4A6CD"
									            }
									        }
									    },
									    "series": [
									        {
									        "symbolSize":6,
									          "itemStyle":{
									        normal:{
									        color:"#fff"
									        }
									        },
									        "lineStyle":{
									        normal:{
									        color:"#fff"
									        }
									        },
							 		            "type": "line",
									            "data": [123,342,133,234,255,342,114,345,365,321]
									        }
									    ]
									};
									chart.setOption(option);
</script>
 </body>
</html>