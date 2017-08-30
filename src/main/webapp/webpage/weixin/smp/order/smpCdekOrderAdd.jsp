<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>订单入库承重</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  function calcTotalFee(){


      var insurance=$("#insurance").val();
      var additionalServcieCharge=$("#additionalServcieCharge").val();
      var serviceCharge=$("#serviceCharge").val();
      var discountFee=$("#discountFee").val();




      var totalFee=Number(insurance/10) + Number(additionalServcieCharge)+ Number(serviceCharge) - Number(discountFee);

       $("#totalFee").val(totalFee);

	
  }
   
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="smpCdekOrderController.do?doAdd" tiptype="1">
  	<table style="width:800px;" cellpadding="0" cellspacing="1" class="formtable">
  					<input type="hidden" name="weixinOrderId" value="${smpWeixinOrderPage.id}"/>
  					　<tr>
						<td align="right">
							<label class="Validform_label">长度:单位cm</label>
						</td>
						<td class="value">
						    <input id="packageLength" name="packageLength" datatype="d"  style="width: 100px" class="inputxt" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">长度：单位cm</label>
						</td>
					</tr>
					　<tr>
						<td align="right">
							<label class="Validform_label">宽度:单位cm</label>
						</td>
						<td class="value">
						    <input id="packageWidth" name="packageWidth" datatype="d"  style="width:100px" class="inputxt" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">宽度：单位cm</label>
						</td>
					</tr>
					　<tr>
						<td align="right">
							<label class="Validform_label">高度：单位cm</label>
						</td>
						<td class="value">
						    <input id="packageHeigth" name="packageHeigth" datatype="d"  style="width: 100px" class="inputxt" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">高度：单位cm</label>
						</td>
					</tr>
					　<tr>
						<td align="right">
							<label class="Validform_label">重量:kg</label>
						</td>
						<td class="value">
						    <input id="packageWeigth" name="packageWeigth" datatype="d"  style="width: 100px" class="inputxt" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">重量:kg</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">保价:单位：分</label>
						</td>
						<td class="value">
						    <input id="insurance" name="insurance" datatype="d" style="width: 150px" class="inputxt" onchange="calcTotalFee()"
						     	     value='${smpWeixinOrderPage.packageValue*100}'  />
							<span class="Validform_checktip">保价×保价费率(?10%)</span>
							<label class="Validform_label" style="display: none;">保价</label>
						</td>
					</tr>
					　<tr>
						<td align="right">
							<label class="Validform_label">增值服务费用:CNY　单位：分</label>
						</td>
						<td class="value">
						    <input id="additionalServcieCharge" name="additionalServcieCharge" datatype="d"  style="width: 100px"
						    class="inputxt" value="0"  onchange="calcTotalFee()" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">增值服务费用:CNY</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">运费:CNY 单位：分</label>
						</td>
						<td class="value">
						    <input id="serviceCharge" name="serviceCharge" datatype="d"  style="width: 150px" class="inputxt"
						     onchange="calcTotalFee()"/>
							<span class="Validform_checktip">请按照货物的长、宽、高、重、目的地信息录入运费（后期改成自动计算)</span>
							<label class="Validform_label" style="display: none;">运费:CNY</label>
						</td>
					</tr>
					 <tr>
						<td align="right">
							<label class="Validform_label">折扣:CNY　单位：分</label>
						</td>
						<td class="value">
						    <input id="discountFee" name="discountFee"  style="width: 150px" class="inputxt"  value="0"
						     onchange="calcTotalFee()"　datatype="d" />
							<span class="Validform_checktip">输入折扣</span>
							<label class="Validform_label" style="display: none;">折扣:CNY</label>
						</td>
					</tr>
					 <tr>
						<td align="right">
							<label class="Validform_label">折扣原因</label>
						</td>
						<td class="value">
						    <input id="discountRemark" name="discountRemark" type="text"  style="width: 150px" class="inputxt"/>
 							<span class="Validform_checktip">减免折扣费用原因</span>
							<label class="Validform_label" style="display: none;">减免折扣费用原因</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">总费用:CNY　单位：分</label>
						</td>
						<td class="value">
						    <input id="totalFee" name="totalFee" datatype="d" style="width: 150px" class="inputxt"  />
							<span class="Validform_checktip">总费用:＝保价×保价费率＋增值业务费＋运费-折扣费用</span>
							<label class="Validform_label" style="display: none;">总费用:单位CNY </label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">追踪条码</label>
						</td>
						<td class="value">
						    <input id="barCode" name="barCode" type="text" style="width: 150px" class="inputxt" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">追踪条码（备用）</label>
						</td>
					</tr>
					<tr><hr><p>收件信息</p></hr></tr>
				　　　<tr>
						<td align="right">
							<label class="Validform_label">收件人姓名:</label>
						</td>
						<td class="value">
						    <input id="destName" name="destName" type="text" style="width: 150px" class="inputxt" 
						     	     value='${smpWeixinOrderPage.destName}'>
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
						     	     value='${smpWeixinOrderPage.destPhone}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">收件人电话</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">国外城市:</label>
						</td>
						<td class="value">
						    <input id="destCity" name="destCity" type="text" style="width: 150px" class="inputxt" 
						     	     value='${smpWeixinOrderPage.destForeignCity}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">国外城市</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">国外邮编:</label>
						</td>
						<td class="value">
						    <input id="destPostCode" name="destPostCode" type="text" style="width: 150px" class="inputxt" 
						     	     value='${smpWeixinOrderPage.destCityPostcode}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">国外邮编</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">国外地址:</label>
						</td>
						<td class="value">
						    <input id="destAddr" name="destAddr" type="text" style="width: 150px" class="inputxt" 
						     	     value='${smpWeixinOrderPage.destForeignAddr}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">国外地址</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">包裹内容:</label>
						</td>
						<td class="value">
						    <input id="packageContent" name="packageContent" type="text" style="width: 150px" class="inputxt" 
						     	     value='${smpWeixinOrderPage.packageContent}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">包裹内容</label>
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
						<td align="right">
							<label class="Validform_label">备注:</label>
						</td>
						<td class="value">
						    <input id="comment" name="comment" type="text" style="width: 150px" class="inputxt" 
						     	    value='${smpWeixinOrderPage.remark}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备注</label>
						</td>
					</tr> 
  
  </t:formvalid>
 </body>
 <script type="text/javascript" src="webpage/weixin/smp/order/smpCdekOrderAdd.js"/>
 </html>
  