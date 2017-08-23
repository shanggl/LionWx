<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../plug-in/weixin/js/smp/zepto.min.js"></script>

<title>订单查询</title>
</head>
<body>
<!--单号输入框。-->
<input type="text" id="YQNum" maxlength="50" value="${ORDERNO }"/>
<!--用于调用脚本方法的按钮。-->
<input type="button" value="TRACK" onclick="doTrack()"/>
<!--用于显示查询结果的容器。-->
<div id="YQContainer"></div>

<!--脚本代码可放于页面底部，等到页面最后执行。-->
<script type="text/javascript" src="//www.17track.net/externalcall.js"></script>
<script type="text/javascript">
function doTrack() {
    var num = document.getElementById("YQNum").value;
    if(num===""){
        alert("Enter your number."); 
        return;
    }
    YQV5.trackSingle({
        //必须，指定承载内容的容器ID。
        YQ_ContainerId:"YQContainer",
        //可选，指定查询结果高度，最大高度为800px，默认撑满容器。
        YQ_Height:400,
        //可选，指定运输商，默认为自动识别。
        YQ_Fc:"0",
        //可选，指定UI语言，默认根据浏览器自动识别。
        YQ_Lang:"en",
        //必须，指定要查询的单号。
        YQ_Num:num
    });
}
$(function(){
	doTrack();
});
</script>

</body>
</html>