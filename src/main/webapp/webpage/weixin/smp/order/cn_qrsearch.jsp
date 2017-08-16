<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
 <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0"/>
<title>快递信息查询</title>
<!-- 引入 WeUI -->
<link href="../plug-in/weixin/weui.css" rel="stylesheet" ></link>
<link href="../plug-in/weixin/mobru.css" type="text/css" rel="stylesheet" ></link>
    	
 <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
 <script type="text/javascript" src="../plug-in/weixin/js/smp/scanner.js"></script>
 <script type="text/javascript">
   	wx.config({
      debug: false,
      appId:'${appId}',
      timestamp: '${timestamp}',
      nonceStr: '${nonceStr}',
      signature:'${signature}',
      jsApiList: [
                  'checkJsApi', 
                    'scanQRCode'
                  ]
  });
 </script>
 </head> 


    <body>
     <h>
          <img src="../plug-in/weixin/img/smp/head.png" alt="" width="100%"></img>
     </h>
     
		<form name="form1" action="/smp/wxuserorder.do?qrquery&lang=cn" method="post">
			<table border="0" width="100%">
			<tbody><tr><td>
				<div align="right"><input name="orderId" id="orderId" class="content-padded" placeholder="请在此输入查询单号" style="width: 100%; " type="number"></input>
				</div>
			</td>
			
			<td><div align="left"><a href="javascript:scanQRbar();">
			<img src="../plug-in/weixin/img/smp/scanqr1.png" class="content-padded" height="30px"/></a> 
			</div></td>
			</tr></tbody></table>
			
			<div class="weui-btn-area">
				<input value="查询" class="weui-btn weui-btn_primary" type="submit"></input>
			</div>
		</form> 

</body>
</html>