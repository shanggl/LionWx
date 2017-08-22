<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
         <!-- 引入 WeUI -->
    	<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.0/weui.min.css">
		<script type="text/javascript" src="https://res.wx.qq.com/open/libs/weuijs/1.1.1/weui.min.js"></script>
        <script src="../plug-in/weixin/js/smp/zepto.min.js"></script>    
    <!-- 写成ajax 方式，利用生成的crontroller 直接doAdd /doUpdate/doDel -->
    </head> 
<body >
    <div class="page"> 
	    <div id="pagebody" class="page__bd weui-cells">
	 		<div class="weui-cells__title">请输入寄件人信息</div>
			<FORM name=form1 id="senderform" action="#" method=post>
	            <div class="weui-cell">
	                <div class="weui-cell__hd">
	                	<label class="weui-label">姓名:</label></div>
	                <div class="weui-cell__bd">
	                    <input name="senderName" id="sender_name" class="weui-input" type="text" placeholder="请输入寄件人姓名"/>
	                </div>
	            </div>
	            <div class="weui-cell">
	                <div class="weui-cell__hd">
	                    <label class="weui-label">电话:</label>
	                </div>
	                <div class="weui-cell__bd">
	                    <input name="senderPhone" class="weui-input" type="tel" placeholder="请输入手机号" ">
	                </div>
	            </div>
 			</FORM>

		</div>
			<div class="weui-btn-area"> 
        			<a href="javascript:;" class="weui-btn weui-btn_primary" id="saveSrcAddr">保存</a>
  			</div> 
		<div id="pagefoot" class="page__ft">
			<!-- 放网站url -->
		</div>
 
 	</div>
	<script type="text/javascript"> 
	   $(function(){
       $("#saveSrcAddr").on('click',function(){
		//校验非空
		if($("#sender_name").val().length==0){
			weui.topTips("寄件人姓名不能为空");
			$("#sender_name").focus();
			return;
		}
  		
		$.ajax({
			type:'POST',
			url:'wxuseraddr.do?doAddSrc',
			data:$('#senderform').serialize(),
			timeout:5000,
			success:function(rsp){
				/*返回的是普通字符串*/
				msg=$.parseJSON(rsp);
 				if(msg.success){ 
 					weui.toast('操作成功', {
 					    duration: 3000,
 					    className: 'custom-classname',
 					    callback: function(){ 
 					    	window.location='wxuseraddr.do?index';
 					    }
 					});
 				} else { 
 					weui.topTips("操作失败，信息:"+msg.msg);
				}
 			},
			error:function(xhr,type){alert("保存寄件人信息失败");}
		});
  
		}); 
    });
	</script>  
</html>