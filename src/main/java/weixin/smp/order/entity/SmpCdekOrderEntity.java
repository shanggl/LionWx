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
 * @Description: CDEK订单信息
 * @author onlineGenerator
 * @date 2017-08-29 13:12:06
 * @version V1.0   
 *
 */
@Entity
@Table(name = "SMP_CDEK_ORDER", schema = "")
@SuppressWarnings("serial")
public class SmpCdekOrderEntity implements java.io.Serializable {
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
	/**CDEK订单号*/
	@Excel(exportName="CDEK订单号")
	private java.lang.String orderNo;
	/**长度*/
	@Excel(exportName="长度")
	private java.lang.String packageLength;
	/**高度*/
	@Excel(exportName="高度")
	private java.lang.String packageHeigth;
	/**宽度*/
	@Excel(exportName="宽度")
	private java.lang.String packageWidth;
	/**重量*/
	@Excel(exportName="重量")
	private java.lang.String packageWeigth;
	/**保价CNY*/
	@Excel(exportName="保价CNY")
	private java.lang.Integer insurance;
	/**国外收件人*/
	@Excel(exportName="国外收件人")
	private java.lang.String destName;
	/**国外城市*/
	@Excel(exportName="国外城市")
	private java.lang.String destCity;
	/**国外邮编*/
	@Excel(exportName="国外邮编")
	private java.lang.String destPostCode;
	/**国外地址*/
	@Excel(exportName="国外地址")
	private java.lang.String destAddr;
	/**备注*/
	@Excel(exportName="备注")
	private java.lang.String comment;
	/**订单状态*/
	@Excel(exportName="订单状态")
	private java.lang.Integer ordStat;
	/**邮寄内容*/
	@Excel(exportName="邮寄内容")
	private java.lang.String packageContent;
	/**微信订单id*/
	@Excel(exportName="微信订单id")
	private java.lang.String weixinOrderId;
	/**额外增值服务费CNY*/
	@Excel(exportName="额外增值服务费CNY")
	private java.lang.Integer additionalServcieCharge;
	/**运费CNY*/
	@Excel(exportName="运费CNY")
	private java.lang.Integer serviceCharge;
	/**运输方式*/
	@Excel(exportName="运输方式")
	private java.lang.Integer transferType;
	/**跟踪条码二维码*/
	@Excel(exportName="跟踪条码二维码")
	private java.lang.String barCode;
	/**总费用*/
	@Excel(exportName="总费用")
	private java.lang.Integer totalFee;
	/**减免费用*/
	@Excel(exportName="减免费用")
	private java.lang.Integer discountFee;
	/**减免原因*/
	@Excel(exportName="减免原因")
	private java.lang.String discountRemark;
	
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
	 *@return: java.lang.String  CDEK订单号
	 */
	@Column(name ="ORDER_NO",nullable=true,length=64)
	public java.lang.String getOrderNo(){
		return this.orderNo;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  CDEK订单号
	 */
	public void setOrderNo(java.lang.String orderNo){
		this.orderNo = orderNo;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  长度
	 */
	@Column(name ="PACKAGE_LENGTH",nullable=true,length=32)
	public java.lang.String getPackageLength(){
		return this.packageLength;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  长度
	 */
	public void setPackageLength(java.lang.String packageLength){
		this.packageLength = packageLength;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  高度
	 */
	@Column(name ="PACKAGE_HEIGTH",nullable=true,length=32)
	public java.lang.String getPackageHeigth(){
		return this.packageHeigth;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  高度
	 */
	public void setPackageHeigth(java.lang.String packageHeigth){
		this.packageHeigth = packageHeigth;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  宽度
	 */
	@Column(name ="PACKAGE_WIDTH",nullable=true,length=32)
	public java.lang.String getPackageWidth(){
		return this.packageWidth;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  宽度
	 */
	public void setPackageWidth(java.lang.String packageWidth){
		this.packageWidth = packageWidth;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  重量
	 */
	@Column(name ="PACKAGE_WEIGTH",nullable=true,length=32)
	public java.lang.String getPackageWeigth(){
		return this.packageWeigth;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  重量
	 */
	public void setPackageWeigth(java.lang.String packageWeigth){
		this.packageWeigth = packageWeigth;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  保价CNY
	 */
	@Column(name ="INSURANCE",nullable=true,length=32)
	public java.lang.Integer getInsurance(){
		return this.insurance;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  保价CNY
	 */
	public void setInsurance(java.lang.Integer insurance){
		this.insurance = insurance;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  国外收件人
	 */
	@Column(name ="DEST_NAME",nullable=false,length=64)
	public java.lang.String getDestName(){
		return this.destName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国外收件人
	 */
	public void setDestName(java.lang.String destName){
		this.destName = destName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  国外城市
	 */
	@Column(name ="DEST_CITY",nullable=false,length=32)
	public java.lang.String getDestCity(){
		return this.destCity;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国外城市
	 */
	public void setDestCity(java.lang.String destCity){
		this.destCity = destCity;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  国外邮编
	 */
	@Column(name ="DEST_POST_CODE",nullable=false,length=32)
	public java.lang.String getDestPostCode(){
		return this.destPostCode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国外邮编
	 */
	public void setDestPostCode(java.lang.String destPostCode){
		this.destPostCode = destPostCode;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  国外地址
	 */
	@Column(name ="DEST_ADDR",nullable=false,length=256)
	public java.lang.String getDestAddr(){
		return this.destAddr;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国外地址
	 */
	public void setDestAddr(java.lang.String destAddr){
		this.destAddr = destAddr;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  备注
	 */
	@Column(name ="COMMENT",nullable=true,length=32)
	public java.lang.String getComment(){
		return this.comment;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  备注
	 */
	public void setComment(java.lang.String comment){
		this.comment = comment;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  订单状态
	 */
	@Column(name ="ORD_STAT",nullable=false,length=32)
	public java.lang.Integer getOrdStat(){
		return this.ordStat;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  订单状态
	 */
	public void setOrdStat(java.lang.Integer ordStat){
		this.ordStat = ordStat;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  邮寄内容
	 */
	@Column(name ="PACKAGE_CONTENT",nullable=true,length=32)
	public java.lang.String getPackageContent(){
		return this.packageContent;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  邮寄内容
	 */
	public void setPackageContent(java.lang.String packageContent){
		this.packageContent = packageContent;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  微信订单id
	 */
	@Column(name ="WEIXIN_ORDER_ID",nullable=false,length=36)
	public java.lang.String getWeixinOrderId(){
		return this.weixinOrderId;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  微信订单id
	 */
	public void setWeixinOrderId(java.lang.String weixinOrderId){
		this.weixinOrderId = weixinOrderId;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  额外增值服务费CNY
	 */
	@Column(name ="ADDITIONAL_SERVCIE_CHARGE",nullable=true,length=32)
	public java.lang.Integer getAdditionalServcieCharge(){
		return this.additionalServcieCharge;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  额外增值服务费CNY
	 */
	public void setAdditionalServcieCharge(java.lang.Integer additionalServcieCharge){
		this.additionalServcieCharge = additionalServcieCharge;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  运费CNY
	 */
	@Column(name ="SERVICE_CHARGE",nullable=false,length=32)
	public java.lang.Integer getServiceCharge(){
		return this.serviceCharge;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  运费CNY
	 */
	public void setServiceCharge(java.lang.Integer serviceCharge){
		this.serviceCharge = serviceCharge;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  运输方式
	 */
	@Column(name ="TRANSFER_TYPE",nullable=false,length=32)
	public java.lang.Integer getTransferType(){
		return this.transferType;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  运输方式
	 */
	public void setTransferType(java.lang.Integer transferType){
		this.transferType = transferType;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  跟踪条码二维码
	 */
	@Column(name ="BAR_CODE",nullable=true,length=32)
	public java.lang.String getBarCode(){
		return this.barCode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  跟踪条码二维码
	 */
	public void setBarCode(java.lang.String barCode){
		this.barCode = barCode;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  总费用
	 */
	@Column(name ="TOTAL_FEE",nullable=true,length=32)
	public java.lang.Integer getTotalFee(){
		return this.totalFee;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  总费用
	 */
	public void setTotalFee(java.lang.Integer totalFee){
		this.totalFee = totalFee;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  减免费用
	 */
	@Column(name ="DISCOUNT_FEE",nullable=true,length=32)
	public java.lang.Integer getDiscountFee(){
		return this.discountFee;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  减免费用
	 */
	public void setDiscountFee(java.lang.Integer discountFee){
		this.discountFee = discountFee;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  减免原因
	 */
	@Column(name ="DISCOUNT_REMARK",nullable=true,length=256)
	public java.lang.String getDiscountRemark(){
		return this.discountRemark;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  减免原因
	 */
	public void setDiscountRemark(java.lang.String discountRemark){
		this.discountRemark = discountRemark;
	}
}
