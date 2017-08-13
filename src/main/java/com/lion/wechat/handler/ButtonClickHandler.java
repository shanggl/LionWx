package com.lion.wechat.handler;

import java.util.Map;

/**
 * 处理按钮点击命令，按照配置的模板返回信息
 * shanggl
 */


import java.util.ResourceBundle;

import org.jeecgframework.web.system.service.SystemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import weixin.guanjia.menu.entity.MenuEntity;

import com.lion.wechat.service.TemplateMsgBuilderI;

import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;

@Component
public class ButtonClickHandler extends AbstractHandler {
	
	private ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
    protected Logger logger = LoggerFactory.getLogger(getClass());
    
	@Autowired
	private SystemService systemService;
	@Autowired
    protected TemplateMsgBuilderI templateMsgBuilder;
    
    

	@Override
	public WxMpXmlOutMessage handle(WxMpXmlMessage wxMessage,
			Map<String, Object> context, WxMpService wxMpService,
			WxSessionManager sessionManager) throws WxErrorException {
		// TODO Auto-generated method stub
		String menuKey=wxMessage.getEventKey();
		//查询key
		MenuEntity menuEntity = this.systemService.findUniqueByProperty(MenuEntity.class, "menuKey",menuKey);
		WxMpXmlOutMessage m=WxMpXmlOutMessage.TEXT()
	        .content("按钮事件尚未配置")
	        .fromUser(wxMessage.getToUser())
	        .toUser(wxMessage.getFromUser())
	        .build(); 
		
		if (menuEntity != null)
		{
			String resMsgType=menuEntity.getMsgType();
			if("text".equals(resMsgType)) {
			//根据返回消息key，获取对应的文本消息返回给微信客户端
				m=this.templateMsgBuilder.GenTextTemplateMsg(menuEntity.getTemplateId(),wxMessage.getToUser() , wxMessage.getFromUser());
			} else if ("news".equals(resMsgType)) {
				m=this.templateMsgBuilder.GenNewsTemplateMsg(menuEntity.getTemplateId(),wxMessage.getToUser() , wxMessage.getFromUser());
			} else if ("expand".equals(resMsgType)) {
//					WeixinExpandconfigEntity expandconfigEntity = weixinExpandconfigService.getEntity(WeixinExpandconfigEntity.class,menuEntity.getTemplateId());
//					String className = expandconfigEntity.getClassname();
//					KeyServiceI keyService = (KeyServiceI) Class.forName(className).newInstance();
//					respMessage = keyService.excute("", textMessage,request);	
			}
		}else{
			//默认不处理
		}
		
		
		return m;
	}

}
