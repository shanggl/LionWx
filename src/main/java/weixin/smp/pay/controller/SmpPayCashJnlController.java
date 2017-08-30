package weixin.smp.pay.controller;
import weixin.smp.order.entity.SmpCdekOrderEntity;
import weixin.smp.order.entity.SmpWeixinOrderEntity;
import weixin.smp.order.service.SmpCdekOrderServiceI;
import weixin.smp.order.service.SmpWeixinOrderServiceI;
import weixin.smp.pay.entity.SmpPayCashJnlEntity;
import weixin.smp.pay.service.SmpPayCashJnlServiceI;

import java.util.Date;
import java.util.List;
import java.text.SimpleDateFormat;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSDepart;
import org.jeecgframework.web.system.service.SystemService;
import org.jeecgframework.core.util.MyBeanUtils;

import java.io.OutputStream;

import org.jeecgframework.core.util.BrowserUtils;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.jeecgframework.core.util.ResourceUtil;

import java.io.IOException;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.Map;

import org.jeecgframework.core.util.ExceptionUtil;



/**   
 * @Title: Controller
 * @Description: 当面支付流水记录表
 * @author onlineGenerator
 * @date 2017-08-29 13:33:16
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/smpPayCashJnlController")
public class SmpPayCashJnlController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(SmpPayCashJnlController.class);

	@Autowired
	private SmpPayCashJnlServiceI smpPayCashJnlService;
	@Autowired
    private SmpWeixinOrderServiceI smpWeixinOrderService;

	@Autowired
	private SmpCdekOrderServiceI smpCdekOrderService;
	@Autowired
	private SystemService systemService;
	private String message;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	/**
	 * 当面支付流水记录表列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "smpPayCashJnl")
	public ModelAndView smpPayCashJnl(HttpServletRequest request) {
		return new ModelAndView("weixin/smp/pay/smpPayCashJnlList");
	}

	/**
	 * easyui AJAX请求数据
	 * 
	 * @param request
	 * @param response
	 * @param dataGrid
	 * @param user
	 */

	@RequestMapping(params = "datagrid")
	public void datagrid(SmpPayCashJnlEntity smpPayCashJnl,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(SmpPayCashJnlEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, smpPayCashJnl, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.smpPayCashJnlService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除当面支付流水记录表
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(SmpPayCashJnlEntity smpPayCashJnl, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		smpPayCashJnl = systemService.getEntity(SmpPayCashJnlEntity.class, smpPayCashJnl.getId());
		message = "当面支付流水记录表删除成功";
		try{
			smpPayCashJnlService.delete(smpPayCashJnl);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "当面支付流水记录表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除当面支付流水记录表
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "当面支付流水记录表删除成功";
		try{
			for(String id:ids.split(",")){
				SmpPayCashJnlEntity smpPayCashJnl = systemService.getEntity(SmpPayCashJnlEntity.class, 
				id
				);
				smpPayCashJnlService.delete(smpPayCashJnl);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "当面支付流水记录表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加当面支付流水记录表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(SmpPayCashJnlEntity smpPayCashJnl, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "当面/现金支付记录成功";
		try{
			List<SmpPayCashJnlEntity> smpPayJnlList=this.smpPayCashJnlService.findByProperty(SmpPayCashJnlEntity.class,"weixinOrderId",smpPayCashJnl.getWeixinOrderId());
message="支付成功，但是未全额支付";
			//计算总金额
			int totalCount=0;
			for(int i=0;i<smpPayJnlList.size();i++){
				SmpPayCashJnlEntity payRec=smpPayJnlList.get(i);

				if(payRec.getPayStat()==1){
					totalCount+=payRec.getTotalFee();
				}
			}
			List<SmpCdekOrderEntity> cdekOrderList=this.smpCdekOrderService.findByProperty(SmpCdekOrderEntity.class,"weixinOrderId",smpPayCashJnl.getWeixinOrderId());
			int needPay=0;
			for(int k=0;k<cdekOrderList.size();k++){
				SmpCdekOrderEntity cdekOrder=cdekOrderList.get(k);
				if (cdekOrder.getOrdStat() ==1) {
					needPay+=cdekOrder.getTotalFee();
				}
			}



			//算上现在的
			totalCount+=smpPayCashJnl.getTotalFee();
			logger.debug("PAY: totalFee "+totalCount);
			logger.debug("PAY: needpay "+needPay);

			if(totalCount>needPay){
				message="支付总金额超过需支付总额";
				j.setSuccess(false);
 			}else {
				smpPayCashJnl.setCreateDate(new Date());
				smpPayCashJnl.setCashReceiver(ResourceUtil.getSessionUserName().getUserName());
				smpPayCashJnl.setPayStat(1);//现金默认成功
				smpPayCashJnlService.save(smpPayCashJnl);
				//微信订单状态变更
                if(totalCount==needPay) {
                    SmpWeixinOrderEntity wxOrder = this.smpWeixinOrderService.getEntity(SmpWeixinOrderEntity.class, smpPayCashJnl.getWeixinOrderId());
                    wxOrder.setOrderState(4);//满额支付
                }else{
                    message="支付成功，但是未全额支付";
                }
				systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "当面/现金支付失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新当面支付流水记录表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(SmpPayCashJnlEntity smpPayCashJnl, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "当面支付流水记录表更新成功";
		SmpPayCashJnlEntity t = smpPayCashJnlService.get(SmpPayCashJnlEntity.class, smpPayCashJnl.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(smpPayCashJnl, t);
			smpPayCashJnlService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "当面支付流水记录表更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 当面支付流水记录表新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(SmpPayCashJnlEntity smpPayCashJnl, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(smpPayCashJnl.getId())) {
			smpPayCashJnl = smpPayCashJnlService.getEntity(SmpPayCashJnlEntity.class, smpPayCashJnl.getId());
			req.setAttribute("smpPayCashJnlPage", smpPayCashJnl);
		}
		return new ModelAndView("smp/pay/smpPayCashJnl-add");
	}


	/**
	 * 导出excel
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXls")
	public void exportXls(SmpPayCashJnlEntity smpPayCashJnl,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "当面支付流水记录表";
			// 根据浏览器进行转码，使其支持中文文件名
			if (BrowserUtils.isIE(request)) {
				response.setHeader(
						"content-disposition",
						"attachment;filename="
								+ java.net.URLEncoder.encode(codedFileName,
										"UTF-8") + ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"),
						"ISO8859-1");
				response.setHeader("content-disposition",
						"attachment;filename=" + newtitle + ".xls");
			}
			// 产生工作簿对象
			HSSFWorkbook workbook = null;
			CriteriaQuery cq = new CriteriaQuery(SmpPayCashJnlEntity.class, dataGrid);
			org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, smpPayCashJnl, request.getParameterMap());
			
			List<SmpPayCashJnlEntity> smpPayCashJnls = this.smpPayCashJnlService.getListByCriteriaQuery(cq,false);
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("当面支付流水记录表列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), SmpPayCashJnlEntity.class, smpPayCashJnls);
			fOut = response.getOutputStream();
			workbook.write(fOut);
		} catch (Exception e) {
		} finally {
			try {
				fOut.flush();
				fOut.close();
			} catch (IOException e) {

			}
		}
	}
	/**
	 * 导出excel 使模板
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXlsByT")
	public void exportXlsByT(SmpPayCashJnlEntity smpPayCashJnl,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "当面支付流水记录表";
			// 根据浏览器进行转码，使其支持中文文件名
			if (BrowserUtils.isIE(request)) {
				response.setHeader(
						"content-disposition",
						"attachment;filename="
								+ java.net.URLEncoder.encode(codedFileName,
										"UTF-8") + ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"),
						"ISO8859-1");
				response.setHeader("content-disposition",
						"attachment;filename=" + newtitle + ".xls");
			}
			// 产生工作簿对象
			HSSFWorkbook workbook = null;
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("当面支付流水记录表列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), SmpPayCashJnlEntity.class, null);
			fOut = response.getOutputStream();
			workbook.write(fOut);
		} catch (Exception e) {
		} finally {
			try {
				fOut.flush();
				fOut.close();
			} catch (IOException e) {

			}
		}
	}
	

}