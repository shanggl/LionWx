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
	 		<div class="weui-cells__title">Информация получителя</div>
			<FORM name=form1 id="destform" action="#" method=post>
	            <div class="weui-cell">
	                <div class="weui-cell__hd">
	                	<label class="weui-label">Ф.И.О:</label></div>
	                <div class="weui-cell__bd">
	                    <input name="destName" id="dest_name" class="weui-input" type="text" placeholder="Ф.И.О получателя" required emptyTips="Ф.И.О получателя" />
	                </div>
	            </div>
	            <div class="weui-cell">
	                <div class="weui-cell__hd">
	                    <label class="weui-label">Телефон:</label>
	                </div>
	                <div class="weui-cell__bd">
	                    <input name="destPhone" class="weui-input" type="tel" placeholder="Телефон получателя" required emptyTips="Телефон получателя"/>
	                </div>
	            </div>
	            <div class="weui-cell">
	                <div class="weui-cell__hd">
	                    <label class="weui-label">Город:</label>
	                </div>
	                <div class="weui-cell__bd">
	                    <input name="destForeignCity" class="weui-input" type="text" placeholder="Город" required emptyTips="Город"/>
	                </div>
	            </div>
	        　　　　<div class="weui-cell">
	                <div class="weui-cell__hd">
	                    <label class="weui-label">Индекс:</label>
	                </div>
	                <div class="weui-cell__bd">
	                    <input name="destCityPostCode" class="weui-input" type="text" placeholder="Индекс" required emptyTips="Индекс"/>
	                </div>
	            </div>
	           　<div class="weui-cell">
	                <div class="weui-cell__hd">
	                    <label class="weui-label">Конкретный адрес:</label>
	                </div>
	                <div class="weui-cell__bd">
	                    <input name="destForeiginAddr" class="weui-input" type="text" placeholder="Облость город Улица, дом/корпус, кв/офис" required emptyTips="Облость город Улица, дом/корпус, кв/офис"/>
	                </div>
	            </div>
 			</FORM>

		</div>
			<div class="weui-btn-area"> 
        			<a href="javascript:;" class="weui-btn weui-btn_primary" id="saveDestAddr">Хранить</a>
  			</div> 
		<div id="pagefoot" class="page__ft">
			<!-- 放网站url -->
			<a href="wxuseraddr.do?index&lang=ru">Адресная книга</a>
		</div>
 
 	</div>
	<script type="text/javascript"> 
	   $(function(){
       $("#saveDestAddr").on('click',function(){
		//校验非空 
		var valid=false;
		weui.form.validate('#destform', function (error) {
		    if (!error) {
		        valid=true;
		    }
		    // return true; // 当return true时，不会显示错误
			}, {
		    regexp: {
		    }
		});
		//提交保存
		if(valid){
            $("#saveDestAddr").toggleClass("weui-btn_disabled");

            $.ajax({
				type:'POST',
				url:'wxuseraddr.do?doAddDest',
				data:$('#destform').serialize(),
				timeout:3000,
				success:function(rsp){
					/*返回的是普通字符串*/
					msg=$.parseJSON(rsp);
	 				if(msg.success){ 
	 					weui.toast('Выполнен', {
	 					    duration: 3000,
	 					    className: 'custom-classname',
	 					    callback: function(){ 
	 					    	window.location='wxuseraddr.do?index&lang=ru';
	 					    }
	 					});
	 				} else { 
	 					weui.topTips("Не выполне:"+msg.msg);
                        $("#saveDestAddr").toggleClass("weui-btn_disabled");

                    }
	 			},
				error:function(xhr,type){alert("Не выполне");　console.log(xhr);console.log(type);}
			});
		}  
		}); 
    });
	</script>  
</html>