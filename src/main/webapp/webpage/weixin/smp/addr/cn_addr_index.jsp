<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
        <title>地址簿</title>
        <!-- 引入 WeUI -->
    <link rel="stylesheet" href="../plug-in/weixin/weui.css"></link>
    </head>
    <body>
	<div id="head" class="weui-cells">
			<div class="weui-cell__hd">
				<img src="${WXMPUSER.getHeadImgUrl()}" style="width:50px;display:block"></img>
			</div>
			<div class="weui-cell__bd">昵称:${WXMPUSER.getNickname()}</div>
			<div class="weui-cell__ft"></div>
 		</div>
	<div id="needrecv" class="weui-cells">
　		<a class="weui-cell weui-cell_access" href="/smp/wxuseraddr.do?createsrc">
			<div class="weui-cell__hd">
				<img src="../plug-in/weixin/img/smp/icon-needrecv.png"></img>
			</div>
			<div class="weui-cell__bd"><p>新建寄件人</div>
			<div class="weui-cell__ft"></div>
		</a>
　 
　		<a class="weui-cell weui-cell_access" href="/smp/wxuseraddr.do?viewsrc">
			<div class="weui-cell__hd">
				<img src="../plug-in/weixin/img/smp/icon-needpay.png"></img>
			</div>
			<div class="weui-cell__bd"><p>查看寄件人</div>
			<div class="weui-cell__ft"></div>
		</a>
 	   	<div id="inprocess" class="weui-cells">
　		<a class="weui-cell weui-cell_access" href="/smp/wxuseraddr.do?cratedest">
			<div class="weui-cell__hd">
				<img src="../plug-in/weixin/img/smp/icon-inprogress.png"></img>
			</div>
			<div class="weui-cell__bd"><p>新建收件人</div>
			<div class="weui-cell__ft"></div>
		</a>
 　		<a class="weui-cell weui-cell_access" href="/smp/wxuseraddr.do?viewdest">
		<div class="weui-cell__hd">
			<img src="../plug-in/weixin/img/smp/icon-signed.png"></img>
		</div>
		<div class="weui-cell__bd"><p>查看收件人</div>
		<div class="weui-cell__ft"></div>
		</a>
　	</div>
    </body>
</html>