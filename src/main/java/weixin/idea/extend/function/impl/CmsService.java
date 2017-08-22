package weixin.idea.extend.function.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutNewsMessage;

import org.jeecgframework.core.util.ApplicationContextUtil;
import org.jeecgframework.p3.core.common.utils.StringUtil;

import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.idea.extend.function.KeyServiceI;

/**
 * 微网站
 * @author zhangdaihao
 *
 */
public class CmsService implements KeyServiceI {
	
   public  WxMpXmlOutMessage excute(WxMpXmlMessage wxMessage,
			Map<String, Object> context, WxMpService wxMpService,
			WxSessionManager sessionManager)
   {
		WeixinAccountServiceI weixinAccountService =(WeixinAccountServiceI)ApplicationContextUtil.getContext().getBean("weixinAccountService");
		ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");

		String accountid = weixinAccountService.findByToUsername(wxMessage.getToUser()).getId();

		WxMpXmlOutNewsMessage mNews=WxMpXmlOutNewsMessage
				.NEWS()
				.fromUser(wxMessage.getToUser())
				 .toUser(wxMessage.getFromUser())
				.build();
		WxMpXmlOutNewsMessage.Item item = new WxMpXmlOutNewsMessage.Item();
		item.setPicUrl(bundler.getString("domain")+"/webpage/weixin/cms/images/index.jpg");
		item.setTitle("微网站");
		item.setDescription("猛击打开");
		item.setUrl(bundler.getString("domain")+ "/cmsController.do?goPage&page=index&accountid="+ accountid + "&userid="+ wxMessage.getFromUser());
		mNews.addArticle(item);
		return mNews;
	}

	@Override
	public String getKey() {

		return "微信CMS,CMS,cms";
	}

}
