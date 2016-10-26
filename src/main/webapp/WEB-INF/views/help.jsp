<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>10分钟上手如意</title>
<link href="<%=request.getContextPath()%>/resources/form.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/favicon.ico"/>
<style type="text/css" rel="stylesheet">
a {
    color: #337ab7;
    text-decoration: none;
}
 
  
.code {
    background-color: #f9f2f4;
    border-radius: 4px;
    color: #c7254e;
    font-size: 90%;
    padding: 2px 4px;
}
</style>
</head>
<body bgcolor=#FAFAFC >
<div class="form_logo"> </div>
  <hr color="#ccc" style="position:absolute;top:65px;left:20px;height:1px;width:95%;">
  
<div style="position:absolute;top:25px;left:105px;font-size:21px;color:#B03A5B;font-weight:bold;">10分钟上手如意</div>
<div style="color:#333333; position:absolute;top:80px;left:20px;font-size:26px;  ">
特性
</div>
  <hr color="#ccc" style="position:absolute;top:125px;left:20px;height:1px;width:95%;">
  <div style="color:#333333; position:absolute;top:145px;left:20px;font-size:16px;  ">
如意是一款具有强交互性、支持业务逻辑设计的表单设计器，项目托管在<span class="code">Github</span>上，你可以通过<a href="https://github.com/shiyafeng/ruyi" target="_blank">https://github.com/shiyafeng/ruyi</a>获取源码
</div>
  <div style="color:#333333; position:absolute;top:175px;left:20px;font-size:16px;  ">
如意包括如下特性:
</div>
 <div style="color:#333333; position:absolute;top:205px;left:20px;font-size:16px;  ">
1.支持单行文本、多行文本、下拉框、单选框、复选框、隐藏框、密码框、文字、图片、底纹、富文本框、文件上传、日期时间、按钮等web控件
</div>
 <div style="color:#333333; position:absolute;top:235px;left:20px;font-size:16px;  ">
2.零编程，如意首创<span class="code">可视化业务逻辑设计</span>，通过拖拽进行条件判断和命令执行，支持条件嵌套
</div>
 <div style="color:#333333; position:absolute;top:265px;left:20px;font-size:16px;  ">
3.零配置，部署如意不需要任何配置文件
</div>
 <div style="color:#333333; position:absolute;top:295px;left:20px;font-size:16px;  ">
4.支持url参数获取数据、http远程获取数据、数据库获取数据
</div>
 <div style="color:#333333; position:absolute;top:325px;left:20px;font-size:16px;  ">
5.提供页面加载、单击、双击、焦点等事件支持
</div>
 <div style="color:#333333; position:absolute;top:355px;left:20px;font-size:16px;  ">
6.如意是首个拖拽控制组件位置和大小、支持颜色点选的<span class="code">强交互</span>表单设计器
</div>
 <div style="color:#333333; position:absolute;top:385px;left:20px;font-size:16px;  ">
7.如意是天然的平台化软件，支持<span class="code">多租户</span>
</div>
 <div style="color:#333333; position:absolute;top:415px;left:20px;font-size:16px;  ">
8.多连接池动态切换，支持<span class="code">多数据源</span>
</div>
 <div style="color:#333333; position:absolute;top:445px;left:20px;font-size:16px;  ">
9.支持前端校验和数据库校验，支持默认常用的规则（如数字、email、ip、手机号），支持自定义正则，支持校验框样式自定义
</div>
 <div style="color:#333333; position:absolute;top:475px;left:20px;font-size:16px;  ">
10.使用<span class="code">easyDropDown</span>作为下拉框实现，<span class="code">My97datePicker</span>作为日期时间的实现，<span class="code">UMeditor</span>作为富文本框的实现，对单选框、复选框、文件上传控件，做了重新实现
</div>
 <hr color="#ccc" style="position:absolute;top:515px;left:20px;height:1px;width:95%;">
  
<div style="color:#333333; position:absolute;top:530px;left:20px;font-size:26px;  ">
从一个简单的Input框开始
</div>
<hr color="#ccc" style="position:absolute;top:580px;left:20px;height:1px;width:95%;">
 <div style="color:#333333; position:absolute;top:595px;left:20px;font-size:16px;  ">
如果你是第一次使用如意，请访问http://<span class="code">ip</span>：<span class="code">端口</span>/<span class="code">你的项目路径</span> 
</div>
 <div style="color:#333333; position:absolute;top:625px;left:20px;font-size:16px;  ">
如你所见， 如意使用项目id<span class="code">project</span>，页面id<span class="code">pid</span>，版本号<span class="code">ver</span>3个属性来唯一标识一个地址 
</div>
 <div style="color:#333333; position:absolute;top:655px;left:20px;font-size:16px;  ">
单击<span class="code">页面</span>，这里的宽度和高度指当前工作区的宽高，标题和背景分别指生成的页面的title和背景色
</div>
 <img src="<%=request.getContextPath()%>/resources/helpimg/help1.png" style=" position:absolute;top:685px;left:20px  ">
  <div style="color:#333333; position:absolute;top:900px;left:20px;font-size:16px;  ">
 选择你想要的颜色单击(默认为白色)单击<span class="code">确定</span>即可
</div>

 <div style="color:#333333; position:absolute;top:930px;left:20px;font-size:16px;  ">
在<span class="code">表单</span>选项卡，单击<span class="code">单行文本框</span>，移动鼠标到你想放置的地方，单击即可 
</div>

<div style="color:#333333; position:absolute;top:960px;left:20px;font-size:16px;  ">
放置好的<span class="code">单行文本框</span>，可以拖拽、更改大小以及删除，并在左上方将有个一自己的id，这个id将帮助你在后面操作它 
</div>
<img src="<%=request.getContextPath()%>/resources/helpimg/help2.png" style=" position:absolute;top:990px;left:20px  ">
 
 <div style="color:#333333; position:absolute;top:1130px;left:20px;font-size:16px;  ">
如意的右侧有<span class="code">样式</span>面板，单击你要编辑样式的组件，即可编辑它的样式 
</div>
 
 <div style="color:#333333; position:absolute;top:1160px;left:20px;font-size:16px;  ">
如意的右下侧有<span class="code">校验</span>面板，单击<span class="code">预览</span>可以看到提示框效果
</div>

 <div style="color:#333333; position:absolute;top:1190px;left:20px;font-size:16px;  ">
在<span class="code">提示语</span>中输入校验不通过时你要警告的内容，<span class="code">提示框位置</span>可以帮助你调整提示框展示的位置(下方或右侧)，避免“没有空余的地方放置提示框”的问题
</div>
  <img src="<%=request.getContextPath()%>/resources/helpimg/help3.png" style=" position:absolute;top:1220px;left:20px  ">
 
 <div style="color:#333333; position:absolute;top:1460px;left:20px;font-size:16px;  ">
点选<span class="code">常用规则</span>可以看到常见的正则规则，email、ip、手机号、小数、数字、非空等，如果这样还不能满足你，
点选<span class="code">自定义规则</span>输入正则表达式

</div>
 
 <div style="color:#333333; position:absolute;top:1490px;left:20px;font-size:16px;  ">
 
<span class="code">自定义规则</span>的右侧，你可以测试你的正则是否正确

</div>
<div style="color:#333333; position:absolute;top:1520px;left:20px;font-size:16px;  ">
 
除了前端校验，很多业务需要到数据库进行比对，这就需要用到<span class="code">数据库校验</span>，在配置数据库校验以前，请先单击页面上方<span class="code">数据源</span>按钮 

</div>
 <img src="<%=request.getContextPath()%>/resources/helpimg/help4.png" style=" position:absolute;top:1550px;left:20px  ">
 <div style="color:#333333; position:absolute;top:1750px;left:20px;font-size:16px;  ">
填写你的数据库连接信息，填写一个唯一的别名用于标识这个数据库，这里的数据源配置是项目全局的，对当前项目的任意页面均有效 
</div>
 <img src="<%=request.getContextPath()%>/resources/helpimg/help5.png" style=" position:absolute;top:1780px;left:20px  ">
  <div style="color:#333333; position:absolute;top:1960px;left:20px;font-size:16px;  ">
 填写sql，关系和值，很明显sql返回值关系和值构造了一个不等式，当且仅当这个不等式不成立的时候，校验将被触发
</div>
   <div style="color:#333333; position:absolute;top:1990px;left:20px;font-size:16px;  ">
此时，单击页面左上角保存按钮，填写你的页面url，单击确定，这时候在页面右上角将出现访问地址，单击这个地址将打开正式访问页面，你可以测试刚才的配置
</div>
  <img src="<%=request.getContextPath()%>/resources/helpimg/help6.png" style=" position:absolute;top:2020px;left:20px  ">
   <div style="color:#333333; position:absolute;top:2070px;left:20px;font-size:16px;  ">
校验的触发时机为<span class="code">onblur</span>，即表单失去焦点
</div>
    <div style="color:#333333; position:absolute;top:2100px;left:20px;font-size:16px;  ">
恭喜你，你现在已经知道如何创建一个表单并控制它的样式以及对它进行前后端校验，当然光这样还不够，很多时候，我们需要动态地获取值
</div>
  <hr color="#ccc" style="position:absolute;top:2150px;left:20px;height:1px;width:95%;">
  
<div style="color:#333333; position:absolute;top:2170px;left:20px;font-size:26px;  ">
LUR表达式
</div>
<hr color="#ccc" style="position:absolute;top:2225px;left:20px;height:1px;width:95%;">
  <div style="color:#333333; position:absolute;top:2240px;left:20px;font-size:16px;  ">
也许听到表达式很多人会头大，但是请放心，<span class="code">LUR</span>表达式真的非常简单，因为接下来你只需要记住L、U、R三个字母
</div>
   <div style="color:#333333; position:absolute;top:2270px;left:20px;font-size:16px;  ">
L取local的首字母，即获取本页面表单的值，上面表单的id为text_0，要获取上面表单的值就是<span class="code">L{text_0}</span>
</div>
    <div style="color:#333333; position:absolute;top:2300px;left:20px;font-size:16px;  ">
U取uri的首字母，即获取url后面的参数，假设url参数名为name，要获取name的值就是<span class="code">U{name}</span>
</div>
    <div style="color:#333333; position:absolute;top:2330px;left:20px;font-size:16px;  ">
R取return的首字母，即获取http请求的返回值，返回值分3种情况
</div>
 <div style="color:#333333; position:absolute;top:2360px;left:20px;font-size:16px;  ">
1 单个文本或数字,此时R表示返回的文本
</div>
  <div style="color:#333333; position:absolute;top:2390px;left:20px;font-size:16px;  ">
2 json,此时可以使用形如<span class="code">R.user.name</span>的方式取值
</div>
  <div style="color:#333333; position:absolute;top:2420px;left:20px;font-size:16px;  ">
3 xml,此时可以使用Jquery中操作xml的API，如<span class="code">R.find("name").text()</span>
</div>
  <div style="color:#333333; position:absolute;top:2450px;left:20px;font-size:16px;  ">
在一些场合(如事件-初始化-从URL获取)可以和JavaScript字符串处理函数混合使用，如<span class="code">U{name}.substring(0,4)</span>、<span class="code">U{name}+"admin"</span>
</div>
 <div style="color:#333333; position:absolute;top:2480px;left:20px;font-size:16px;  ">
在上一个例子中，将sql改为<span class="code">select count(*) from usi_user where id &lt; U{max}</span>，观察效果
</div>
 <div style="color:#333333; position:absolute;top:2510px;left:20px;font-size:16px;  ">
恭喜你，你已经可以运用LUR表达式实现动态数据的处理了，善于观察的你发现，很多表单都是有初始值的，该怎么做呢？
</div>
 <hr color="#ccc" style="position:absolute;top:2550px;left:20px;height:1px;width:95%;">
  
<div style="color:#333333; position:absolute;top:2570px;left:20px;font-size:26px;  ">
数据初始化
</div>
<hr color="#ccc" style="position:absolute;top:2625px;left:20px;height:1px;width:95%;">
 <div style="color:#333333; position:absolute;top:2640px;left:20px;font-size:16px;  ">
如意支持来自静态数据、url参数、数据库、http接口的数据对表单进行赋值，最简单的是给定一个数据，也就是静态数据初始化，右键表单，单击<span class="code">事件</span>
</div>
<img src="<%=request.getContextPath()%>/resources/helpimg/help7.png" style=" position:absolute;top:2670px;left:20px  ">
    <div style="color:#333333; position:absolute;top:2740px;left:20px;font-size:16px;  ">
在静态数据中给定<span class="code">初始值</span>即可
</div>
 <div style="color:#333333; position:absolute;top:2770px;left:20px;font-size:16px;  ">
如果要读取url参数，请在<span class="code">从URL获取</span>填写字段名，比如读取<span class="code">http://ip:port/server?name=admin</span>中name的值，可以写<span class="code">U{name}</span>
</div>
<img src="<%=request.getContextPath()%>/resources/helpimg/help8.png" style=" position:absolute;top:2800px;left:20px  ">
 <div style="color:#333333; position:absolute;top:2880px;left:20px;font-size:16px;  ">
也可以做一些字符串拼接和截取操作
</div>
 <div style="color:#333333; position:absolute;top:2910px;left:20px;font-size:16px;  ">
下面是sql获取数据的例子，注意返回的记录有且只能有1行，否则会导致异常
</div>
<img src="<%=request.getContextPath()%>/resources/helpimg/help9.png" style=" position:absolute;top:2940px;left:20px  ">
 <div style="color:#333333; position:absolute;top:3070px;left:20px;font-size:16px;  ">
下面是http获取数据的例子，返回的记录是json格式，可以直接使用<span class="code">R.属性.属性</span>
</div>
<img src="<%=request.getContextPath()%>/resources/helpimg/help10.png" style=" position:absolute;top:3100px;left:20px  ">
  <div style="color:#333333; position:absolute;top:3330px;left:20px;font-size:16px;  ">
 如果返回的记录是xml格式，可以直接使用Jquery的XML API<span class="code">R.find(属性).text()</span>、<span class="code">R.find(属性).attr(属性)</span>等等
</div>
 <img src="<%=request.getContextPath()%>/resources/helpimg/help11.png" style=" position:absolute;top:3360px;left:20px  ">
    <div style="color:#333333; position:absolute;top:3590px;left:20px;font-size:16px;  ">
有3种表单比较特殊，它们是下拉框、单选框和复选框 
</div>
     <div style="color:#333333; position:absolute;top:3620px;left:20px;font-size:16px;  ">
它们的初始化分为内容初始化和值初始化，比如一个性别的单选框，先要初始化男、女以及他们对应的字典值如0，1，再初始化默认值，比如默认选择男
</div>
  <div style="color:#333333; position:absolute;top:3650px;left:20px;font-size:16px;  ">
这类表单当你右键选择事件时，发现多了一个<span class="code">内容初始化</span>面板，你可以输入静态值，也可以从数据库动态获取值
</div>
<div style="color:#333333; position:absolute;top:3680px;left:20px;font-size:16px;  ">
对于sql我们规定使用别名<span class="code">K</span>和<span class="code">V</span>，如<span class="code">select name K,id V from user</span>,这里要求使用大写的<span class="code">K</span>作为展示的内容，大写的<span class="code">V</span>表示提交的内容
</div>
 <img src="<%=request.getContextPath()%>/resources/helpimg/help12.png" style=" position:absolute;top:3710px;left:20px  ">
    <div style="color:#333333; position:absolute;top:3860px;left:20px;font-size:16px;  ">
这类表单的值初始化和其他表单相同，注意用的是实际提交的值而不是字面值
</div>
  <div style="color:#333333; position:absolute;top:3890px;left:20px;font-size:16px;  ">
特别地，对于复选框，其初始值也将有多个，需要指定包含值的字段，如<span class="code">select id V from user</span>
</div>
  <div style="color:#333333; position:absolute;top:3920px;left:20px;font-size:16px;  ">
如果需要静态初始化复选框，需要将值以英文逗号分隔，如<span class="code">1,3,5,7</span>
</div>
 <div style="color:#333333; position:absolute;top:3950px;left:20px;font-size:16px;  ">
同理，获取复选框的值也将获得英文逗号分隔的格式，如<span class="code">1,3,5,7</span>，这样设计的好处是可以被springMVC等框架直接转成数组
</div>
 <hr color="#ccc" style="position:absolute;top:3990px;left:20px;height:1px;width:95%;">
  
<div style="color:#333333; position:absolute;top:4010px;left:20px;font-size:26px;  ">
可视化逻辑
</div>
<hr color="#ccc" style="position:absolute;top:4060px;left:20px;height:1px;width:95%;">
 <div style="color:#333333; position:absolute;top:4070px;left:20px;font-size:16px;  ">
逻辑是表单的核心，没有逻辑的表单设计器没有灵魂
</div>
 <div style="color:#333333; position:absolute;top:4100px;left:20px;font-size:16px;  ">
可视化逻辑是如意首创的，包括逻辑控制、操作语句和条件运算，语法通俗易懂，一般需要与<span class="code">LUR</span>表达式结合使用
</div>
<img src="<%=request.getContextPath()%>/resources/helpimg/help13.png" style=" position:absolute;top:4130px;left:20px  ">
    <div style="color:#333333; position:absolute;top:4100px;left:20px;font-size:16px;  ">
可视化逻辑是如意首创的，包括逻辑控制、操作语句和条件运算
</div>
 <div style="color:#333333; position:absolute;top:4560px;left:20px;font-size:16px;  ">
最重要的是<span class="code">赋值</span>，<span class="code">赋值</span>允许执行select语句和DML操作，配置和前文<span class="code">初始化</span>一样不在赘述
</div>
 <div style="color:#333333; position:absolute;top:4590px;left:20px;font-size:16px;  ">
这里使用hidden来接收返回的结果，后面的程序再根据hidden的结果来决定后面的逻辑
</div>
 <div style="color:#333333; position:absolute;top:4620px;left:20px;font-size:16px;  ">
对于<span class="code">提示</span>和<span class="code">异常</span>对应的提示框样式可以在工具栏的<span class="code">提示</span>配置
</div>

 <div style="color:#333333; font-weight:bold;position:absolute;top:4650px;left:20px;font-size:16px;  ">
 篇幅有限，更多细节期待你去探索
 </div>
 <div style="color:#333333; font-weight:bold;position:absolute;top:4680px;height:30px;left:20px;font-size:16px;  ">
&nbsp;
 </div>


</body>
</html>