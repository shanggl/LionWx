package weixin.smp.order.controller;

import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import me.chanjar.weixin.common.api.WxConsts;
import me.chanjar.weixin.common.bean.WxJsapiSignature;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.result.WxMpOAuth2AccessToken;
import me.chanjar.weixin.mp.bean.result.WxMpUser;

import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.constant.Globals;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import weixin.smp.addr.dest.entity.SmpAddressDestEntity;
import weixin.smp.addr.dest.service.SmpAddressDestServiceI;
import weixin.smp.addr.from.controller.SmpAddressSrcController;
import weixin.smp.addr.from.entity.SmpAddressSrcEntity;
import weixin.smp.addr.from.service.SmpAddressSrcServiceI;
import weixin.smp.base.controller.WxBaseController;
import weixin.smp.order.entity.SmpWeixinOrderEntity;
import weixin.smp.order.service.SmpWeixinOrderServiceI;



/**   
 * @Title: Controller
 * @Description: 微信用户中心,微信客户端用
 * @author shanggl
 * @date 2017-08-14 23:15:58
 * @version V1.0   
 *
 */
@Scope("session")
@Controller
@RequestMapping("/smp/wxuserorder")
public class SmpWxUserOrderController extends WxBaseController    {

	private static final Logger logger = Logger.getLogger(SmpWxUserOrderController.class);
	private ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");

	
	@Autowired
	private SmpAddressSrcServiceI smpAddressSrcService;
	@Autowired
	private SmpAddressDestServiceI smpAddressDestService;
	
	@Autowired
	private SmpWeixinOrderServiceI smpWeixinOrderService;
	
	private String message;
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * OAuth2.0 用户中心主页
	 * Oauth2 页面登录，之前设置button 的url 为//		wxMpService.oauth2buildAuthorizationUrl(WxConsts.OAUTH2_SCOPE_USER_INFO, null)
	 * 测试地址: https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx11db1156deda715d&redirect_uri=${RESPONSE_URI}&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect
	 * 默认URI /lionwx/smp/wxusercenter.do?index 
	 * URI　需要被UrlEncode之后，并且需要在　网页登录授权部分设置域名　
	 */
    @RequestMapping(params="index")
	public ModelAndView index(HttpServletRequest request) {
		String code=request.getParameter("code");
		logger.debug("oAuth2.0 code:"+code);
		String lang=request.getParameter("lang"); 
		if(lang==null){
			lang="cn";
		}
		try{
			WxMpUser wxuser=(WxMpUser)request.getSession().getAttribute("WXMPUSER");
			if(wxuser==null){
			 //改成共用方法，获取用户信息
				wxuser=this.getWxMpUserViaOAuth(code);
  				request.getSession().setAttribute("WXMPUSER", wxuser);
 			} 
			ModelAndView mv=new ModelAndView();
			if(lang.equals("ru")){
				mv.setViewName("weixin/smp/wxorder/ru_index");
			}else{
				mv.setViewName("weixin/smp/wxorder/cn_index");
			}
			mv.addObject("wxmpuser",wxuser);
				
				return mv;
			}catch(Exception e){
				//TODO:add exception 
				e.printStackTrace();
				throw new BusinessException(e.getMessage());
			}
	 
		
	}
    
    @RequestMapping(params="myorder")
  	public ModelAndView OrderList(HttpServletRequest request) {
  		String lang=request.getParameter("lang"); 
  		if(lang==null){
  			lang="cn";
  		}
  		try{
  			WxMpUser wxuser=(WxMpUser)request.getSession().getAttribute("WXMPUSER");
  			if(wxuser==null){
  					//用户没有正常通过oAuth进来或者session丢失，自动redirect 到oAuth路径,重新登录
  				String code=request.getParameter("code");
  				wxuser=this.getWxMpUserViaOAuth(code);
  				request.getSession().setAttribute("WXMPUSER", wxuser);
  			}
  			ModelAndView mv=new ModelAndView();
  			if(lang.equals("ru")){
  				mv.setViewName("weixin/smp/wxorder/ru_myorder");
  			}else{
  				mv.setViewName("weixin/smp/wxorder/cn_myorder");
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
     * 快递单扫码查询
     * @param request
     * @return
     */
    @RequestMapping(params="qrsearch")
 	public ModelAndView qrSearch(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView("weixin/smp/wxorder/cn_qrsearch" );
		String lang=request.getParameter("lang");
		if(lang==null){
			lang="cn";
		} 
    	try{
    		//签名的URL必须和请求的URL一模一样
    		String url=bundler.getString("domain")+"/smp/wxuserorder.do?qrsearch&lang="+lang;
    		logger.debug("jsapi url:"+url);
    		WxJsapiSignature signature=this.wxMpService.createJsapiSignature(url);
    		mv.addObject("appId", signature.getAppId());
    		mv.addObject("timestamp", signature.getTimestamp());
    		mv.addObject("nonceStr", signature.getNonceStr());
    		mv.addObject("signature", signature.getSignature());   
    	}catch(Exception e){
    		//TODO:add　exception process
    	}
 	
     	return mv;
     }
    /**
     * 扫码快递单查询结果
     * 按照订单号查询
     * 先判断库内是否有，如果状态为国内运输，则跳转到快递100 显示查询
     * 如果已经支付发货，则跳转到cdek 查询 https://extcall.17track.net/zh-cn/single
     * @param request
     * @return
     */
    @RequestMapping(params="qrquery")
 	public ModelAndView qrquery(HttpServletRequest request) {
     	return new ModelAndView("weixin/smp/wxorder/cn_qrqueryresult");
     }
    /*
    * 我要下单说明页
    * @param request
    * @return
    */
   @RequestMapping(params="preCreateOrder")
	public ModelAndView preCreateOrder(HttpServletRequest request) {
	   String lang=request.getParameter("lang");
		if(lang==null){
			lang="cn";
		} 
		if(lang.equals("ru")){
			return new ModelAndView("weixin/smp/wxorder/ru_preorder");
		}else{
			return new ModelAndView("weixin/smp/wxorder/cn_preorder");
		}
    }
   /*
    * 我要下单说明页
    * @param request
    * @return
    */
   @RequestMapping(params="goCreateOrder")
	public ModelAndView goCreateOrder(HttpServletRequest request)  {
	    String lang=request.getParameter("lang");	
	    String code=request.getParameter("code");
		ModelAndView mv=new ModelAndView();
		String url=bundler.getString("domain")+"/smp/wxuserorder.do?goCreateOrder";

		try{
  			if(lang!=null){
  				url=url+"&lang="+lang;
  			}
			WxMpUser wxuser=(WxMpUser)request.getSession().getAttribute("WXMPUSER");
  			if(wxuser==null){
  					//用户没有正常通过oAuth进来或者session丢失，自动redirect 到oAuth路径,重新登录 
  				//这里存在一个问题，就是从新oauth回来之后，获取jsapi 的签名报错，应该是url 不正确
//  				if(code==null||code.isEmpty()){
//  					String redirectUrl=wxMpService.oauth2buildAuthorizationUrl(url,WxConsts.OAUTH2_SCOPE_USER_INFO, "state");
//  		  			logger.debug("----------------redirect url:"+redirectUrl);
//
//  					return  new ModelAndView("redirect:"+redirectUrl);
//  				}
  				
  				wxuser=this.getWxMpUserViaOAuth(code);
  				request.getSession().setAttribute("WXMPUSER", wxuser);
  			}


  			if(code!=null){
  				url=url+"&code="+code;
  			}
  			logger.debug("----------------jsapi url:"+url);
  			WxJsapiSignature signature=this.wxMpService.createJsapiSignature(url);
			mv.addObject("appId", signature.getAppId());
			mv.addObject("timestamp", signature.getTimestamp());
			mv.addObject("nonceStr", signature.getNonceStr());
			mv.addObject("signature", signature.getSignature()); 
			//寄件人列表
			List<SmpAddressSrcEntity> srcAddrList=this.smpAddressSrcService.findByProperty(SmpAddressSrcEntity.class,"openId",wxuser.getOpenId());
  			mv.addObject("SRCADDRLIST", srcAddrList);
			
			//收件人列表
			List<SmpAddressDestEntity> destAddrList=this.smpAddressDestService.findByProperty(SmpAddressDestEntity.class,"openId",wxuser.getOpenId());
  			mv.addObject("DESTADDRLIST", destAddrList);
			
		}catch(Exception e){
			//TODO:add exception process 
		}
		if(lang==null){
			lang="cn";
		}
		if(lang.equals("ru")){
			mv.setViewName("weixin/smp/wxorder/ru_createorder");
		}else{
			mv.setViewName("weixin/smp/wxorder/cn_createorder");
		}
		return mv;
    }
	/**
	 * 添加微信快递订单
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAddWxOrder")
	@ResponseBody
	public AjaxJson doAddWxOrder(SmpWeixinOrderEntity smpWeixinOrder, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "微信快递订单添加成功";
		try{
			if(smpWeixinOrder.getCreateDate()==null){
				smpWeixinOrder.setCreateDate(new Date());
				smpWeixinOrder.setUpdateDate(new Date());
  			}
			WxMpUser wxuser=(WxMpUser)request.getSession().getAttribute("WXMPUSER");

			smpWeixinOrder.setOpenId(wxuser.getOpenId());
			smpWeixinOrder.setNackName(wxuser.getNickname());
			smpWeixinOrder.setOrderState(1);//默认仓库待收件
			smpWeixinOrderService.save(smpWeixinOrder);
			j.setSuccess(true);
 		}catch(Exception e){
			e.printStackTrace();
			message = "微信快递订单添加失败";
			j.setSuccess(false);
 		}
		j.setMsg(message);
		return j;
	}
 
}
