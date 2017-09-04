<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
        <title>Адресная книга</title>
        <!-- 引入 WeUI -->
    <link rel="stylesheet" href="../plug-in/weixin/weui.css"></link>
    <link rel="stylesheet" href="../plug-in/weixin/css/smp/smp_icon.css"></link>
    </head>
    <body>
	<div id="head" class="weui-cells">
			<div class="weui-cells__hd radius-icon">
				<img src="${WXMPUSER.getHeadImgUrl()}"></img>
			</div>
			<div class="weui-weui-cells__bd">${WXMPUSER.getNickname()}</div>
   	</div>
	<div id="needrecv" class="weui-cells">
　		<a class="weui-cell weui-cell_access" href="wxuseraddr.do?goCreateSrc&lang=ru">
			<div class="weui-cell__hd block-icon">
				<img src="../plug-in/weixin/img/smp/icon-needrecv.png"></img>
			</div>
			<div class="weui-cell__bd">Создать отправителя</div>
			<div class="weui-cell__ft"></div>
		</a>
　 
　		<a class="weui-cell weui-cell_access" href="wxuseraddr.do?goViewSrc&lang=ru">
			<div class="weui-cell__hd block-icon">
				<img src="../plug-in/weixin/img/smp/icon-needpay.png"></img>
			</div>
			<div class="weui-cell__bd"><p>Запрос отправителя</div>
			<div class="weui-cell__ft"></div>
		</a>
 	   	<div id="inprocess" class="weui-cells">
　		<a class="weui-cell weui-cell_access" href="wxuseraddr.do?goCreateDest&lang=ru">
			<div class="weui-cell__hd block-icon">
				<img src="../plug-in/weixin/img/smp/icon-inprogress.png"></img>
			</div>
			<div class="weui-cell__bd"><p>Создать получителя</div>
			<div class="weui-cell__ft"></div>
		</a>
 　		<a class="weui-cell weui-cell_access" href="wxuseraddr.do?goViewDest&lang=ru">
		<div class="weui-cell__hd block-icon">
			<img src="../plug-in/weixin/img/smp/icon-signed.png"></img>
		</div>
		<div class="weui-cell__bd"><p>Запрос получителя</div>
		<div class="weui-cell__ft"></div>
		</a>
　	</div>
    </body>
</html>