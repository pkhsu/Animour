package allPay.payment.integration.domain;

/**
 * �d�߫H�Υd�浧���ӰO��
 * @author mark.chiu
 *
 */
public class QueryTradeObj {
	
	/**
	 * MerchantID
	 * �|���s��(��allPay����)
	 */
	private String MerchantID = "";
	
	/**
	 * CreditRefundId
	 * �H�Υd���v�渹
	 */
	private String CreditRefundId = "";
	
	/**
	 * CreditAmount
	 * ���B
	 */
	private String CreditAmount = "";
	
	/**
	 * CreditCheckCode
	 * �Ӯa�ˬd�X�b�t�ӫ�x->�H�Υd����->�H�Υd���v��T���i�d��
	 */
	private String CreditCheckCode = "";
	
	/********************* getters and setters *********************/
	
	/**
	 * ���oMerchantID �|���s��(��O��Pay����)
	 * @return MerchantID
	 */
	public String getMerchantID() {
		return MerchantID;
	}
	/**
	 * �]�wMerchantID �|���s��(��O��Pay����)
	 * @param merchantID
	 */
	public void setMerchantID(String merchantID) {
		MerchantID = merchantID;
	}
	/**
	 * ���oCreditRefundId �H�Υd���v�渹
	 * @return CreditRefundId
	 */
	public String getCreditRefundId() {
		return CreditRefundId;
	}
	/**
	 * �]�wCreditRefundId �H�Υd���v�渹
	 * @param creditRefundId
	 */
	public void setCreditRefundId(String creditRefundId) {
		CreditRefundId = creditRefundId;
	}
	/**
	 * ���oCreditAmount ���B
	 * @return CreditAmount
	 */
	public String getCreditAmount() {
		return CreditAmount;
	}
	/**
	 * �]�wCreditAmount ���B
	 * @param creditAmount
	 */
	public void setCreditAmount(String creditAmount) {
		CreditAmount = creditAmount;
	}
	/**
	 * ���oCreditCheckCode �Ӯa�ˬd�X�b�t�ӫ�x->�H�Υd����->�H�Υd���v��T���i�d��
	 * @return CreditCheckCode
	 */
	public String getCreditCheckCode() {
		return CreditCheckCode;
	}
	/**
	 * �]�wCreditCheckCode �Ӯa�ˬd�X�b�t�ӫ�x->�H�Υd����->�H�Υd���v��T���i�d��
	 * @param creditCheckCode
	 */
	public void setCreditCheckCode(String creditCheckCode) {
		CreditCheckCode = creditCheckCode;
	}
	@Override
	public String toString() {
		return "QueryTradeObj [MerchantID=" + MerchantID + ", CreditRefundId=" + CreditRefundId + ", CreditAmount="
				+ CreditAmount + ", CreditCheckCode=" + CreditCheckCode + "]";
	}
}
