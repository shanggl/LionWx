<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>现金/当面扫码支付</title>
    <t:base type="jquery,easyui,tools"></t:base>
     <script type="text/javascript">
        //编写自定义JS代码
        function beforeSubmit(){
            $.messager.confirm("确认到帐","确定现金／扫码支付已经到帐?",function () {

                $.ajax({
                    type:'POST',
                    url:'smpPayCashJnlController.do?doAdd',
                    data:$("#cashPayForm").serialize(),
                    timeout:5000,
                    success:function(rsp){
                        /*返回的是普通字符串*/
                        msg=$.parseJSON(rsp);
                        if(msg.success){
                            tip('操作成功');
                        } else {
                           tip("操作失败，信息:"+msg.msg);
                        }
                    },
                    error:function(xhr,type){tip("保存寄件人信息失败");}
                });


                }) ;

        }

        function cancel(){
            $.dialog.close(this)
        }

    </script>
</head>
<body>
<t:formvalid formid="cashPayForm" dialog="true" usePlugin="password" layout="table" action="" tiptype="1">
<table style="width:800px;" cellpadding="0" cellspacing="1" class="formtable">
    <input type="hidden" name="weixinOrderId" value="${wxOrder.id}"/>
    <input type="hidden" name="payType" value="${payType}"/>
    <input type="hidden" name="feeType" value="CNY"/>
    　<tr>
    <td align="right">
        <label class="Validform_label">总费用(单位:分 CNY)</label>
    </td>
    <td class="value">
        <input id="totalFee" name="totalFee" datatype="money"  style="width: 100px" class="inputxt" value="${cdekOrder.totalFee}"/>
        <span class="Validform_checktip">总费用，大于０的数字，单位分</span>
        <label class="Validform_label" style="display: none;">总费用</label>
    </td>
    </tr>

    <tr>
        <td align="right">
            <label class="Validform_label">备注</label>
        </td>
        <td class="value">
            <textarea name="remark" id="remark" cols="30" rows="10"></textarea>
            <span class="Validform_checktip"></span>
            <label class="Validform_label" style="display: none;">备注</label>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label class="Validform_label">附加信息</label>
        </td>
        <td class="value">
            <textarea name="sceneInfo" id="sceneInfo" cols="30" rows="10"></textarea>
            <span class="Validform_checktip"></span>
            <label class="Validform_label" style="display: none;">附加信息</label>
        </td>
    </tr>

</table>
</t:formvalid>
<div>
    <a href="#" class="easyui-linkbutton l-btn" iconcls="icon-edit" onclick="beforeSubmit()">
        <span > 确认保存</span>
     </a>
    <a href="#" class="easyui-linkbutton l-btn" iconcls="icon-cancel" onclick="javascript:cancel();">
             <span>取消</span>
     </a>
</div>
</body>
</html>
