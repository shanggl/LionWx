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
   <t:dgCol title="用户昵称"  field="nackName"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="寄件人名"  field="senderName"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="寄件人电话"  field="senderPhone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收件人姓名"  field="destName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收件人电话"  field="destPhone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国外城市"  field="destForeignCity"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="国外地址"  field="destForeignAddr"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国内订单号"  field="localOrderNo"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="包裹内容"  field="packageContent"  hidden="true"  queryMode="single"  width="256"></t:dgCol>
   <t:dgCol title="备注"  field="remark"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="保价CNY"  field="packageValue"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="运输类型"  field="transferType"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="订单状态"  field="orderState"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="暂停时原状态"  field="bakStat"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国外邮编"  field="destCityPostcode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="smpWeixinOrderController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="smpWeixinOrderController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="smpWeixinOrderController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="smpWeixinOrderController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   	<t:dgToolBar title="订单取消" icon="edit"  funname="orderCancel" ></t:dgToolBar>
   	<t:dgToolBar title="暂停｜继续" icon="pictures"  funname="orderPause" ></t:dgToolBar>
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
 </script>