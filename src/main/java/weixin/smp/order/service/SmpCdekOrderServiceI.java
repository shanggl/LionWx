package weixin.smp.order.service;
import weixin.smp.order.entity.SmpCdekOrderEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface SmpCdekOrderServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
	 * 自定义按钮-sql增强-发起支付
	 * @param id
	 * @return
	 */
	 public boolean doAskPaySql(SmpCdekOrderEntity t);
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(SmpCdekOrderEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(SmpCdekOrderEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(SmpCdekOrderEntity t);
}
