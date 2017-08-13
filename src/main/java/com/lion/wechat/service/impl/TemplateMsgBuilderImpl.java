package com.lion.wechat.service.impl;

import java.util.ResourceBundle;


import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutNewsMessage;

import org.jeecgframework.p3.core.common.utils.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lion.wechat.service.TemplateMsgBuilderI;

import weixin.guanjia.message.entity.NewsItem;
import weixin.guanjia.message.entity.NewsTemplate;
import weixin.guanjia.message.entity.TextTemplate;
import weixin.guanjia.message.service.NewsTemplateServiceI;
import weixin.guanjia.message.service.TextTemplateServiceI;


@Service("templateMsgBuilder")
public class TemplateMsgBuilderImpl implements TemplateMsgBuilderI {

	  //文本消息模板配置
    @Autowired
    protected TextTemplateServiceI textTemplsteService;
    
    //图文模板
    @Autowired
    protected NewsTemplateServiceI newsTemplateService;
    //图文信息
    
	private ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
    protected Logger logger = LoggerFactory.getLogger(getClass());


	
    @Override
	public WxMpXmlOutMessage GenNewsTemplateMsg(String templateid,String fromUser,String toUser){
		
		try{
		NewsTemplate newsTemplate = newsTemplateService.getEntity(NewsTemplate.class,templateid);
		WxMpXmlOutNewsMessage mNews = WxMpXmlOutMessage.NEWS()
				  .fromUser(fromUser)
				  .toUser(toUser)
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
		return mNews;	
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
	}
    
    @Override
	public WxMpXmlOutMessage GenTextTemplateMsg(String templateid,String fromUser,String toUser){
		try{
		TextTemplate textTemplate = this.textTemplsteService.getEntity(TextTemplate.class, templateid); 
			WxMpXmlOutMessage mText = WxMpXmlOutMessage.TEXT()
			    .content(textTemplate.getContent())
			    .fromUser(fromUser)
			    .toUser(toUser)
			    .build();
			return mText;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
