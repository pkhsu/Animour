package allPay.payment.integration.domain;

/**
 * @author mark.chiu
 *
 */
public class FundingReconDetailObj {
	
	/**
	 * MerchantID
	 */
	private String MerchantID = "";
	
	/**
	 * PayDateType
	 */
	private String PayDateType = "";
	
	/**
	 * StartDate
	 */
	private String StartDate = "";
	
	/**
	 */
	private String EndDate = "";
	
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
	 * @return PayDateType
	 */
	public String getPayDateType() {
		return PayDateType;
	}
	/**
	 * @param payDateType
	 */
	public void setPayDateType(String payDateType) {
		PayDateType = payDateType;
	}
	/**
	 * @return StartDate
	 */
	public String getStartDate() {
		return StartDate;
	}
	/**
	 * @param startDate
	 */
	public void setStartDate(String startDate) {
		StartDate = startDate;
	}
	/**
	 * @return EndDate
	 */
	public String getEndDate() {
		return EndDate;
	}
	/**
	 * @param endDate
	 */
	public void setEndDate(String endDate) {
		EndDate = endDate;
	}
	@Override
	public String toString() {
		return "FundingReconDetailObj [MerchantID=" + MerchantID + ", PayDateType=" + PayDateType + ", StartDate="
				+ StartDate + ", EndDate=" + EndDate + "]";
	}
}
