package allPay.payment.integration.domain;

/**
 * @author mark.chiu
 *
 */
public class AioChargebackObj {
	
	/**
	 * MerchantID
	 */
	private String MerchantID = "";
	
	/**
	 * MerchantTradeNo
	 */
	private String MerchantTradeNo = "";
	
	/**
	 * TradeNo
	 */
	private String TradeNo = "";
	
	/**
	 * ChargeBackTotalAmount
	 */
	private String ChargeBackTotalAmount = "";
	
	/**
	 * Remark
	 */
	private String Remark = "";
	
	/**
	 * PlatformID
	 */
	private String PlatformID = "";
	
	/********************* getters and setters *********************/
	
	/**
	 * @return MerchantID
	 */
	public String getMerchantID() {
		return MerchantID;
	}
	/**
	 * @param merchantID
	 */
	public void setMerchantID(String merchantID) {
		MerchantID = merchantID;
	}
	/**
	 * @return MerchantTradeNo
	 */
	public String getMerchantTradeNo() {
		return MerchantTradeNo;
	}
	/**
	 * @param merchantTradeNo
	 */
	public void setMerchantTradeNo(String merchantTradeNo) {
		MerchantTradeNo = merchantTradeNo;
	}
	/**
	 * @return TradeNo
	 */
	public String getTradeNo() {
		return TradeNo;
	}
	/**
	 * @param tradeNo
	 */
	public void setTradeNo(String tradeNo) {
		TradeNo = tradeNo;
	}
	/**
	 * @return ChargeBackTotalAmount
	 */
	public String getChargeBackTotalAmount() {
		return ChargeBackTotalAmount;
	}
	/**
	 * @param chargeBackTotalAmount
	 */
	public void setChargeBackTotalAmount(String chargeBackTotalAmount) {
		ChargeBackTotalAmount = chargeBackTotalAmount;
	}
	/**
	 * @return Remark
	 */
	public String getRemark() {
		return Remark;
	}
	/**
	 * @param remark
	 */
	public void setRemark(String remark) {
		Remark = remark;
	}
	/**
	 * @return PlatformID
	 */
	public String getPlatformID() {
		return PlatformID;
	}
	/**
	 * @param platformID
	 */
	public void setPlatformID(String platformID) {
		PlatformID = platformID;
	}
	@Override
	public String toString() {
		return "AioChargebackObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo + ", TradeNo="
				+ TradeNo + ", ChargeBackTotalAmount=" + ChargeBackTotalAmount + ", Remark=" + Remark + ", PlatformID="
				+ PlatformID + "]";
	}
}
