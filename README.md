# 交互式表单设计器如意  
 
如意斩获2018 51CTO开发者大赛[第2名](https://weibo.com/ttarticle/p/show?id=2309351002704256219299743718)
 
如意是一款具有强交互性、支持业务逻辑设计的表单设计器，当前版本为1.0.1，官方宣传片：http://static.hdslb.com/miniloader.swf?aid=6841239&page=1
  
![image](https://github.com/shiyafeng/ruyi/blob/master/ruyi.jpg) 

## 特性

- 支持单行文本、多行文本、下拉框、单选框、复选框、隐藏框、密码框、文字、图片、底纹、富文本框、文件上传、日期时间、按钮等web控件

- 首创可视化业务逻辑设计，通过拖拽进行条件判断和命令执行，支持条件嵌套

- 支持url参数获取数据、http远程获取数据、数据库获取数据

- 页面加载、单击、双击、焦点等事件支持

- 拖拽控制组件位置和大小，支持颜色点选

- 支持多租户

- 多连接池动态切换，支持多数据源

- 支持前端校验和数据库校验，支持默认常用的规则（如数字、email、ip、手机号），支持自定义正则，支持校验框样式自定义

- 使用了[easyDropDown](https://github.com/patrickkunka/easydropdown)作为下拉框实现

- 使用了[My97datePicker](https://github.com/huxun/My97DatePicker)作为日期时间的实现

- 使用了[UMeditor](https://github.com/fex-team/umeditor)作为富文本框的实现

- 针对传统HTML中单选框、复选框、文件上传控件样式陈旧且不可变更的情况，做了组件重新实现

- 支持历史版本管理

- 支持令牌访问

- 支持在线编写js、jquery

## 部署方式

无需任何配置，启动后访问 http://ip:port/ruyi 即可
