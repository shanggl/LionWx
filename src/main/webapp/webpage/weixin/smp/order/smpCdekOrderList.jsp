<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="smpCdekOrderList" checkbox="true" fitColumns="false" title="CDEK订单信息" 
  actionUrl="smpCdekOrderController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="微信订单id"  field="weixinOrderId"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="CDEK订单号"  field="orderNo"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="跟踪条码"  field="barCode"  hidden="true"  query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="长度"  field="packageLength"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="高度"  field="packageHeigth"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="宽度"  field="packageWidth"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="重量"  field="packageWeigth"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国外收件人"  field="destName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国外城市"  field="destCity"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国外邮编"  field="destPostCode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国外地址"  field="destAddr"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="备注"  field="comment"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="订单状态"  field="ordStat" dictionary="cdek_stat" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="邮寄内容"  field="packageContent"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="运输方式"  field="transferType" dictionary="trans_type" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="运费CNY"  field="serviceCharge"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="额外增值服务费CNY"  field="additionalServcieCharge"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="保价CNY"  field="insurance"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="减免费用"  field="discountFee"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="减免原因"  field="discountRemark"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="总费用"  field="totalFee"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   
   <t:dgDelOpt title="作废" url="smpCdekOrderController.do?doDel&id={id}" />
   <t:dgOpenOpt title="查看微信订单"   url="smpWeixinOrderController.do?goUpdate&id={weixinOrderId}" openModel="OpenTab"/>
   
   <t:dgToolBar title="出库" icon="icon-putout"  funname="outBoundWareHouse"  ></t:dgToolBar>
   	<t:dgToolBar title="手动签收" icon="icon-edit"  funname="outBoundWareHouse"  ></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="smpCdekOrderController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="smpCdekOrderController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls" ></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
    	
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/smp/order/smpCdekOrderList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 	//自定义按钮-sql增强-发起支付
 	function doAskPay(title,url,id){
 		var rowData = $('#'+id).datagrid('getSelected');
		if (!rowData) {
			tip('请选择发起支付项目');
			return;
		}
		url = url+"&id="+rowData['id'];
 		createdialog('确认 ', '确定'+title+'吗 ?', url,gridname);
 	}
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'smpCdekOrderController.do?upload', "smpCdekOrderList");
}

//导出
function ExportXls() {
	JeecgExcelExport("smpCdekOrderController.do?exportXls","smpCdekOrderList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("smpCdekOrderController.do?exportXlsByT","smpCdekOrderList");
}
 </script>