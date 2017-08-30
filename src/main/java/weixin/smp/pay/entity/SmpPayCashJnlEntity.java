package weixin.smp.pay.entity;

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
 * @Description: 当面支付流水记录表
 * @author onlineGenerator
 * @date 2017-08-29 13:57:23
 * @version V1.0   
 *
 */
@Entity
@Table(name = "SMP_PAY_CASHJNL", schema = "")
@SuppressWarnings("serial")
public class SmpPayCashJnlEntity implements java.io.Serializable {
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
	/**总费用*/
	@Excel(exportName="总费用")
	private java.lang.Integer totalFee;
	/**支付状态*/
	@Excel(exportName="支付状态")
	private java.lang.Integer payStat;
	/**收款人*/
	@Excel(exportName="收款人")
	private java.lang.String cashReceiver;
	/**备注*/
	@Excel(exportName="备注")
	private java.lang.String remark;
	/**币种*/
	@Excel(exportName="币种")
	private java.lang.String feeType;
	/**收款场景描述如门店*/
	@Excel(exportName="收款场景描述如门店")
	private java.lang.String sceneInfo;
	/**当面收款方式*/
	@Excel(exportName="当面收款方式")
	private java.lang.Integer payType;
	/**微信订单号*/
	@Excel(exportName="微信订单号")
	private java.lang.String weixinOrderId;
	
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
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  总费用
	 */
	@Column(name ="TOTAL_FEE",nullable=false,length=32)
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
	 *@return: java.lang.Integer  支付状态
	 */
	@Column(name ="PAY_STAT",nullable=false,length=32)
	public java.lang.Integer getPayStat(){
		return this.payStat;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  支付状态
	 */
	public void setPayStat(java.lang.Integer payStat){
		this.payStat = payStat;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  收款人
	 */
	@Column(name ="CASH_RECEIVER",nullable=false,length=32)
	public java.lang.String getCashReceiver(){
		return this.cashReceiver;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  收款人
	 */
	public void setCashReceiver(java.lang.String cashReceiver){
		this.cashReceiver = cashReceiver;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  备注
	 */
	@Column(name ="REMARK",nullable=true,length=256)
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
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  币种
	 */
	@Column(name ="FEE_TYPE",nullable=false,length=32)
	public java.lang.String getFeeType(){
		return this.feeType;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  币种
	 */
	public void setFeeType(java.lang.String feeType){
		this.feeType = feeType;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  收款场景描述如门店
	 */
	@Column(name ="SCENE_INFO",nullable=true,length=256)
	public java.lang.String getSceneInfo(){
		return this.sceneInfo;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  收款场景描述如门店
	 */
	public void setSceneInfo(java.lang.String sceneInfo){
		this.sceneInfo = sceneInfo;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  当面收款方式
	 */
	@Column(name ="PAY_TYPE",nullable=false,length=32)
	public java.lang.Integer getPayType(){
		return this.payType;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  当面收款方式
	 */
	public void setPayType(java.lang.Integer payType){
		this.payType = payType;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  微信订单号
	 */
	@Column(name ="WEIXIN_ORDER_ID",nullable=false,length=36)
	public java.lang.String getWeixinOrderId(){
		return this.weixinOrderId;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  微信订单号
	 */
	public void setWeixinOrderId(java.lang.String weixinOrderId){
		this.weixinOrderId = weixinOrderId;
	}
}
