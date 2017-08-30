package weixin.smp.order.controller;
import org.apache.http.HttpRequest;
import weixin.smp.order.entity.SmpCdekOrderEntity;
import weixin.smp.order.entity.SmpWeixinOrderEntity;
import weixin.smp.order.service.SmpCdekOrderServiceI;
import weixin.smp.order.service.SmpWeixinOrderServiceI;

import java.util.Date;
import java.util.List;

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
 * @Description: CDEK订单信息
 * @author onlineGenerator
 * @date 2017-08-28 18:36:42
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/smpCdekOrderController")
public class SmpCdekOrderController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(SmpCdekOrderController.class);

	@Autowired
	private SmpCdekOrderServiceI smpCdekOrderService;
	
	@Autowired
	private SmpWeixinOrderServiceI smpWeixinOrderService;
	
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
	 * CDEK订单信息列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "smpCdekOrder")
	public ModelAndView smpCdekOrder(HttpServletRequest request) {
		return new ModelAndView("weixin/smp/order/smpCdekOrderList");
	}

	/**
	 * easyui AJAX请求数据
	 * 
	 * @param request
	 * @param response
	 * @param dataGrid
	 */

	@RequestMapping(params = "datagrid")
	public void datagrid(SmpCdekOrderEntity smpCdekOrder,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(SmpCdekOrderEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, smpCdekOrder, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.smpCdekOrderService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除CDEK订单信息
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(SmpCdekOrderEntity smpCdekOrder, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		SmpCdekOrderEntity t = systemService.getEntity(SmpCdekOrderEntity.class, smpCdekOrder.getId());
		message = "CDEK订单信息删除成功";
		try{
//			smpCdekOrderService.delete(smpCdekOrder);
			MyBeanUtils.copyBeanNotNull2Bean(smpCdekOrder, t);
			t.setOrdStat(0);
			smpCdekOrderService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "CDEK订单信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	 

	/**
	 * 添加CDEK订单信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(SmpCdekOrderEntity smpCdekOrder, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "订单入库确认成功";
		try{
			smpCdekOrder.setOrdStat(1);//有效
			smpCdekOrder.setCreateDate(new Date()); 
			smpCdekOrder.setCreateName(ResourceUtil.getSessionUserName().getUserName());
 			
			boolean valid=true;
			List<SmpCdekOrderEntity> checkList=this.smpCdekOrderService.findByProperty(SmpCdekOrderEntity.class,"weixinOrderId",smpCdekOrder.getWeixinOrderId());
			if(checkList.size()>0){
				for(int i=0;i<checkList.size();i++){
					if(checkList.get(i).getOrdStat()==1){
						valid=false;
					}
				}
			}
			if(valid){
				smpCdekOrderService.save(smpCdekOrder);
				SmpWeixinOrderEntity wxOrder=this.smpWeixinOrderService.getEntity(SmpWeixinOrderEntity.class, smpCdekOrder.getWeixinOrderId());
				wxOrder.setOrderState(3);//如果需要单独做报价功能，则改为２
				this.smpWeixinOrderService.saveOrUpdate(wxOrder);
				systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
			}else{
				j.setSuccess(false);
				message="当前微信订单已经存在CDEK订单";
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "订单信息入库失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新CDEK订单信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(SmpCdekOrderEntity smpCdekOrder, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "CDEK订单信息更新成功";
		SmpCdekOrderEntity t = smpCdekOrderService.get(SmpCdekOrderEntity.class, smpCdekOrder.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(smpCdekOrder, t);
			smpCdekOrderService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "CDEK订单信息更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	


//	/**
//	 * CDEK订单信息新增页面跳转
//	 * 
//	 * @return
//	 */
//	@RequestMapping(params = "goAdd")
//	public ModelAndView goAdd(SmpCdekOrderEntity smpCdekOrder, HttpServletRequest req) {
//		if (StringUtil.isNotEmpty(smpCdekOrder.getId())) {
//			smpCdekOrder = smpCdekOrderService.getEntity(SmpCdekOrderEntity.class, smpCdekOrder.getId());
//			req.setAttribute("smpCdekOrderPage", smpCdekOrder);
//		}
//		return new ModelAndView("smp/order/smpCdekOrder-add");
//	}
	/**
	 * CDEK订单信息编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(SmpCdekOrderEntity smpCdekOrder, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(smpCdekOrder.getId())) {
			smpCdekOrder = smpCdekOrderService.getEntity(SmpCdekOrderEntity.class, smpCdekOrder.getId());
			req.setAttribute("smpCdekOrderPage", smpCdekOrder);
		}
		return new ModelAndView("weixin/smp/order/smpCdekOrder-update");
	}
	
//	/**
//	 * 导入功能跳转
//	 * 
//	 * @return
//	 */
//	@RequestMapping(params = "upload")
//	public ModelAndView upload(HttpServletRequest req) {
//		return new ModelAndView("weixin/smp/order/smpCdekOrderUpload");
//	}
//	
	/**
	 * 导出excel
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXls")
	public void exportXls(SmpCdekOrderEntity smpCdekOrder,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "CDEK订单信息";
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
			CriteriaQuery cq = new CriteriaQuery(SmpCdekOrderEntity.class, dataGrid);
			org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, smpCdekOrder, request.getParameterMap());
			
			List<SmpCdekOrderEntity> smpCdekOrders = this.smpCdekOrderService.getListByCriteriaQuery(cq,false);
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("CDEK订单信息列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), SmpCdekOrderEntity.class, smpCdekOrders);
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
	public void exportXlsByT(SmpCdekOrderEntity smpCdekOrder,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "CDEK订单信息";
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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("CDEK订单信息列表", "导出人:"+ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), SmpCdekOrderEntity.class, null);
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
	
	@SuppressWarnings("unchecked")
	@RequestMapping(params = "importExcel", method = RequestMethod.POST)
	@ResponseBody
	public AjaxJson importExcel(HttpServletRequest request, HttpServletResponse response) {
		AjaxJson j = new AjaxJson();
		
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
			MultipartFile file = entity.getValue();// 获取上传文件对象
			ImportParams params = new ImportParams();
			params.setTitleRows(2);
			params.setSecondTitleRows(1);
			params.setNeedSave(true);
			try {
				List<SmpCdekOrderEntity> listSmpCdekOrderEntitys = 
					(List<SmpCdekOrderEntity>)ExcelImportUtil.importExcelByIs(file.getInputStream(),SmpCdekOrderEntity.class,params);
				for (SmpCdekOrderEntity smpCdekOrder : listSmpCdekOrderEntitys) {
					smpCdekOrderService.save(smpCdekOrder);
				}
				j.setMsg("文件导入成功！");
			} catch (Exception e) {
				j.setMsg("文件导入失败！");
				logger.error(ExceptionUtil.getExceptionMessage(e));
			}finally{
				try {
					file.getInputStream().close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return j;
	}
	
	/**
	 * CDEK订单信息列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goCreateCdekOrder")
	public ModelAndView goCreateCdekOrder(SmpWeixinOrderEntity smpWeixinOrder,HttpServletRequest request) {
 		if(smpWeixinOrder.getId().isEmpty()){
			 throw new BusinessException("ERROR: CDEK-01 weixinOrder Id 不存在");
		}
		//重新读取
		SmpWeixinOrderEntity wxOrder=smpWeixinOrderService.getEntity(SmpWeixinOrderEntity.class, smpWeixinOrder.getId());
		if(wxOrder==null){
			 throw new BusinessException("ERROR: CDEK-02 weixin订单不存在");
		}
		if(wxOrder.getOrderState()!=1){
			 throw new BusinessException("ERROR: CDEK-03 weixin订单已经入库，无法重复确认"); 
		}
		List<SmpCdekOrderEntity> cdekOrderList=this.smpCdekOrderService.findByProperty(SmpCdekOrderEntity.class, "weixinOrderId", wxOrder.getId());
		if(cdekOrderList.size()>0){
			//暂时限制不允许存在多个ｃｄｅｋ订单
			 throw new BusinessException("ERROR: CDEK-04 此微信订单存在多条正常ＣＤＥＫ订单，无法重复确认");
		}
		ModelAndView mv=new ModelAndView("weixin/smp/order/smpCdekOrderAdd");
		mv.addObject("smpWeixinOrderPage",wxOrder);
		
		return mv ;
	}


	/**
	 * CDEK订单出库
	 * input:request,entity
	 * output :ModelAndView
	 * @param inCdekOrd
	 * @param  req
	 * @return
	 *
	 */


	@RequestMapping(params = "goOut")
	public ModelAndView goOutWareHouse(SmpCdekOrderEntity inCdekOrd,HttpServletRequest req){
		ModelAndView mv=new ModelAndView();
		try {
			SmpCdekOrderEntity cdekOrder = this.smpCdekOrderService.getEntity(SmpCdekOrderEntity.class, inCdekOrd.getId());
		/*
			订单出库检查规则：　
			微信状态为已支付待出库，ｃｄｅｋ订单状态必须是生效　补充cdek单号
		 */

			if (cdekOrder.getOrdStat()!=1){//1生效
				throw new BusinessException("ERROR CDEK-04 CDEK订单状态不正确");
			}
			SmpWeixinOrderEntity wxOrder=this.smpWeixinOrderService.getEntity(SmpWeixinOrderEntity.class,cdekOrder.getWeixinOrderId());
			if(wxOrder.getOrderState()!=4){//4支付待出库
				throw new BusinessException("ERROR CDEK-05 当前订单状态不是支付完成待出库，无法出库");
			}
			mv.addObject("smpCdekOrderPage",cdekOrder);
			mv.setViewName("weixin/smp/order/smpCdekOrder-update");

		}catch(Exception e){
			//throw BusinessException
			throw new BusinessException(e.getMessage());
		}
		return mv;
	}
	/**
	 *确认ＣＤＥＫ订单出库
	 *１、订单状态为支付待出库
	 *２、订单必须有效
	 *3、必须回填ｃｄｅｋ订单号
	 */
	@RequestMapping(params = "doOut",method = RequestMethod.POST)
	@ResponseBody
	public AjaxJson doOutWereHouse(SmpCdekOrderEntity inCdekOrd, HttpServletRequest req){
		AjaxJson j = new AjaxJson();
		message = "CDEK订单出库成功";
		SmpCdekOrderEntity t = smpCdekOrderService.get(SmpCdekOrderEntity.class, inCdekOrd.getId());
		try {
			if (t.getOrdStat()!=1){//1生效
				throw new BusinessException("ERROR CDEK-06 CDEK订单状态不正确");
			}
			if (inCdekOrd.getOrderNo().isEmpty()){//
				throw new BusinessException("ERROR CDEK-07 CDEK订单号不可为空");
			}

			SmpWeixinOrderEntity wxOrder=this.smpWeixinOrderService.getEntity(SmpWeixinOrderEntity.class,t.getWeixinOrderId());
			if(wxOrder.getOrderState()!=4){//4支付待出库
				throw new BusinessException("当前订单状态不是支付完成待出库，无法出库");
			}
			MyBeanUtils.copyBeanNotNull2Bean(inCdekOrd, t);
			smpCdekOrderService.saveOrUpdate(t);
			wxOrder.setOrderState(5);
			this.smpWeixinOrderService.saveOrUpdate(wxOrder);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "ERROR CDEK-08 CDEK订单出库失败";
		}
		j.setMsg(message);
		return j;
	}

	/**
	 *确认ＣＤＥＫ订单出库
	 *１、订单状态为支付待出库
	 *２、订单必须有效
	 *3、必须回填ｃｄｅｋ订单号
	 */
	@RequestMapping(params = "doSignEnd")
	@ResponseBody
	public AjaxJson doSignEnd(SmpCdekOrderEntity inCdekOrd, HttpServletRequest req){
		AjaxJson j = new AjaxJson();
		message = "CDEK订单签收成功";
		SmpCdekOrderEntity t = smpCdekOrderService.get(SmpCdekOrderEntity.class, inCdekOrd.getId());
		try {
			if (t.getOrdStat()!=1){//1生效
				throw new BusinessException("ERROR CDEK-09 CDEK订单状态不正确");
			}
			SmpWeixinOrderEntity wxOrder=this.smpWeixinOrderService.getEntity(SmpWeixinOrderEntity.class,t.getWeixinOrderId());
			if(wxOrder.getOrderState()!=5){//５运输途中
				throw new BusinessException("ERROR CDEK-10 当前订单状态不是　运输途中，无法签收");
			}
			MyBeanUtils.copyBeanNotNull2Bean(inCdekOrd, t);
			smpCdekOrderService.saveOrUpdate(t);
			wxOrder.setOrderState(6);
			this.smpWeixinOrderService.saveOrUpdate(wxOrder);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "ERROR CDEK-11 订单签收失败";
		}
		j.setMsg(message);
		return j;
	}
}
