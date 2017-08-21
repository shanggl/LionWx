package weixin.smp.addr.from.controller;

import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.result.WxMpUser;

import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

 
import weixin.smp.addr.from.entity.SmpAddressSrcEntity;
import weixin.smp.addr.from.service.SmpAddressSrcServiceI;
import weixin.smp.base.controller.WxBaseController;

 
/**
 * 用户地址簿　微信页面控制器
 * @author shanggl
 * 包含动作：
 * index          主页
 * createsrc　　　　　　创建发件人
 * viewsrc　　　　　　　　查看/发起删除 发件人
 * delsrc　　　　　　　　　删除发件人
 * createdest　　　　　创建收件人
 * viewdest　　　　　　　查看/发起删除 收件人
 * deldest　　　　　　　　删除收件人
 *　getsrc         订单创建中　查看/选择 收件人
 *　getdest        订单创建中　查看/选择 收件人
 */

@Scope("session")
@Controller
@RequestMapping("/smp/wxuseraddr")
public class SmpWxUserAddrController extends WxBaseController {
	private static final Logger logger = Logger.getLogger(SmpWxUserAddrController.class);
 
    private String message;
	@Autowired
	private SmpAddressSrcServiceI smpAddressSrcService;
	@Autowired
	private SystemService systemService;
    
    public void setMessage(String msg){
    	this.message=msg;
    }
    
    @RequestMapping(params="index")
	public ModelAndView Index(HttpServletRequest request) {
    	
    	String lang=request.getParameter("lang"); 
  		if(lang==null){
  			lang="cn";
  		}
  		try{
  			WxMpUser wxuser=(WxMpUser)request.getSession().getAttribute("WXMPUSER");
  			if(wxuser==null){
  					//用户没有正常通过oAuth进来或者session丢失，自动redirect 到oAuth路径,重新登录
   				String code=request.getParameter("code");//没有从其他地方登录或者已经丢失session
   				wxuser=this.getWxMpUserViaOAuth(code);
  				request.getSession().setAttribute("WXMPUSER", wxuser);
  			}
  			ModelAndView mv=new ModelAndView();
  			if(lang.equals("ru")){
  				mv.setViewName("weixin/smp/addr/ru_addr_index");
  			}else{
  				mv.setViewName("weixin/smp/addr/cn_addr_index");
  			}
  				mv.addObject("wxmpuser",wxuser);
   				return mv;
  			}catch(Exception e){
  				//TODO:add exception 
  				e.printStackTrace();
  				throw new BusinessException(e.getMessage());
  			} 
    }
    /**
     * 展示添加寄件人页面
     * @param request
     * @return
     */
    @RequestMapping(params="goCreateSrc")
	public ModelAndView goCerateSrc(HttpServletRequest request) {
    	
    	String lang=request.getParameter("lang"); 
  		if(lang==null){
  			lang="cn";
  		}
  		try{
  			WxMpUser wxuser=(WxMpUser)request.getSession().getAttribute("WXMPUSER");
  			if(wxuser==null){
  					//用户没有正常通过oAuth进来或者session丢失，自动redirect 到oAuth路径,重新登录
   				String code=request.getParameter("code");//没有从其他地方登录或者已经丢失session
   				wxuser=this.getWxMpUserViaOAuth(code);
  				request.getSession().setAttribute("WXMPUSER", wxuser);
  			}
  			ModelAndView mv=new ModelAndView();
  			if(lang.equals("ru")){
  				mv.setViewName("weixin/smp/addr/ru_addr_createsrc");
  			}else{
  				mv.setViewName("weixin/smp/addr/cn_addr_createsrc");
  			}
  				mv.addObject("wxmpuser",wxuser);
   				return mv;
  			}catch(Exception e){
  				//TODO:add exception 
  				e.printStackTrace();
  				throw new BusinessException(e.getMessage());
  			} 
    }
   
    /**
	 * 添加微信用户寄件人信息
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAddSrc")
	@ResponseBody
	public  AjaxJson doAddSrc(SmpAddressSrcEntity smpAddressSrc, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		String message = "微信用户发货人信息添加成功";
 		try{
			if(smpAddressSrc.getCreateDate()==null){
				smpAddressSrc.setCreateDate(new Date());
				smpAddressSrc.setUpdateDate(new Date());
			}
  			WxMpUser wxuser=(WxMpUser)request.getSession().getAttribute("WXMPUSER");

  			smpAddressSrc.setOpenId(wxuser.getOpenId());
  			smpAddressSrc.setCreateName(wxuser.getNickname());
  			
			smpAddressSrcService.save(smpAddressSrc);
			
		}catch(Exception e){
			e.printStackTrace();
 			message = "微信用户发货人信息添加失败";
 			j.setSuccess(false);
			//throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
    /**
     * 查看寄件人列表
     * @param request
     * @return
     */
    @RequestMapping(params="goViewSrc")
	public ModelAndView goViewSrc(HttpServletRequest request) {
    	
    	String lang=request.getParameter("lang"); 
  		if(lang==null){
  			lang="cn";
  		}
  		try{
  			WxMpUser wxuser=(WxMpUser)request.getSession().getAttribute("WXMPUSER");
  			if(wxuser==null){
  					//用户没有正常通过oAuth进来或者session丢失，自动redirect 到oAuth路径,重新登录
   				String code=request.getParameter("code");//没有从其他地方登录或者已经丢失session
   				wxuser=this.getWxMpUserViaOAuth(code);
  				request.getSession().setAttribute("WXMPUSER", wxuser);
  			} 
  			ModelAndView mv=new ModelAndView();
  			List<SmpAddressSrcEntity> srcAddrList=this.smpAddressSrcService.findByProperty(SmpAddressSrcEntity.class,"openId",wxuser.getOpenId());
  			mv.addObject("SRCADDRLIST", srcAddrList);
  			if(lang.equals("ru")){
  				mv.setViewName("weixin/smp/addr/ru_addr_viewsrc");
  			}else{
  				mv.setViewName("weixin/smp/addr/cn_addr_viewsrc");
  			}
  				mv.addObject("wxmpuser",wxuser);
   				return mv;
  			}catch(Exception e){
  				//TODO:add exception 
  				e.printStackTrace();
  				throw new BusinessException(e.getMessage());
  			} 
    }
    
    /**
     * 编辑寄件人页面
     * @param request
     * @return
     */
    @RequestMapping(params="goUpdateSrc")
	public ModelAndView goUpdateSrc(SmpAddressSrcEntity smpAddressSrc,HttpServletRequest request) {
    	
    	String lang=request.getParameter("lang"); 
  		if(lang==null){
  			lang="cn";
  		}
  		try{
  			WxMpUser wxuser=(WxMpUser)request.getSession().getAttribute("WXMPUSER");
  			if(wxuser==null){
  					//用户没有正常通过oAuth进来或者session丢失，自动redirect 到oAuth路径,重新登录
   				String code=request.getParameter("code");//没有从其他地方登录或者已经丢失session
   				wxuser=this.getWxMpUserViaOAuth(code);
  				request.getSession().setAttribute("WXMPUSER", wxuser);
  			}
  			
  			ModelAndView mv=new ModelAndView(); 
  			SmpAddressSrcEntity srcAddr=this.smpAddressSrcService.get(SmpAddressSrcEntity.class,smpAddressSrc.getId());
  			
  			mv.addObject("SENDER", srcAddr);
  			if(lang.equals("ru")){
  				mv.setViewName("weixin/smp/addr/ru_addr_editsrc");
  			}else{
  				mv.setViewName("weixin/smp/addr/cn_addr_editsrc");
  			}
  				mv.addObject("wxmpuser",wxuser);
   				return mv;
  			}catch(Exception e){
  				//TODO:add exception 
  				e.printStackTrace();
  				throw new BusinessException(e.getMessage());
  			} 
    }
    
    
	
    /**
	 * 更新微信用户发货人信息
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdateSrc")
	@ResponseBody
	public AjaxJson doUpdate(SmpAddressSrcEntity smpAddressSrc, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微信用户发货人信息更新成功";
		/*如果更加严谨一点的话，需要同时按照openid 和 id 取，防止手工改别人的联系方式*/
		SmpAddressSrcEntity t = smpAddressSrcService.get(SmpAddressSrcEntity.class, smpAddressSrc.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(smpAddressSrc, t);
			smpAddressSrcService.saveOrUpdate(t);
			//systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "微信用户发货人信息更新失败";
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 删除微信用户发货人信息
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDelSrc")
	@ResponseBody
	public AjaxJson doDel(SmpAddressSrcEntity smpAddressSrc, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		/*如果更加严谨一点的话，需要同时按照openid 和 id 取，防止手工改别人的联系方式*/
		smpAddressSrc = systemService.getEntity(SmpAddressSrcEntity.class, smpAddressSrc.getId());
		message = "微信用户发货人信息删除成功";
		try{
			smpAddressSrcService.delete(smpAddressSrc);
		}catch(Exception e){
			e.printStackTrace();
			message = "微信用户发货人信息删除失败";
		}
		j.setMsg(message);
		return j;
	}
	
	
}
