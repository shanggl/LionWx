package weixin.smp.base.controller;

import org.springframework.beans.factory.annotation.Autowired;

import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.result.WxMpOAuth2AccessToken;
import me.chanjar.weixin.mp.bean.result.WxMpUser;

public class WxBaseController {
    @Autowired
    protected WxMpService wxMpService;
	
	protected WxMpUser getWxMpUserViaOAuth(String code) throws WxErrorException{
		WxMpOAuth2AccessToken wxMpOAuth2AccessToken = wxMpService.oauth2getAccessToken(code);
		WxMpUser wxMpUser = this.wxMpService.oauth2getUserInfo(wxMpOAuth2AccessToken, null);
		return wxMpUser;
	}

}
