package com.lion.wechat.handler;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import org.jeewx.api.core.util.DateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.lion.wechat.service.TemplateMsgBuilderI;

import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.message.entity.AutoResponse;
import weixin.guanjia.message.entity.ReceiveText;
import weixin.guanjia.message.service.AutoResponseServiceI;
import weixin.guanjia.message.service.ReceiveTextServiceI;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;

/**
 * 根据用户发送关键字，自动回复
 * @author shanggl
 *　
 */


@Component
public class KeyWordHandler extends AbstractHandler {
	
	private ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
    protected Logger logger = LoggerFactory.getLogger(KeyWordHandler.class);
    
	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	@Autowired
	private AutoResponseServiceI autoResponseService;
	
	@Autowired
	protected ReceiveTextServiceI receiveTextService;
    @Autowired
    protected TemplateMsgBuilderI templateMsgBuilder;
    
	@Override
	public WxMpXmlOutMessage handle(WxMpXmlMessage wxMessage,
			Map<String, Object> context, WxMpService wxMpService,
			WxSessionManager sessionManager) throws WxErrorException {
		// TODO Auto-generated method stub
		logger.info("KeywordHandler Step.1 判断关键字信息中是否管理该文本内容。有的话优先采用数据库中的回复---");
		
		
		WxMpXmlOutMessage m=null;
		
		AutoResponse autoResponse = this.findKey(wxMessage.getContent(), wxMessage.getToUser());
		// 根据系统配置的关键字信息，返回对应的消息
		if (autoResponse != null) {
			String resMsgType = autoResponse.getMsgType();
			if ("text".equals(resMsgType)) {
				//根据返回消息key，获取对应的文本消息返回给微信客户端
				m=this.templateMsgBuilder.GenTextTemplateMsg(autoResponse.getResContent(),wxMessage.getToUser() , wxMessage.getFromUser());
			
			} else if ("news".equals(resMsgType)) {
				m=this.templateMsgBuilder.GenNewsTemplateMsg(autoResponse.getResContent(),wxMessage.getToUser() , wxMessage.getFromUser());
			}
			return m;
		} else {//拓展接口，暂不处理
//			// Step.2  通过微信扩展接口（支持二次开发，例如：翻译，天气）
//			LogUtil.info("KeywordHandler---Step.2  通过微信扩展接口（支持二次开发，例如：翻译，天气）---");
//			List<WeixinExpandconfigEntity> weixinExpandconfigEntityLst = weixinExpandconfigService.findByQueryString("FROM WeixinExpandconfigEntity");
//			if (weixinExpandconfigEntityLst.size() != 0) {
//				for (WeixinExpandconfigEntity wec : weixinExpandconfigEntityLst) {
//					boolean findflag = false;// 是否找到关键字信息
//					// 如果已经找到关键字并处理业务，结束循环。
//					if (findflag) {
//						break;// 如果找到结束循环
//					}
//					String[] keys = wec.getKeyword().split(",");
//					for (String k : keys) {
//						if (content.indexOf(k) != -1) {
//							String className = wec.getClassname();
//							KeyServiceI keyService = (KeyServiceI) Class.forName(className).newInstance();
//							respMessage = keyService.excute(content,textMessage, request);
//							findflag = true;// 改变标识，已经找到关键字并处理业务，结束循环。
//							break;// 当前关键字信息处理完毕，结束当前循环
//						}
//					}
//				}
//			}
			logger.debug("未找到关键字，返回默认菜单列表");
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
    
 /**
	 * 遍历关键字管理中是否存在用户输入的关键字信息
	 * 
	 * @param content
	 * @return
	 */
	private AutoResponse findKey(String content, String toUsername) {
		//获取全局的数据权限ID
		String sys_accountId = weixinAccountService.findByToUsername(toUsername).getId();
        // 获取关键字管理的列表，匹配后返回信息
		List<AutoResponse> autoResponses = autoResponseService.findByProperty(AutoResponse.class, "accountId", sys_accountId);
		logger.debug( "---------sys_accountId----关键字查询结果条数：----",autoResponses.size());
		for (AutoResponse r : autoResponses) {
			// 如果包含关键字
			String kw = r.getKeyWord();
			String[] allkw = kw.split(",");
			for (String k : allkw) {
				if (k.equals(content)) {
					logger.debug("-------- key word ----查询结果----"+r.getTemplateName());
					return r;
				}
			}
		}
		return null;
	}

}
