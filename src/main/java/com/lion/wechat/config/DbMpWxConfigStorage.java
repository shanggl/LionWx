package com.lion.wechat.config;

import me.chanjar.weixin.mp.api.WxMpInMemoryConfigStorage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;

import java.util.HashMap;
import java.util.List;


public class DbMpWxConfigStorage extends WxMpInMemoryConfigStorage {

    @Autowired
    WeixinAccountServiceI weixinAccountService ;

    protected Logger logger = LoggerFactory.getLogger(getClass());



    public void init(){
        refreshWxMpConfigStorage();
    }

    public boolean refreshWxMpConfigStorage(){
    	try{
        List<WeixinAccountEntity> accountList=weixinAccountService.loadAll(WeixinAccountEntity.class);

	        //默认目前只支持一个公众号
	        if(accountList.size()>0) {
	            //取最新的一个
	            WeixinAccountEntity account=accountList.get(0);
	            this.appId=account.getAccountappid();
	            this.aesKey=account.getAccountaeskey();
	            this.token=account.getAccounttoken();
	            this.secret=account.getAccountappsecret();
	            return true;
	        }else{
	        	return false;
	        }
        }catch (Exception e){
        	logger.info("加载公众号配置信息失败:",e.toString());
        	return false;
        }
    }


}
