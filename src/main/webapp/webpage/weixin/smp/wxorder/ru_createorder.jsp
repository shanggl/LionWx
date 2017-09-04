<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0">
<!-- 引入 WeUI -->
<link rel="stylesheet"
	href="https://res.wx.qq.com/open/libs/weui/1.1.0/weui.min.css">
<script type="text/javascript"
	src="https://res.wx.qq.com/open/libs/weuijs/1.1.1/weui.min.js"></script>
<!-- 写成ajax 方式，利用生成的crontroller 直接doAdd /doUpdate/doDel -->
<title>Оформлять заказ</title>
<script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<script type="text/javascript" src="../plug-in/weixin/js/smp/scanner.js"></script>
<script src="../plug-in/weixin/js/smp/zepto.min.js"></script>

<script type="text/javascript">
	wx.config({
		debug : false,
		appId : '${appId}',
		timestamp : '${timestamp}',
		nonceStr : '${nonceStr}',
		signature : '${signature}',
		jsApiList : [ 'checkJsApi', 'scanQRCode' ]
	});
</script>
</head>
<body>
	<div class="page">
		<div id="pagebody" class="page__bd">
			<FORM name=form1 id="orderform" action="#" method=post>
				<div class="weui-cells">
					<a class="weui-cell weui-cell_access"
						href="javascript:showSenderPicker();">
						<div class="weui-cell__hd">
							<img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII="
								alt="" style="width: 50px; margin-right: 5px; display: block" />
						</div>
						<div class="weui-cell__bd">Информация отправителя</div>
						<div class="weui-cell__ft">Выбор</div>
					</a>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Ф.И.О:</label>
						</div>
						<div class="weui-cell__bd">
							<input name="senderName" id="sender_name" class="weui-input"
								type="text" placeholder="Ф.И.О отправителя" required emptyTips="Ф.И.О отправителя" />
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Телефон:</label>
						</div>
						<div class="weui-cell__bd">
							<input name="senderPhone" id="sender_phone" class="weui-input"
								type="tel" placeholder="Телефон отправителя" required emptyTips="Телефон отправителя" />
						</div>
					</div>
				</div>
				<div class="weui-cells">
					<a class="weui-cell weui-cell_access"
						href="javascript:showDestPicker();">
						<div class="weui-cell__hd">
							<img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII="
								alt="" style="width: 50px; margin-right: 5px; display: block" />
						</div>
						<div class="weui-cell__bd">Информация получителя</div>
						<div class="weui-cell__ft">Выбор</div>
					</a>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Ф.И.О:</label>
						</div>
						<div class="weui-cell__bd">
							<input name="destName" id="dest_name" class="weui-input"
								type="text" placeholder="Ф.И.О получателя" required emptyTips="Ф.И.О получателя" />
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Телефон:</label>
						</div>
						<div class="weui-cell__bd">
							<input name="destPhone" id="dest_phone" class="weui-input"
								type="tel" placeholder="Телефон получателя" required emptyTips="Телефон получателя" />
						</div>
					</div>
				</div>
				<div class="weui-cells">
					<a class="weui-cell weui-cell_access" href="javascript:;">
						<div class="weui-cell__hd">
							<img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII="
								alt="" style="width: 50px; margin-right: 5px; display: block">
							</img>
						</div>
						<div class="weui-cell__bd">Россия</div>
						<div class="weui-cell__ft"></div>
					</a>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Город:</label>
						</div>
						<div class="weui-cell__bd">
							<input name="destForeignCity" id="dest_city" class="weui-input"
								type="text" placeholder="Город" 　required emptyTips="Город" />
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Индекс</label>
						</div>
						<div class="weui-cell__bd">
							<input name="destCityPostcode" id="dest_city_postcode"
								class="weui-input" type="text" placeholder="Индекс" required
								emptyTips="Индекс" />
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Конкретный адрес</label>
						</div>
						<div class="weui-cell__bd">
							<input name="destForeignAddr" id="dest_foreigin_addr"
								class="weui-input" type="text" placeholder="Облость город Улица, дом/корпус, кв/офис" required
								emptyTips="Облость город Улица, дом/корпус, кв/офис" />
						</div>
					</div>
				</div>

				<div class="weui-cells">
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Номер куэди Китая</label>
							<p>
								<input name="localOrderNo" id="orderId" required class="weui-input"
									type="number" placeholder="Номер куэди Китая"　 emptyTips="Номер куэди Китая" />
							</p>
						</div>
						<div class="weui-cell__bd"></div>
						<div class="weui-cell__ft">
							<a href="javascript:scanQRbar();"> <img
								src="../plug-in/weixin/img/smp/scanqr1.png"
								style="width: 50px; display: block; margin-right: 5px;" alt="Сканировать"></img>
							</a>
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Описание товара</label>
						</div>
						<div class="weui-cell__bd">
							<input name="packageContent" id="package_content" required
								class="weui-input" type="text" placeholder="Описание товара для проверки томожний"
								　 emptyTips="Описание товара для проверки томожний" />
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Замечание</label>
						</div>
						<div class="weui-cell__bd">
							<input name="remark" id="sender_name" class="weui-input"
								type="text" placeholder="Option" />
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Стоимость товара(￥)</label>
						</div>
						<div class="weui-cell__bd">
							<input name="packageValue" id="package_value" class="weui-input"
								type="number" placeholder="Стоимость товара" required emptyTips="Стоимость товара"/>
						</div>
						<div class="weui-cell__ft"></div>
					</div>
					<div class="weui-cell weui-cell_warn">
						<p>Объяснение страховки 1%-3% От стоимость товара</p>
					</div>

					<div class="weui-cells weui-cells_radio">
						<label class="weui-cell weui-check__label" for="x11">
							<div class="weui-cell__bd">
								<p>Суперэкспресс</p>
							</div>
							<div class="weui-cell__ft">
								<input class="weui-check" name="transferType" id="x11"
									type="radio" checked="checked" value="1"> <span
									class="weui-icon-checked"></span>
							</div>
						</label> <label class="weui-cell weui-check__label" for="x12">

							<div class="weui-cell__bd">
								<p>Простой экспресс</p>
							</div>
							<div class="weui-cell__ft">
								<input name="transferType" class="weui-check" id="x12"
									type="radio" value="2"> <span class="weui-icon-checked"></span>
							</div>
						</label>
					</div>
				</div>
			</FORM>
		</div>
		<div class="weui-btn-area">
			<a href="javascript:;" class="weui-btn weui-btn_primary"
				id="saveOrder">Хранить заказ</a>
		</div>
		<div id="pagefoot" class="page__ft">
			<!-- 放网站url -->
		</div>

	</div>
</body>
<script type="text/javascript">
function showSenderPicker(){
		weui.picker([
			{
			    label: 'Ручной ввод',
			    value: {"sender_name":"","sender_phone":""},
 			},
		<c:forEach items="${SRCADDRLIST}" var="p">
		{
		    label: '${p.getSenderName()}      ${p.getSenderPhone()}',
		    value: {"sender_name":"${p.getSenderName()}","sender_phone":"${p.getSenderPhone()}"},
		},
		</c:forEach>
		], {
		   className: 'custom-classname',
		   defaultValue: [3],
		   onChange: function (result) {
		     //  console.log(result)
		   },
		   onConfirm: function (result) { 
		       $("#sender_name").val(result[0].value["sender_name"]);
		       $("#sender_phone").val(result[0].value["sender_phone"]);

		   },
		   id: 'senderMsgPicker'
		});
}

function showDestPicker(){
	weui.picker([
		{
		    label: 'Ручной ввод',
		    value: {"dest_name":"",
	    	    "dest_phone":"",
	    	    "dest_city":"",
	    	    "dest_city_postcode":"",
	    	    "dest_foreigin_addr":""},
 		},
	<c:forEach items="${DESTADDRLIST}" var="p">
	{
	    label: '${p.getDestName()}      ${p.getDestPhone()}',
	    value: {"dest_name":"${p.getDestName()}",
	    	    "dest_phone":"${p.getDestPhone()}",
	    	    "dest_city":"${p.getDestForeignCity()}",
	    	    "dest_city_postcode":"${p.getDestCityPostCode()}",
	    	    "dest_foreigin_addr":"${p.getDestForeiginAddr()}"},
	},
	</c:forEach>
	], {
	   className: 'custom-classname',
	   defaultValue: [3],
	   onChange: function (result) {
	     //  console.log(result)
	   },
	   onConfirm: function (result) { 
	       $("#dest_name").val(result[0].value["dest_name"]);
	       $("#dest_phone").val(result[0].value["dest_phone"]);
	       $("#dest_city").val(result[0].value["dest_city"]);
	       $("#dest_city_postcode").val(result[0].value["dest_city_postcode"]);
	       $("#dest_foreigin_addr").val(result[0].value["dest_foreigin_addr"]);

	   },
	   id: 'destMsgPicker'
	});
}
</script>
<script type="text/javascript">
	$(function() {
		$("#saveOrder").on('click', function() {
			//校验非空

			var valid = false;
			weui.form.validate('#orderform', function(error) {
				if (!error) {
					valid = true;
				}
				// return true; // 当return true时，不会显示错误
			}, {
				regexp : {}
			});
			if(valid){
				$("#saveOrder").toggleClass("weui-btn_disabled");
				$.ajax({
					type : 'POST',
					url : 'wxuserorder.do?doAddWxOrder',
					data : $('#orderform').serialize(),
					timeout : 5000,
					success : function(rsp) {
						/*返回的是普通字符串*/
						msg = $.parseJSON(rsp);
						if (msg.success) {
							weui.toast('Выполнен', {
								duration : 3000,
								className : 'custom-classname',
								callback : function() {
									window.location = 'wxuserorder.do?myorder&lang=ru';
								}
							});
						} else {
							weui.topTips("Не выполне:" + msg.msg);
							$("#saveOrder").toggleClass("weui-btn_disabled");
						}
					},
					error : function(xhr, type) {
						alert("Не выполне");
						$("#saveOrder").toggleClass("weui-btn_disabled");
					}
				});
			}//end if valid 
		return false;
		});
	});
</script>
</html>