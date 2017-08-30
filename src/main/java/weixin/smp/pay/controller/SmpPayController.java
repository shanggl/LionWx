package weixin.smp.pay.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.web.cgform.exception.BusinessException;
import org.jeecgframework.web.system.service.SystemService;
import org.jeewx.api.wxshop.model.Business;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import weixin.smp.order.controller.SmpCdekOrderController;
import weixin.smp.order.entity.SmpCdekOrderEntity;
import weixin.smp.order.entity.SmpWeixinOrderEntity;
import weixin.smp.order.service.SmpCdekOrderServiceI;
import weixin.smp.order.service.SmpWeixinOrderServiceI;
import weixin.smp.pay.entity.SmpPayCashJnlEntity;

import java.util.List;


/**   
 * @Title: Controller
 * @Description: 发起支付共用控制器
 * @author onlineGenerator
 * @date 2017-08-29 13:33:16
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/smpPayController")
public class SmpPayController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(SmpPayController.class);
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
	 * 选择支付方式
	 * 
	 * @return ModelAndView
	 */
@RequestMapping(params = "goPayType")
public ModelAndView goPayType(  HttpServletRequest req) { 
		return new ModelAndView("weixin/smp/pay/askPayType");
	}

	/**
	 * 选择跳转具体支付页面
	 *
	 * @return
	 */
	@RequestMapping(params = "goPay")
	public ModelAndView goPay( String id,String payType, HttpServletRequest req) throws BusinessException {
		if(id.isEmpty()||payType.isEmpty()){
			throw new BusinessException("ERROR PAY_01 请保证订单ＩＤ与支付类型正确");
		}

		SmpWeixinOrderEntity wxOrder=this.smpWeixinOrderService.getEntity(SmpWeixinOrderEntity.class,id);
		if(wxOrder.getOrderState()!=3){
			//订单已支付或者尚未确认到仓
			throw new BusinessException("ERROR PAY_02 当前订单无法发起支付");
		}

		List<SmpCdekOrderEntity> cdekOrderList=this.smpCdekOrderService.findByProperty(SmpCdekOrderEntity.class,"weixinOrderId",id);
		if(cdekOrderList.size()<0){
			throw new BusinessException("ERROR PAY_03 cdek订单尚未生成，是否进行了到库确认?");
		}


		ModelAndView mv=new ModelAndView();
		mv.addObject("wxOrder",wxOrder);
		mv.addObject("cdekOrder",cdekOrderList.get(0));
		mv.addObject("payType",payType);

		if(payType.equals("1")||payType.equals("2")){
			mv.setViewName("weixin/smp/pay/doCashPay");
 		}
		if(payType.equals("3")){
			mv.setViewName("weixin/smp/pay/doWeixinPay");
		}
		return mv;

	}

}
