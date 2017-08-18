<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="smpAddressSrcList" checkbox="true" fitColumns="true" title="微信用户发货人信息" actionUrl="smpAddressSrcController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single" query="true" width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="发件人姓名"  field="senderName"  hidden="true"  queryMode="single" query="true" width="120"></t:dgCol>
   <t:dgCol title="发件人电话"  field="senderPhone"  hidden="true"  queryMode="single"  query="true"  width="120"></t:dgCol>
   <t:dgCol title="用户openid"  field="openId"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="smpAddressSrcController.do?doDel&id={id}" />
 

 
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/smp/from/smpAddressSrcList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'smpAddressSrcController.do?upload', "smpAddressSrcList");
}

//导出
function ExportXls() {
	JeecgExcelExport("smpAddressSrcController.do?exportXls","smpAddressSrcList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("smpAddressSrcController.do?exportXlsByT","smpAddressSrcList");
}

 
 </script>
 
  