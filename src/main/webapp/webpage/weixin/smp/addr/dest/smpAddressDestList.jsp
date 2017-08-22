<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="smpAddressDestList" checkbox="true" fitColumns="false" title="小包收件人信息" actionUrl="smpAddressDestController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single" query="true"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="用户openid"  field="openId"  hidden="fasle"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收件人电话"  field="destPhone"  hidden="true"  queryMode="single"  query="true" width="120"></t:dgCol>
   <t:dgCol title="收件人姓名"  field="destName"  hidden="true"  queryMode="single"  query="true" width="120"></t:dgCol>
   <t:dgCol title="国外收件人城市"  field="destForeignCity"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国外收件人地址"  field="destForeiginAddr"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title=" 国外城市邮编"  field="destCityPostcode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="smpAddressDestController.do?doDel&id={id}" />
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/smp/dest/smpAddressDestList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
  
 </script>