package weixin.smp.order.service.impl;
import weixin.smp.order.service.SmpWeixinOrderServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import weixin.smp.order.entity.SmpWeixinOrderEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.UUID;
import java.io.Serializable;

@Service("smpWeixinOrderService")
@Transactional
public class SmpWeixinOrderServiceImpl extends CommonServiceImpl implements SmpWeixinOrderServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((SmpWeixinOrderEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((SmpWeixinOrderEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((SmpWeixinOrderEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(SmpWeixinOrderEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(SmpWeixinOrderEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(SmpWeixinOrderEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,SmpWeixinOrderEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{open_id}",String.valueOf(t.getOpenId()));
 		sql  = sql.replace("#{nack_name}",String.valueOf(t.getNackName()));
 		sql  = sql.replace("#{sender_name}",String.valueOf(t.getSenderName()));
 		sql  = sql.replace("#{sender_phone}",String.valueOf(t.getSenderPhone()));
 		sql  = sql.replace("#{dest_name}",String.valueOf(t.getDestName()));
 		sql  = sql.replace("#{dest_phone}",String.valueOf(t.getDestPhone()));
 		sql  = sql.replace("#{dest_foreign_city}",String.valueOf(t.getDestForeignCity()));
 		sql  = sql.replace("#{dest_foreign_addr}",String.valueOf(t.getDestForeignAddr()));
 		sql  = sql.replace("#{local_order_no}",String.valueOf(t.getLocalOrderNo()));
 		sql  = sql.replace("#{package_content}",String.valueOf(t.getPackageContent()));
 		sql  = sql.replace("#{remark}",String.valueOf(t.getRemark()));
 		sql  = sql.replace("#{package_value}",String.valueOf(t.getPackageValue()));
 		sql  = sql.replace("#{transfer_type}",String.valueOf(t.getTransferType()));
 		sql  = sql.replace("#{order_state}",String.valueOf(t.getOrderState()));
 		sql  = sql.replace("#{bak_stat}",String.valueOf(t.getBakStat()));
 		sql  = sql.replace("#{dest_city_postcode}",String.valueOf(t.getDestCityPostcode()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}