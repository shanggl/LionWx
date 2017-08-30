package weixin.smp.pay.service;
import weixin.smp.pay.entity.SmpPayCashJnlEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface SmpPayCashJnlServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(SmpPayCashJnlEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(SmpPayCashJnlEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(SmpPayCashJnlEntity t);
}
