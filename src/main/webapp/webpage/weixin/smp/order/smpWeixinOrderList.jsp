<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="smpWeixinOrderList" checkbox="true" fitColumns="false" title="微信快递订单" actionUrl="smpWeixinOrderController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="用户open_id"  field="openId"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="微信用户"  field="nackName"  hidden="true" query="true" queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="寄件人名"  field="senderName"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="寄件人电话"  field="senderPhone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收件人姓名"  field="destName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收件人电话"  field="destPhone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国外城市"  field="destForeignCity"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="国外邮编"  field="destCityPostcode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国外地址"  field="destForeignAddr"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国内订单号"  field="localOrderNo"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="包裹内容"  field="packageContent"  hidden="true"  queryMode="single"  width="256"></t:dgCol>
   <t:dgCol title="备注"  field="remark"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="保价CNY"  field="packageValue"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="运输类型"  field="transferType" dictionary="trans_type" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="订单状态"  field="orderState" dictionary="ord_stat" hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="暂停时原状态"  field="bakStat"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
　　 <t:dgConfOpt title="存疑" exp="orderState#eq#1" url="smpWeixinOrderController.do?doPause&id={id}" message="确定将订单置为存疑？" /> 
　　 <t:dgConfOpt title="正常" exp="orderState#eq#9" url="smpWeixinOrderController.do?doNormal&id={id}" message="确定将订单恢复" />

   <t:dgToolBar title="到仓称重" icon="icon-edit" funname="update" url="smpCdekOrderController.do?goCreateCdekOrder"/>
   <t:dgToolBar title="订单收银" icon="icon-add" funname="doPayWeixinOrder"  ></t:dgToolBar>
   <t:dgToolBar title="快件退回" icon="icon-cancel" url="smpWeixinOrderController.do?doNormal"  funname="rejectPackage" />
   <t:dgToolBar title="查看" icon="icon-search" url="smpWeixinOrderController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
　  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/smp/order/smpWeixinOrderList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'smpWeixinOrderController.do?upload', "smpWeixinOrderList");
}

//导出
function ExportXls() {
	JeecgExcelExport("smpWeixinOrderController.do?exportXls","smpWeixinOrderList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("smpWeixinOrderController.do?exportXlsByT","smpWeixinOrderList");
}

function doPayWeixinOrder(){
	
	var checked=getSelectRows(); 
	if(checked.length>1 || checked.length==0){
		alertTip("请选择一条微信订单", "请选择一条记录");
		return false;
	}
	var id=checked[0]["id"];
 	var orderState=checked[0]["orderState"];
 	if(orderState!=3){
	    alertTip("当前订单状态不允许支付","订单状态");
	    return false;
    }
	
	
	var url = "url:smpPayController.do?goPayType";
	$.dialog({
		content: url,
		drag :false,
		lock : true,
		title:'选择支付方式',
		opacity : 0.3,
		width:300,
		height:400,
		cache:false,
	    cancelVal: '关闭',
	    cancel: function(){},
	    button : [{
	    	id : "okBtn",
	    	name : "确定",
	    	callback : function () {
	    		iframe = this.iframe.contentWindow;
	    		var payType = iframe.getPayType();
	    		if(payType){
					var submitUrl = 'smpPayController.do?goPay&id='+id+'&payType='+payType;
					openwindow('支付请求',submitUrl);
			    }else{
					alert('请选择支付方式');
					return false;
				}
	    	}
	    }]
	}).zindex();
}

</script>