package com.lion.wechat.handler;

import java.sql.Timestamp;
import java.util.Map;

import org.jeewx.api.core.util.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import weixin.guanjia.message.entity.ReceiveText;
import weixin.guanjia.message.service.ReceiveTextServiceI;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;

/**
 * 转发客户消息给客服Handler
 * 客服可以在　receiveTextController 中进行直接回复
 * Created by FirenzesEagle on 2016/7/27 0027.
 * Email:shanggl@wo.cn
 */
@Component
public class MsgHandler extends AbstractHandler {
	
	@Autowired
	protected ReceiveTextServiceI receiveTextService;
	
	
    @Override
    public WxMpXmlOutMessage handle(WxMpXmlMessage wxMessage, Map<String, Object> context, WxMpService wxMpService, WxSessionManager sessionManager) throws WxErrorException {
    	
    	
    	//保存到消息收件箱
		ReceiveText receiveText = new ReceiveText();
		receiveText.setContent(wxMessage.getContent());
		Timestamp temp = Timestamp.valueOf(DateUtils
				.getDate("yyyy-MM-dd HH:mm:ss"));
		receiveText.setCreateTime(temp);
		receiveText.setFromUserName(wxMessage.getFromUser());
		receiveText.setToUserName(wxMessage.getToUser());
		receiveText.setMsgId(wxMessage.getMsgId().toString());
		receiveText.setMsgType(wxMessage.getMsgType());
		receiveText.setResponse("0");
		receiveText.setAccountId(wxMessage.getToUser());
		this.receiveTextService.save(receiveText);
		return WxMpXmlOutMessage.TEXT()
		        .content("您的留言已经记录，稍后客服会回复您的咨询，回复'?' 获得菜单列表")
		        .fromUser(wxMessage.getToUser())
		        .toUser(wxMessage.getFromUser())
		        .build(); 
		 
    }
}
