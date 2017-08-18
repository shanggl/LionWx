package weixin.smp.addr.from.controller;
import weixin.smp.addr.from.entity.SmpAddressSrcEntity;
import weixin.smp.addr.from.service.SmpAddressSrcServiceI;

import java.util.List;
import java.util.Date;
import java.text.SimpleDateFormat;

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
 * @Description: 微信用户发货人信息
 * @author onlineGenerator
 * @date 2017-08-14 23:15:58
 * @version V1.0   
 */
@Scope("session")
@Controller
@RequestMapping("/smpAddressSrcController")
public class SmpAddressSrcController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(SmpAddressSrcController.class);

	@Autowired
	private SmpAddressSrcServiceI smpAddressSrcService;
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
	 * 微信用户发货人信息列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "smpAddressSrc")
	public ModelAndView smpAddressSrc(HttpServletRequest request) {
		return new ModelAndView("weixin/smp/addr/from/smpAddressSrcList");
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
	public void datagrid(SmpAddressSrcEntity smpAddressSrc,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(SmpAddressSrcEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, smpAddressSrc, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.smpAddressSrcService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除微信用户发货人信息
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(SmpAddressSrcEntity smpAddressSrc, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		smpAddressSrc = systemService.getEntity(SmpAddressSrcEntity.class, smpAddressSrc.getId());
		message = "微信用户发货人信息删除成功";
		try{
			smpAddressSrcService.delete(smpAddressSrc);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微信用户发货人信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除微信用户发货人信息
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "微信用户发货人信息删除成功";
		try{
			for(String id:ids.split(",")){
				SmpAddressSrcEntity smpAddressSrc = systemService.getEntity(SmpAddressSrcEntity.class, 
				id
				);
				smpAddressSrcService.delete(smpAddressSrc);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "微信用户发货人信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加微信用户发货人信息
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(SmpAddressSrcEntity smpAddressSrc, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微信用户发货人信息添加成功";
		try{
			if(smpAddressSrc.getCreateDate()==null){
				smpAddressSrc.setCreateDate(new Date());
			}
			smpAddressSrcService.save(smpAddressSrc);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "微信用户发货人信息添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新微信用户发货人信息
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(SmpAddressSrcEntity smpAddressSrc, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微信用户发货人信息更新成功";
		SmpAddressSrcEntity t = smpAddressSrcService.get(SmpAddressSrcEntity.class, smpAddressSrc.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(smpAddressSrc, t);
			smpAddressSrcService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "微信用户发货人信息更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 微信用户发货人信息新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(SmpAddressSrcEntity smpAddressSrc, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(smpAddressSrc.getId())) {
			smpAddressSrc = smpAddressSrcService.getEntity(SmpAddressSrcEntity.class, smpAddressSrc.getId());
			req.setAttribute("smpAddressSrcPage", smpAddressSrc);
		}
		return new ModelAndView("com/buss/addr/from/smpAddressSrc-add");
	}
	/**
	 * 微信用户发货人信息编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(SmpAddressSrcEntity smpAddressSrc, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(smpAddressSrc.getId())) {
			smpAddressSrc = smpAddressSrcService.getEntity(SmpAddressSrcEntity.class, smpAddressSrc.getId());
			req.setAttribute("smpAddressSrcPage", smpAddressSrc);
		}
		return new ModelAndView("weixin/smp/addr/from/smpAddressSrc-update");
	}
	
}
