package weixin.idea.extend.function;

import java.util.Map;


import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
 
/**
 * 关键字功能接口
 * @author zhangdaihao
 *
 */
public interface KeyServiceI{

	/**
	 * 获取接口关键字，例如："翻译"
	 * @return
	 */
    String getKey();
	
   /**
    * 针对关键字的功能处理方法
    * @param textMessage  默认回复此文本消息
    * @param request      请求
    * @return
    */
    WxMpXmlOutMessage excute(WxMpXmlMessage wxMessage,
			Map<String, Object> context, WxMpService wxMpService,
			WxSessionManager sessionManager);
}
