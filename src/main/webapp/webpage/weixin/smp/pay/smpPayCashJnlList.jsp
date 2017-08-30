<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="smpPayCashJnlList" checkbox="true" fitColumns="false" title="当面支付流水记录表" actionUrl="smpPayCashJnlController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="微信订单id"  field="weixinOrderId"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收款方式"  field="payType"  hidden="true" dictionary="pay_type" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收款人"  field="cashReceiver"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="金额"  field="totalFee"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="币种"  field="feeType"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="支付状态"  field="payStat" dictionary="pay_stat" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="备注"  field="remark"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="门店"  field="sceneInfo"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
    <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgOpenOpt title="查看微信订单"   url="smpWeixinOrderController.do?goUpdate&id={weixinOrderId}" openModel="OpenTab"/>

  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/smp/pay/smpPayCashJnlList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
  
//导出
function ExportXls() {
	JeecgExcelExport("smpPayCashJnlController.do?exportXls","smpPayCashJnlList");
} 
 </script>