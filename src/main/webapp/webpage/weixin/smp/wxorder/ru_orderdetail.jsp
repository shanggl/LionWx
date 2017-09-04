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
<title>Подробность заказа</title>

<script src="../plug-in/weixin/js/smp/zepto.min.js"></script>

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
						<div class="weui-cell__bd">Выбрать отправителя</div>
						<div class="weui-cell__ft"></div>
					</a>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Ф.И.О:</label>
						</div>
						<div class="weui-cell__bd">
							<input name="senderName" id="sender_name" class="weui-input"
								type="text" value="${ORDER.getSenderName()}" />
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Телефон:</label>
						</div>
						<div class="weui-cell__bd">
							<input name="senderPhone" id="sender_phone" class="weui-input"
								type="tel" placeholder="Телефон" required emptyTips="Телефон отправителя" value="${ORDER.getSenderPhone()} " />
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
						<div class="weui-cell__bd">Информация получателя</div>
						<div class="weui-cell__ft"></div>
					</a>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Ф.И.О:</label>
						</div>
						<div class="weui-cell__bd">
							<input name="destName" id="dest_name" class="weui-input"
								type="text" placeholder="Ф.И.О получателя" required emptyTips="Ф.И.О получателя" value="${ORDER.getDestName() }"/>
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Телефон:</label>
						</div>
						<div class="weui-cell__bd">
							<input name="destPhone" id="dest_phone" class="weui-input"
								type="tel" placeholder="Телефон получателя" required emptyTips="Телефон получателя" value="${ORDER.getDestPhone() }"/>
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
								type="text" placeholder="Город получителя" 　required emptyTips="Город получителя" value="${ORDER.getDestForeignCity() }" />
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Индекс</label>
						</div>
						<div class="weui-cell__bd">
							<input name="destCityPostcode" id="dest_city_postcode"
								class="weui-input" type="text" placeholder="Индекс" required
								emptyTips="Индекс" value="${ORDER.getDestCityPostcode() }" />
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Конкретный адрес</label>
						</div>
						<div class="weui-cell__bd">
							<input name="destForeignAddr" id="dest_foreigin_addr"
								class="weui-input" type="text" placeholder="Облость город Улица, дом/корпус, кв/офис" required
								emptyTips="Облость город Улица, дом/корпус, кв/офис" value="${ORDER.getDestForeignAddr() }" />
						</div>
					</div>
				</div>

				<div class="weui-cells">
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Номер куэди Китая</label>
							<p>
								<input name="localOrderNo" id="orderId" required class="weui-input"
									type="number" placeholder="Номер куэди Китая"　 value="${ORDER.getLocalOrderNo() }" />
							</p>
						</div>
						<div class="weui-cell__bd"></div>
						<div class="weui-cell__ft"> 
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Описание товара</label>
						</div>
						<div class="weui-cell__bd">
							<input name="packageContent" id="package_content" required
								class="weui-input" type="text" placeholder="Описание товара для проверки томожний"
								　 value="${ORDER.getPackageContent() }"/>
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Замечание</label>
						</div>
						<div class="weui-cell__bd">
							<input name="remark" id="remark" class="weui-input"
								type="text"  value="${ORDER.getRemark() }"/>
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd">
							<label class="weui-label">Стоимость товара(￥)</label>
						</div>
						<div class="weui-cell__bd">
							<input name="packageValue" id="package_value" class="weui-input"
								type="number" placeholder="Стоимость товара" value="${ORDER.getPackageValue() }"/>
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
			<a href="javascript:window.history.back();" class="weui-btn weui-btn_primary"
				id="closeWindow">Обратно</a>
				<a href="wxuserorder.do?qrquery=&localOrderNo=${ORDER.getLocalOrderNo()}" 
				class="weui-btn weui-btn_default"
				id="saveOrder">Следовать</a>
		</div>
		<div id="pagefoot" class="page__ft">
			<!-- 放网站url -->
		</div>

	</div>
</body>
<script type="text/javascript">
	var transType="${ORDER.getTransferType()}";
	var radioList=$(".weui-check");
	for (var i=0;i<radioList.length;i++){
		if(radioList[i].value==transType)
		{
		radioList[i].checked="checked";
		break; 
		}
	}
</script>

</html>