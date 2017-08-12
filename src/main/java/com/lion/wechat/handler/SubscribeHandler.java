package com.lion.wechat.handler;

import java.util.ArrayList;
import java.util.Map;
import java.util.List;
import java.util.ResourceBundle;

import com.lion.wechat.service.CoreService;

import org.jeecgframework.p3.core.common.utils.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

 import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.base.service.SubscribeServiceI;
import weixin.guanjia.message.entity.NewsItem;
import weixin.guanjia.message.entity.NewsTemplate;
import weixin.guanjia.message.entity.TextTemplate;
 import weixin.guanjia.message.service.NewsTemplateServiceI;
import weixin.guanjia.message.service.TextTemplateServiceI;
import weixin.guanjia.base.entity.Subscribe;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpConfigStorage;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutNewsMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutTextMessage;
import me.chanjar.weixin.mp.bean.result.WxMpUser;

/**
 * 用户关注公众号Handler
 * <p>
 * Created by FirenzesEagle on 2016/7/27 0027.
 * Email:liumingbo2008@gmail.com
 */
@Component
public class SubscribeHandler extends AbstractHandler {

    @Autowired
    protected WxMpConfigStorage configStorage;
    @Autowired
    protected WxMpService wxMpService;
    @Autowired
    protected CoreService coreService;
    
    //公众号配置信息
    @Autowired
    protected WeixinAccountServiceI accountService;
    
    //关注响应信息配置
    @Autowired
    protected SubscribeServiceI subscribeService;
    
    //文本消息模板配置
    @Autowired
    protected TextTemplateServiceI textTemplsteService;
    
    //图文模板
    @Autowired
    protected NewsTemplateServiceI newsTemplateService;
    //图文信息
    


    @Override
    public WxMpXmlOutMessage handle(WxMpXmlMessage wxMessage, Map<String, Object> context, WxMpService wxMpService, WxSessionManager sessionManager) throws WxErrorException {
        WxMpUser wxMpUser = coreService.getUserInfo(wxMessage.getFromUser(), "zh_CN");

        //TODO(user) 在这里可以进行用户关注时对业务系统的相关操作（比如新增用户）
        logger.info("subscribeMessageHandler get a new follower:" + wxMessage.getFromUser());

        WxMpXmlOutMessage m
        = WxMpXmlOutMessage.TEXT()
        .content("尊敬的" + wxMpUser.getNickname() + "，您好！感谢您的关注")
        .fromUser(wxMessage.getToUser())
        .toUser(wxMessage.getFromUser())
        .build();
		ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
        try{
        		String system_account_id= accountService.findByToUsername(wxMessage.getToUser()).getId();
        		List<Subscribe> lst = subscribeService.findByProperty(Subscribe.class, "accountid", system_account_id);
        		if (lst.size() != 0) {        
        			Subscribe subscribe=lst.get(0);
        			String type=subscribe.getMsgType();
        			//图文
        			if("news".equalsIgnoreCase(type)){
        				NewsTemplate newsTemplate = newsTemplateService.getEntity(NewsTemplate.class, subscribe.getTemplateId());
        				WxMpXmlOutNewsMessage mNews = WxMpXmlOutMessage.NEWS()
          					  .fromUser(wxMessage.getToUser())
          					  .toUser(wxMessage.getFromUser())
           					  .build();
        				for (NewsItem news : newsTemplate.getNewsItemList()) {
        					WxMpXmlOutNewsMessage.Item item = new WxMpXmlOutNewsMessage.Item();
        					item.setDescription(news.getDescription());
        					item.setPicUrl(bundler.getString("domain")+ "/" + news.getImagePath());
        					item.setTitle(news.getTitle());
        					String url = "";
        					if (StringUtil.isEmpty(news.getUrl())) {
        						url = bundler.getString("domain")+ "/newsItemController.do?goContent&id="+ news.getId();
        					} else {
        						url = news.getUrl();
        					}
        					item.setUrl(url);
        					mNews.addArticle(item);
              				}    					 
        				m=mNews;
        			}
        			//纯文本
        			if("text".equalsIgnoreCase(type)){
        				TextTemplate textTemplate = this.textTemplsteService.getEntity(TextTemplate.class, subscribe
        								.getTemplateId()); 
        				WxMpXmlOutMessage mText = WxMpXmlOutMessage.TEXT()
        		            .content(textTemplate.getContent())
        		            .fromUser(wxMessage.getToUser())
        		            .toUser(wxMessage.getFromUser())
        		            .build();
        				m=mText;
        			}
        			
        		}
        		 
        }catch (Exception e){
        	 logger.info("subscribeMessageHandler Exception:",e.toString());
         }
        
        return m;
    }
};
