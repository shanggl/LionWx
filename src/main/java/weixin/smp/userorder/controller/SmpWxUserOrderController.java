package weixin.smp.userorder.controller;

import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import me.chanjar.weixin.common.api.WxConsts;
import me.chanjar.weixin.common.bean.WxJsapiSignature;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.result.WxMpOAuth2AccessToken;
import me.chanjar.weixin.mp.bean.result.WxMpUser;

import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import weixin.smp.addr.from.controller.SmpAddressSrcController;
import weixin.smp.base.controller.WxBaseController;



/**   
 * @Title: Controller
 * @Description: 微信用户中心
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
				mv.setViewName("weixin/smp/order/ru_index");
			}else{
				mv.setViewName("weixin/smp/order/cn_index");
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
  				   //写一个构建函数
  			}
  			ModelAndView mv=new ModelAndView();
  			if(lang.equals("ru")){
  				mv.setViewName("weixin/smp/order/ru_myorder");
  			}else{
  				mv.setViewName("weixin/smp/order/cn_myorder");
  			}
  				mv.addObject("wxmpuser",wxuser);
   				return mv;
  			}catch(Exception e){
  				//TODO:add exception 
  				e.printStackTrace();
  				throw new BusinessException(e.getMessage());
  			}
  	  		
  	}
    
    @RequestMapping(params="test")
	public ModelAndView test(HttpServletRequest request) {
    	return new ModelAndView("weixin/smp/order/cn_index");
    }
    
    
    /**
     * 快递单扫码查询
     * @param request
     * @return
     */
    @RequestMapping(params="qrsearch")
 	public ModelAndView qrSearch(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView("weixin/smp/order/cn_qrsearch" );
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
     	return new ModelAndView("weixin/smp/order/cn_qrqueryresult");
     }
     
	
 
}
