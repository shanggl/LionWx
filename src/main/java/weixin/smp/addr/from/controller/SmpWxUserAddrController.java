package weixin.smp.addr.from.controller;

import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.result.WxMpUser;

import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

 
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
public class SmpWxUserAddrController extends BaseController {
	private static final Logger logger = Logger.getLogger(SmpWxUserAddrController.class);

    @Autowired
    protected WxMpService wxMpService;

	
    
    @RequestMapping(params="index")
	public ModelAndView index(HttpServletRequest request) {
    	
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
	
	
}
