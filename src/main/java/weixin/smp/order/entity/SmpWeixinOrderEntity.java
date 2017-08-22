package weixin.smp.order.entity;

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
 * @Description: 微信快递订单
 * @author onlineGenerator
 * @date 2017-08-22 20:23:52
 * @version V1.0   
 *
 */
@Entity
@Table(name = "SMP_WEIXIN_ORDER", schema = "")
@SuppressWarnings("serial")
public class SmpWeixinOrderEntity implements java.io.Serializable {
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
	/**用户open_id*/
	@Excel(exportName="用户open_id")
	private java.lang.String openId;
	/**用户昵称*/
	@Excel(exportName="用户昵称")
	private java.lang.String nackName;
	/**寄件人名*/
	@Excel(exportName="寄件人名")
	private java.lang.String senderName;
	/**寄件人电话*/
	@Excel(exportName="寄件人电话")
	private java.lang.String senderPhone;
	/**收件人姓名*/
	@Excel(exportName="收件人姓名")
	private java.lang.String destName;
	/**收件人电话*/
	@Excel(exportName="收件人电话")
	private java.lang.String destPhone;
	/**国外城市*/
	@Excel(exportName="国外城市")
	private java.lang.String destForeignCity;
	/**国外地址*/
	@Excel(exportName="国外地址")
	private java.lang.String destForeignAddr;
	/**国内订单号*/
	@Excel(exportName="国内订单号")
	private java.lang.String localOrderNo;
	/**包裹内容*/
	@Excel(exportName="包裹内容")
	private java.lang.String packageContent;
	/**备注*/
	@Excel(exportName="备注")
	private java.lang.String remark;
	/**保价CNY*/
	@Excel(exportName="保价CNY")
	private java.lang.Integer packageValue;
	/**运输类型*/
	@Excel(exportName="运输类型")
	private java.lang.Integer transferType;
	/**订单状态*/
	@Excel(exportName="订单状态")
	private java.lang.Integer orderState;
	/**暂停时原状态*/
	@Excel(exportName="暂停时原状态")
	private java.lang.Integer bakStat;
	/**国外邮编*/
	@Excel(exportName="国外邮编")
	private java.lang.String destCityPostcode;
	
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
	 *@return: java.lang.String  用户open_id
	 */
	@Column(name ="OPEN_ID",nullable=false,length=100)
	public java.lang.String getOpenId(){
		return this.openId;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  用户open_id
	 */
	public void setOpenId(java.lang.String openId){
		this.openId = openId;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  用户昵称
	 */
	@Column(name ="NACK_NAME",nullable=true,length=32)
	public java.lang.String getNackName(){
		return this.nackName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  用户昵称
	 */
	public void setNackName(java.lang.String nackName){
		this.nackName = nackName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  寄件人名
	 */
	@Column(name ="SENDER_NAME",nullable=false,length=32)
	public java.lang.String getSenderName(){
		return this.senderName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  寄件人名
	 */
	public void setSenderName(java.lang.String senderName){
		this.senderName = senderName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  寄件人电话
	 */
	@Column(name ="SENDER_PHONE",nullable=false,length=32)
	public java.lang.String getSenderPhone(){
		return this.senderPhone;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  寄件人电话
	 */
	public void setSenderPhone(java.lang.String senderPhone){
		this.senderPhone = senderPhone;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  收件人姓名
	 */
	@Column(name ="DEST_NAME",nullable=false,length=32)
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
	 *@return: java.lang.String  国外城市
	 */
	@Column(name ="DEST_FOREIGN_CITY",nullable=false,length=256)
	public java.lang.String getDestForeignCity(){
		return this.destForeignCity;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国外城市
	 */
	public void setDestForeignCity(java.lang.String destForeignCity){
		this.destForeignCity = destForeignCity;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  国外地址
	 */
	@Column(name ="DEST_FOREIGN_ADDR",nullable=false,length=256)
	public java.lang.String getDestForeignAddr(){
		return this.destForeignAddr;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国外地址
	 */
	public void setDestForeignAddr(java.lang.String destForeignAddr){
		this.destForeignAddr = destForeignAddr;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  国内订单号
	 */
	@Column(name ="LOCAL_ORDER_NO",nullable=false,length=32)
	public java.lang.String getLocalOrderNo(){
		return this.localOrderNo;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国内订单号
	 */
	public void setLocalOrderNo(java.lang.String localOrderNo){
		this.localOrderNo = localOrderNo;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  包裹内容
	 */
	@Column(name ="PACKAGE_CONTENT",nullable=false,length=1024)
	public java.lang.String getPackageContent(){
		return this.packageContent;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  包裹内容
	 */
	public void setPackageContent(java.lang.String packageContent){
		this.packageContent = packageContent;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  备注
	 */
	@Column(name ="REMARK",nullable=true,length=255)
	public java.lang.String getRemark(){
		return this.remark;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  备注
	 */
	public void setRemark(java.lang.String remark){
		this.remark = remark;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  保价CNY
	 */
	@Column(name ="PACKAGE_VALUE",nullable=false,length=32)
	public java.lang.Integer getPackageValue(){
		return this.packageValue;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  保价CNY
	 */
	public void setPackageValue(java.lang.Integer packageValue){
		this.packageValue = packageValue;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  运输类型
	 */
	@Column(name ="TRANSFER_TYPE",nullable=false,length=32)
	public java.lang.Integer getTransferType(){
		return this.transferType;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  运输类型
	 */
	public void setTransferType(java.lang.Integer transferType){
		this.transferType = transferType;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  订单状态
	 */
	@Column(name ="ORDER_STATE",nullable=false,length=32)
	public java.lang.Integer getOrderState(){
		return this.orderState;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  订单状态
	 */
	public void setOrderState(java.lang.Integer orderState){
		this.orderState = orderState;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  暂停时原状态
	 */
	@Column(name ="BAK_STAT",nullable=true,length=32)
	public java.lang.Integer getBakStat(){
		return this.bakStat;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  暂停时原状态
	 */
	public void setBakStat(java.lang.Integer bakStat){
		this.bakStat = bakStat;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  国外邮编
	 */
	@Column(name ="DEST_CITY_POSTCODE",nullable=false,length=32)
	public java.lang.String getDestCityPostcode(){
		return this.destCityPostcode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国外邮编
	 */
	public void setDestCityPostcode(java.lang.String destCityPostcode){
		this.destCityPostcode = destCityPostcode;
	}
}
