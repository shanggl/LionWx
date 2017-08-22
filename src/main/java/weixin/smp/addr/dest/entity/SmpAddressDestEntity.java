package weixin.smp.addr.dest.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

/**   
 * @Title: Entity
 * @Description: 小包收件人信息
 * @author onlineGenerator
 * @date 2017-08-22 09:26:20
 * @version V1.0   
 *
 */
@Entity
@Table(name = "SMP_ADDRESS_DEST", schema = "")
@SuppressWarnings("serial")
public class SmpAddressDestEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**创建人名称*/
	private java.lang.String createName;
	/**创建日期*/
	private java.util.Date createDate;
	/**修改人名称*/
	private java.lang.String updateName;
	/**修改日期*/
	private java.util.Date updateDate;
	/**用户openid*/
	@Excel(exportName="用户openid")
	private java.lang.String openId;
	/**收件人电话*/
	@Excel(exportName="收件人电话")
	private java.lang.String destPhone;
	/**收件人姓名*/
	@Excel(exportName="收件人姓名")
	private java.lang.String destName;
	/**国外收件人城市*/
	@Excel(exportName="国外收件人城市")
	private java.lang.String destForeignCity;
	/**国外收件人地址*/
	@Excel(exportName="国外收件人地址")
	private java.lang.String destForeiginAddr;
	/** 国外城市邮编*/
	@Excel(exportName=" 国外城市邮编")
	private java.lang.String destCityPostCode;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人名称
	 */
	@Column(name ="CREATE_NAME",nullable=true,length=50)
	public java.lang.String getCreateName(){
		return this.createName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人名称
	 */
	public void setCreateName(java.lang.String createName){
		this.createName = createName;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  创建日期
	 */
	@Column(name ="CREATE_DATE",nullable=true,length=20)
	public java.util.Date getCreateDate(){
		return this.createDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  创建日期
	 */
	public void setCreateDate(java.util.Date createDate){
		this.createDate = createDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  修改人名称
	 */
	@Column(name ="UPDATE_NAME",nullable=true,length=50)
	public java.lang.String getUpdateName(){
		return this.updateName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  修改人名称
	 */
	public void setUpdateName(java.lang.String updateName){
		this.updateName = updateName;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  修改日期
	 */
	@Column(name ="UPDATE_DATE",nullable=true,length=20)
	public java.util.Date getUpdateDate(){
		return this.updateDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  修改日期
	 */
	public void setUpdateDate(java.util.Date updateDate){
		this.updateDate = updateDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  用户openid
	 */
	@Column(name ="OPEN_ID",nullable=false,length=64)
	public java.lang.String getOpenId(){
		return this.openId;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  用户openid
	 */
	public void setOpenId(java.lang.String openId){
		this.openId = openId;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  收件人电话
	 */
	@Column(name ="DEST_PHONE",nullable=false,length=32)
	public java.lang.String getDestPhone(){
		return this.destPhone;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  收件人电话
	 */
	public void setDestPhone(java.lang.String destPhone){
		this.destPhone = destPhone;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  收件人姓名
	 */
	@Column(name ="DEST_NAME",nullable=false,length=128)
	public java.lang.String getDestName(){
		return this.destName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  收件人姓名
	 */
	public void setDestName(java.lang.String destName){
		this.destName = destName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  国外收件人城市
	 */
	@Column(name ="DEST_FOREIGN_CITY",nullable=false,length=128)
	public java.lang.String getDestForeignCity(){
		return this.destForeignCity;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国外收件人城市
	 */
	public void setDestForeignCity(java.lang.String destForeignCity){
		this.destForeignCity = destForeignCity;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  国外收件人地址
	 */
	@Column(name ="DEST_FOREIGIN_ADDR",nullable=false,length=128)
	public java.lang.String getDestForeiginAddr(){
		return this.destForeiginAddr;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国外收件人地址
	 */
	public void setDestForeiginAddr(java.lang.String destForeiginAddr){
		this.destForeiginAddr = destForeiginAddr;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String   国外城市邮编
	 */
	@Column(name ="DEST_CITY_POSTCODE",nullable=false,length=32)
	public java.lang.String getDestCityPostCode(){
		return this.destCityPostCode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String   国外城市邮编
	 */
	public void setDestCityPostCode(java.lang.String destCityPostcode){
		this.destCityPostCode = destCityPostcode;
	}
}
