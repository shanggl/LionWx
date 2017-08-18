<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
         <!-- 引入 WeUI -->
    <link rel="stylesheet" href="../plug-in/weixin/weui.css"></link>
        <link rel="stylesheet" href="../plug-in/weixin/css/smp/smp_page.css"></link>
    
    <!-- 写成ajax 方式，利用生成的crontroller 直接doAdd /doUpdate/doDel -->
    </head> 
<body ontouchstart>
    <div class="weui-toptips weui-toptips_warn js_tooltips">错误提示</div>
    <div class="container" id="container"></div>

</body>
    <script type="text/html" id="tpl_home">
    <div class="page"> 
	    <div id="pagebody" class="page__bd weui-cells">
	 		<div class="weui-cells__title">请输入寄件人信息</div>
			<FORM name=form1 id="senderform" action="#" method=post>
	            <div class="weui-cell">
	                <div class="weui-cell__hd">
	                	<label class="weui-label">寄件人姓名</label></div>
	                <div class="weui-cell__bd">
	                    <input name="senderName" id="sender_name" class="weui-input" type="text" placeholder="请输入寄件人姓名"/>
	                </div>
	            </div>
	            <div class="weui-cell">
	                <div class="weui-cell__hd">
	                    <label class="weui-label">寄件人电话号</label>
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
        $('.js_item').on('click', function(){
            var id = $(this).data('id');
            window.pageManager.go(id);
        });
	  $("#saveSrcAddr").on('click',function(){
		//校验非空
		if($("#sender_name").val().length==0){
			alert("寄件人姓名不能为空");
			$("#sender_name").focus();
			return;
		}
		data=$("#senderform").serialize();
  
		$.ajax({
			type:'POST',
			url:'wxuseraddr.do?doAdd',
			data:$('#senderform').serialize(),
			timeout:1000,
			success:function(rsp){
				/*返回的是普通字符串*/
				msg=$.parseJSON(rsp);
 				if(msg.success){  window.pageManager.go('msg_succ'); $("#msg_succ_content").html(msg.msg);}
				else { $("#msg_error_content").html(msg.msg); window.pageManager.go('msg_error');}
			},
			error:function(xhr,type){alert(xhr);}
		});
 

		}); 
    });
	</script> 

 </script>

<script type="text/html" id="tpl_msg_succ">
<div class="page"  >
    <div class="weui-msg">
        <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
        <div class="weui-msg__text-area">
            <h2 class="weui-msg__title">操作成功</h2>
            <p class="weui-msg__desc" id="msg_succ_content">已经成功保存</p> </div>
        <div class="weui-msg__opr-area">
            <p class="weui-btn-area">
                <a href="javascript:window.location.replace('wxuseraddr.do?index');" class="weui-btn weui-btn_primary">返回地址簿</a>
            </p>
        </div>
    </div>
</div>
</script>
<script type="text/html" id="tpl_msg_error">
<div class="page" >
    <div class="weui-msg">
        <div class="weui-msg__icon-area"><i class="weui-icon-warn weui-icon_msg"></i></div>
        <div class="weui-msg__text-area">
            <h2 class="weui-msg__title">操作失败</h2>
            <p class="weui-msg__desc" id="msg_error_content" >保存失败</p>
        </div>
        <div class="weui-msg__opr-area">
            <p class="weui-btn-area">
                <a href="javascript:history.back();" class="weui-btn weui-btn_primary">继续编辑</a>
            </p>
        </div>
    
    </div>
</div>
</script> 
  <script src="../plug-in/weixin/js/smp/zepto.min.js"></script>
   <script src="../plug-in/weixin/js/smp/pageInit.js"></script>
 
</html>