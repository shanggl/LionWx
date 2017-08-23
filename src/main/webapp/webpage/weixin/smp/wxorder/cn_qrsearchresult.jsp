<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0" />
	<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.0/weui.min.css">
	<script type="text/javascript" src="https://res.wx.qq.com/open/libs/weuijs/1.1.1/weui.min.js"></script>
	
</head>
<body>
	<h1>${message}</h1>
	
</body>
<script>
	weui.dialog({
    title: '查询出错',
    content: '${message} <br> 请关闭页面或者重新查询',
    className: 'custom-classname',
    buttons: [{
        label: '关闭',
        type: 'default',
        onClick: function () { window.close(); }
    }, {
        label: '重新查询',
        type: 'primary',
        onClick: function () { window.location="wxuserorder.do?qrsearch&lang=cn"; }
    }]
});
</script> 
</html>