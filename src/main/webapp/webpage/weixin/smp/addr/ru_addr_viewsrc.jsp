<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
         <!-- 引入 WeUI -->
    	<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.0/weui.min.css">
		<script type="text/javascript" src="https://res.wx.qq.com/open/libs/weuijs/1.1.1/weui.min.js"></script>
        <script src="../plug-in/weixin/js/smp/zepto.min.js"></script>    
    </head> 
<body >

	<!-- 主页面，展示已有用户列表 -->
<div class="page">
	<div class="weui-cells__title">Информация отправителя</div>
	<div class="weui-cells">
	<c:forEach items="${SRCADDRLIST}" var="p">
		<a class="weui-cell weui-cell_access js_item" href="wxuseraddr.do?goUpdateSrc=&lang=ru&id=${p.getId()}"  >
 		<div class="weui-cell__bd">
			<p> ${p.getSenderName()}</p>
		</div>
		<div class=weui-cell__ft">
			<p>
 				<span > ${p.getSenderPhone()}</span>
 			</p>
 		</div>
		</a> 	
	</c:forEach>
</div> 
</div>	  
</body>
</html>