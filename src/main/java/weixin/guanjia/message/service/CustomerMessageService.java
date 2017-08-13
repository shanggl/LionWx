package weixin.guanjia.message.service;

import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.kefu.WxMpKefuMessage;
import net.sf.json.JSONObject;

import org.jeecgframework.core.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.message.model.TextMessageKf;
 
/**
 * 客服消息service
 * @author 付明星
 *
 */
@Service("customerMessageService")
public class CustomerMessageService {
	
  	
    @Autowired
	private WxMpService weixinService;

    public String sendMessage(TextMessageKf kefumsg){ 
    	WxMpKefuMessage msg=WxMpKefuMessage
    	  .TEXT()
    	  .toUser(kefumsg.getTouser())
    	  .content(kefumsg.getText().getContent())
    	  .build();
    	try {
			boolean ret=this.weixinService.getKefuService().sendKefuMessage(msg);
			if(!ret){
				return "回复消息失败";
			}
		} catch (WxErrorException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "回复消息异常";
		}
         return "回复消息成功";
    }
}
