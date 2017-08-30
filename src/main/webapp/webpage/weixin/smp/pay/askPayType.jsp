<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<SCRIPT type=text/javascript src="plug-in/clipboard/ZeroClipboard.js"></SCRIPT>
<t:base type="jquery,easyui,jqueryui-sortable,tools"></t:base>
<div>
	<t:dictSelect id="transferType" type="radio"
			field="payType" typeGroupCode="pay_type"  defaultVal="1"
 			hasLabel="false">
	</t:dictSelect>
</div>
<SCRIPT type="text/javascript">
 function getPayType(){
	var payType;
	$("[name='payType']").each(function(){
		if($(this).attr("checked")){
			payType = $(this).val();
		}
	});
	return payType;
 }
 </SCRIPT>