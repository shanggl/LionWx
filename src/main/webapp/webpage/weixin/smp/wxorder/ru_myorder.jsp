<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
        <title>Центр услуга</title>
        <!-- 引入 WeUI -->
    <link rel="stylesheet" href="../plug-in/weixin/weui.css"></link>
    <link rel="stylesheet" href="../plug-in/weixin/css/smp/smp_icon.css"></link>
    
    </head>
    <body>		
    		<div id="head" class="weui-cells">
			<div class="weui-cell__hd radius-icon">
				<img src="${WXMPUSER.getHeadImgUrl()}"  ></img>
			</div>
			<div class="weui-cell__bd">${WXMPUSER.getNickname()}</div>
			<div class="weui-cell__ft"></div>
 		</div>
	<div id="needrecv" class="weui-cells">
　		<a class="weui-cell weui-cell_access" href="wxuserorder.do?goOrderList&state=LOCAL&lang=ru">
			<div class="weui-cell__hd block-icon">
				<img src="../plug-in/weixin/img/smp/icon-needrecv.png"></img>
			</div>
			<div class="weui-cell__bd">
				<span style="vertical-align: middle">Посылка подхода</span>
				<span class="weui-badge" style="margin-left: 5px;" >${LOCAL}</span>
			</div>
			<div class="weui-cell__ft"></div>
		</a>
　 
　		<a class="weui-cell weui-cell_access" href="wxuserorder.do?goOrderList&state=NEEDPAY&lang=ru">
			<div class="weui-cell__hd block-icon">
				<img src="../plug-in/weixin/img/smp/icon-needpay.png"></img>
			</div>
			<div class="weui-cell__bd">
				<span style="vertical-align: middle">Должен оплатить</span>
				<span class="weui-badge" style="margin-left: 5px;" >${NEEDPAY}</span>
				</div>
			<div class="weui-cell__ft"></div>
		</a>
 	   	<div id="inprocess" class="weui-cells">
　		<a class="weui-cell weui-cell_access" href="wxuserorder.do?goOrderList&state=INTRANS&lang=ru">
			<div class="weui-cell__hd block-icon">
				<img src="../plug-in/weixin/img/smp/icon-inprogress.png"></img>
			</div>
			<div class="weui-cell__bd">
				<span style="vertical-align: middle">В пути</span>
				<span class="weui-badge" style="margin-left: 5px;" >${INTRANS}</span>
			 </div>
			<div class="weui-cell__ft"></div>
		</a>
 　		<a class="weui-cell weui-cell_access" href="wxuserorder.do?goOrderList&state=SIGNEND&lang=ru">
		<div class="weui-cell__hd block-icon">
			<img src="../plug-in/weixin/img/smp/icon-signed.png"></img>
		</div>
		<div class="weui-cell__bd">
			<span style="vertical-align: middle">Вручен</span>
			<span class="weui-badge" style="margin-left: 5px;" >${SIGNEND}</span>
		</div>
		<div class="weui-cell__ft"></div>
		</a>
　	</div>
    </body>
</html>