<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>Центр услуга</title>
    <!-- 引入 WeUI -->
    <link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.0/weui.min.css">
    <link rel="stylesheet" href="../plug-in/weixin/css/smp/smp_icon.css"></link>

    <!-- 需要把所有ICON 的样式抽取为一个css -->
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
    　		<a class="weui-cell weui-cell_access" href="wxuserorder.do?myorder&lang=ru">
    <div class="weui-cell__hd block-icon">
        <img src="../plug-in/weixin/img/smp/icon-needrecv.png"  ></img>
    </div>
    <div class="weui-cell__bd"><p>Мой заказ</p></div>
    <div class="weui-cell__ft"></div>
</a>
    　
    　		<a class="weui-cell weui-cell_access" href="wxuseraddr.do?index&lang=ru">
    <div class="weui-cell__hd block-icon">
        <img src="../plug-in/weixin/img/smp/icon-needpay.png"  ></img>
    </div>
    <div class="weui-cell__bd"><p>Адресная книга</p></div>
    <div class="weui-cell__ft"></div>
</a>
    <div id="inprocess" class="weui-cells">
        　		<a class="weui-cell weui-cell_access" href="wxuserorder.do?qrsearch&lang=ru">
        <div class="weui-cell__hd block-icon">
            <img src="../plug-in/weixin/img/smp/icon-inprogress.png"  ></img>
        </div>
        <div class="weui-cell__bd"><p>Следовать</p></div>
        <div class="weui-cell__ft"></div>
    </a>
        　		<a class="weui-cell weui-cell_access" href="wxuserorder.do?preCreateOrder&lang=ru">
        <div class="weui-cell__hd block-icon">
            <img src="../plug-in/weixin/img/smp/icon-signed.png"  ></img>
        </div>
        <div class="weui-cell__bd"><p>Оформить</p></div>
        <div class="weui-cell__ft"></div>
    </a>
        　	</div>
</body>
</html>