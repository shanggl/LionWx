<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微信快递订单信息</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="" tiptype="1">
					<input id="id" name="id" type="hidden" value="${smpWeixinOrderPage.id }">
					<input id="createDate" name="createDate" type="hidden" value="${smpWeixinOrderPage.createDate }"  />
　		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								用户OpenID:
							</label>
						</td>
						<td class="value">
						     	 <input id="openId" name="openId" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.openId}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">用户OpenID</label>
						</td>
					</tr>
					 <tr>
						<td align="right">
							<label class="Validform_label">
								用户昵称:
							</label>
						</td>
						<td class="value">
						     	 <input id="nackName" name="nackName" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.nackName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">用户昵称</label>
						</td>
					</tr>
					 <tr>
						<td align="right">
							<label class="Validform_label">
								寄件人姓名:
							</label>
						</td>
						<td class="value">
						     	 <input id="senderName" name="senderName" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.senderName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">寄件人名</label>
						</td>
					</tr>
					 <tr>
						<td align="right">
							<label class="Validform_label">
								寄件人电话:
							</label>
						</td>
						<td class="value">
						     	 <input id="senderPhone" name="senderPhone" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.senderPhone}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">寄件人电话</label>
						</td>
					</tr>
					 <tr>
						<td align="right">
							<label class="Validform_label">收件人姓名:</label>
						</td>
						<td class="value">
						    <input id="destName" name="destName" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.destName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">收件人姓名</label>
						</td>
					</tr>
					 <tr>
						<td align="right">
							<label class="Validform_label">收件人电话:</label>
						</td>
						<td class="value">
						    <input id="destPhone" name="destPhone" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.destPhone}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">收件人电话</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">国外城市:</label>
						</td>
						<td class="value">
						    <input id="destForeignCity" name="destForeignCity" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.destForeignCity}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">国外城市</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">国外邮编:</label>
						</td>
						<td class="value">
						    <input id="destCityPostcode" name="destCityPostcode" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.destCityPostcode}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">国外邮编</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">国外地址:</label>
						</td>
						<td class="value">
						    <input id="destForeignAddr" name="destForeignAddr" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.destForeignAddr}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">国外地址</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">快递单号:</label>
						</td>
						<td class="value">
						    <input id="localOrderNo" name="localOrderNo" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.localOrderNo}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">快递单号</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">包裹内容:</label>
						</td>
						<td class="value">
						    <input id="packageContent" name="packageContent" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.packageContent}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">包裹内容</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">保价:</label>
						</td>
						<td class="value">
						    <input id="packageValue" name="packageValue" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.packageValue}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">保价</label>
						</td>
					</tr>
					<tr>
						<td align="right"><label class="Validform_label">运输类型:</label>
						</td>
						<td class="value">
						<t:dictSelect id="transferType"
								field="transferType" typeGroupCode="trans_type"  
								defaultVal="${smpWeixinOrderPage.transferType }"
								hasLabel="false">
						</t:dictSelect>
						<span class="Validform_checktip"></span>  
						</td>
					</tr>
				 	<tr>
						<td align="right"><label class="Validform_label">订单状态:</label>
						</td>
						<td class="value">
						<t:dictSelect id="orderState"
								field="orderState" typeGroupCode="ord_stat"  
								defaultVal="${smpWeixinOrderPage.orderState }"
								hasLabel="false">
						</t:dictSelect>
						<span class="Validform_checktip"></span>  
						</td>
					</tr>
				   <tr>
						<td align="right">
							<label class="Validform_label">备注:</label>
						</td>
						<td class="value">
						    <input id="remark" name="remark" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.remark}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备注</label>
						</td>
					</tr>
					<c:if test="${smpWeixinOrderPage.orderState =='12' }">
					<tr>
						<td align="right">
							<label class="Validform_label">退单单号:</label>
						</td>
						<td class="value">
						    <input id="backLocalNo" name="backLocalNo" type="text" style="width: 150px" class="inputxt" 
						     	  disabled   value='${smpWeixinOrderPage.backLocalNo}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">退单单号</label>
						</td>
					</tr>
					</c:if>
		</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/guanjia/account/weixinAccount.js"></script>		