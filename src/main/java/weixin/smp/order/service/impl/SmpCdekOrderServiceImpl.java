package weixin.smp.order.service.impl;
import weixin.smp.order.service.SmpCdekOrderServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import weixin.smp.order.entity.SmpCdekOrderEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.UUID;
import java.io.Serializable;

@Service("smpCdekOrderService")
@Transactional
public class SmpCdekOrderServiceImpl extends CommonServiceImpl implements SmpCdekOrderServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((SmpCdekOrderEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((SmpCdekOrderEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((SmpCdekOrderEntity)entity);
 	}
 	/**
	 * 自定义按钮-sql增强-发起支付
	 * @param id
	 * @return
	 */
	 public boolean doAskPaySql(SmpCdekOrderEntity t){
	 	return true;
	 }
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(SmpCdekOrderEntity t){
 		
 		
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(SmpCdekOrderEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(SmpCdekOrderEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,SmpCdekOrderEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{order_no}",String.valueOf(t.getOrderNo()));
 		sql  = sql.replace("#{package_length}",String.valueOf(t.getPackageLength()));
 		sql  = sql.replace("#{package_heigth}",String.valueOf(t.getPackageHeigth()));
 		sql  = sql.replace("#{package_width}",String.valueOf(t.getPackageWidth()));
 		sql  = sql.replace("#{package_weigth}",String.valueOf(t.getPackageWeigth()));
 		sql  = sql.replace("#{insurance}",String.valueOf(t.getInsurance()));
 		sql  = sql.replace("#{dest_name}",String.valueOf(t.getDestName()));
 		sql  = sql.replace("#{dest_city}",String.valueOf(t.getDestCity()));
 		sql  = sql.replace("#{dest_post_code}",String.valueOf(t.getDestPostCode()));
 		sql  = sql.replace("#{dest_addr}",String.valueOf(t.getDestAddr()));
 		sql  = sql.replace("#{comment}",String.valueOf(t.getComment()));
 		sql  = sql.replace("#{ord_stat}",String.valueOf(t.getOrdStat()));
 		sql  = sql.replace("#{package_content}",String.valueOf(t.getPackageContent()));
 		sql  = sql.replace("#{weixin_order_id}",String.valueOf(t.getWeixinOrderId()));
 		sql  = sql.replace("#{additional_servcie_charge}",String.valueOf(t.getAdditionalServcieCharge()));
 		sql  = sql.replace("#{service_charge}",String.valueOf(t.getServiceCharge()));
 		sql  = sql.replace("#{transfer_type}",String.valueOf(t.getTransferType()));
 		sql  = sql.replace("#{bar_code}",String.valueOf(t.getBarCode()));
 		sql  = sql.replace("#{total_fee}",String.valueOf(t.getTotalFee()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}