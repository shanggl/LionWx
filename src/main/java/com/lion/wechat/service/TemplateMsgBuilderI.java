package com.lion.wechat.service;

import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;

public interface TemplateMsgBuilderI {
	
	
	//生成图文消息
	public WxMpXmlOutMessage GenNewsTemplateMsg(String templateid,String fromUser,String toUser);
	
	//生成文本消息
	public WxMpXmlOutMessage GenTextTemplateMsg(String templateid,String fromUser,String toUser);

}
