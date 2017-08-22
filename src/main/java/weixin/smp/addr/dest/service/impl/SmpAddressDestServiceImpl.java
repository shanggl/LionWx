package weixin.smp.addr.dest.service.impl;
import weixin.smp.addr.dest.service.SmpAddressDestServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import weixin.smp.addr.dest.entity.SmpAddressDestEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.UUID;
import java.io.Serializable;

@Service("smpAddressDestService")
@Transactional
public class SmpAddressDestServiceImpl extends CommonServiceImpl implements SmpAddressDestServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((SmpAddressDestEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((SmpAddressDestEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((SmpAddressDestEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(SmpAddressDestEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(SmpAddressDestEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(SmpAddressDestEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,SmpAddressDestEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{create_name}",String.valueOf(t.getCreateName()));
 		sql  = sql.replace("#{create_date}",String.valueOf(t.getCreateDate()));
 		sql  = sql.replace("#{update_name}",String.valueOf(t.getUpdateName()));
 		sql  = sql.replace("#{update_date}",String.valueOf(t.getUpdateDate()));
 		sql  = sql.replace("#{open_id}",String.valueOf(t.getOpenId()));
 		sql  = sql.replace("#{dest_phone}",String.valueOf(t.getDestPhone()));
 		sql  = sql.replace("#{dest_name}",String.valueOf(t.getDestName()));
 		sql  = sql.replace("#{dest_foreign_city}",String.valueOf(t.getDestForeignCity()));
 		sql  = sql.replace("#{dest_foreigin_addr}",String.valueOf(t.getDestForeiginAddr()));
 		sql  = sql.replace("#{dest_city_postcode}",String.valueOf(t.getDestCityPostCode()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}