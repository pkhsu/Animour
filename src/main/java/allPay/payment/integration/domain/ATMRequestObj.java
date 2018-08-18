package allPay.payment.integration.domain;

/**
 * ��ChoosePayment��ATM�ɪ��������G�q������
 * @author mark.chiu
 *
 */
public class ATMRequestObj {
	
	/**
	 * MerchantID
	 * �|���s��
	 */
	private String MerchantID;
	
	/**
	 * MerchantTradeNo
	 * �|������s��
	 */
	private String MerchantTradeNo;
	
	/**
	 * RtnCode
	 * ������A
	 */
	private String RtnCode;
	
	/**
	 * RtnMsg
	 * ����T��
	 */
	private String RtnMsg;
	
	/**
	 * TradeNo
	 * allPay������s��
	 */
	private String TradeNo;
	
	/**
	 * TradeAmt
	 * ������B
	 */
	private String TradeAmt;
	
	/**
	 * PayAmt
	 * ��ڥI�ڪ��B
	 */
	private String PayAmt;
	
	/**
	 * RedeemAmt
	 * �����B
	 */
	private String RedeemAmt;
	
	/**
	 * PaymentType
	 * �|����ܪ��I�ڤ覡
	 */
	private String PaymentType;
	
	/**
	 * TradeDate
	 * �q�榨�߮ɶ�
	 */
	private String TradeDate;
	
	/**
	 * Barcode1
	 * ���X�Ĥ@�q���X
	 */
	private String Barcode1;
	
	/**
	 * Barcode2
	 * ���X�ĤG�q���X
	 */
	private String Barcode2;
	
	/**
	 * Barcode3
	 * ���X�ĤT�q���X
	 */
	private String Barcode3;
	
	/**
	 * CheckMacValue
	 * �ˬd�X
	 */
	private String CheckMacValue;
	
	/**
	 * BankCode
	 * ú�O�Ȧ�N�X
	 */
	private String BankCode;
	
	/**
	 * vAccount
	 * ú�O�����b��
	 */
	private String vAccount;
	
	/**
	 * ExpireDate
	 * ú�O����
	 */
	private String ExpireDate;
	
	/********************* getters and setters *********************/
	
	/**
	 * ���oMerchantID �|���s��
	 * @return MerchantID
	 */
	public String getMerchantID() {
		return MerchantID;
	}
	/**
	 * �]�wMerchantID �|���s��
	 * @param merchantID
	 */
	public void setMerchantID(String merchantID) {
		MerchantID = merchantID;
	}
	/**
	 * ���oMerchantTradeNo �|������s���A�q�沣�ͮɶǰe��O��Pay���|������s���C
	 * @return MerchantTradeNo
	 */
	public String getMerchantTradeNo() {
		return MerchantTradeNo;
	}
	/**
	 * �]�wMerchantTradeNo �|������s���A�q�沣�ͮɶǰe��O��Pay���|������s���C
	 * @param MerchantTradeNo
	 */
	public void setMerchantTradeNo(String merchantTradeNo) {
		MerchantTradeNo = merchantTradeNo;
	}
	/**
	 * ���oRtnCode ������A
	 * @return RtnCode
	 */
	public String getRtnCode() {
		return RtnCode;
	}
	/**
	 * �]�wRtnCode ������A
	 * @param RtnCode
	 */
	public void setRtnCode(String rtnCode) {
		RtnCode = rtnCode;
	}
	/**
	 * ���oRtnMsg ����T��
	 * @return RtnMsg
	 */
	public String getRtnMsg() {
		return RtnMsg;
	}
	/**
	 * �]�wRtnMsg ����T��
	 * @param RtnMsg
	 */
	public void setRtnMsg(String rtnMsg) {
		RtnMsg = rtnMsg;
	}
	/**
	 * ���oTradeNo allPay������s��
	 * @return TradeNo
	 */
	public String getTradeNo() {
		return TradeNo;
	}
	/**
	 * �]�wTradeNo allPay������s��
	 * @param TradeNo
	 */
	public void setTradeNo(String tradeNo) {
		TradeNo = tradeNo;
	}
	/**
	 * ���oTradeAmt ������B
	 * @return TradeAmt
	 */
	public String getTradeAmt() {
		return TradeAmt;
	}
	/**
	 * �]�wTradeAmt ������B
	 * @param TradeAmt
	 */
	public void setTradeAmt(String tradeAmt) {
		TradeAmt = tradeAmt;
	}
	/**
	 * ���oPaymentType �|����ܪ��I�ڤ覡
	 * @return PaymentType
	 */
	public String getPaymentType() {
		return PaymentType;
	}
	/**
	 * �]�wPaymentType �|����ܪ��I�ڤ覡
	 * @param PaymentType
	 */
	public void setPaymentType(String paymentType) {
		PaymentType = paymentType;
	}
	/**
	 * ���oTradeDate �q�榨�߮ɶ�
	 * @return TradeDate
	 */
	public String getTradeDate() {
		return TradeDate;
	}
	/**
	 * �]�wTradeDate �q�榨�߮ɶ�
	 * @param TradeDate
	 */
	public void setTradeDate(String tradeDate) {
		TradeDate = tradeDate;
	}
	/**
	 * ���oCheckMacValue �ˬd�X
	 * @return CheckMacValue
	 */
	public String getCheckMacValue() {
		return CheckMacValue;
	}
	/**
	 * �]�wCheckMacValue �ˬd�X
	 * @param CheckMacValue
	 */
	public void setCheckMacValue(String checkMacValue) {
		CheckMacValue = checkMacValue;
	}
	/**
	 * ���oBankCode ú�O�Ȧ�N�X
	 * @return BankCode
	 */
	public String getBankCode() {
		return BankCode;
	}
	/**
	 * �]�wBankCode ú�O�Ȧ�N�X
	 * @param BankCode
	 */
	public void setBankCode(String bankCode) {
		BankCode = bankCode;
	}
	/**
	 * ���ovAccount ú�O�����b��
	 * @return vAccount
	 */
	public String getvAccount() {
		return vAccount;
	}
	/**
	 * �]�wvAccount ú�O�����b��
	 * @param vAccount
	 */
	public void setvAccount(String vAccount) {
		this.vAccount = vAccount;
	}
	/**
	 * ���oExpireDate ú�O����
	 * @return ExpireDate
	 */
	public String getExpireDate() {
		return ExpireDate;
	}
	/**
	 * �]�wExpireDate ú�O����
	 * @param ExpireDate
	 */
	public void setExpireDate(String expireDate) {
		ExpireDate = expireDate;
	}
	/**
	 * ���oPayAmt ��ڥI�ڪ��B
	 * @return PayAmt
	 */
	public String getPayAmt() {
		return PayAmt;
	}
	/**
	 * �]�wPayAmt ��ڥI�ڪ��B
	 * @param payAmt
	 */
	public void setPayAmt(String payAmt) {
		PayAmt = payAmt;
	}
	/**
	 * ���oRedeemAmt �����B
	 * @return RedeemAmt
	 */
	public String getRedeemAmt() {
		return RedeemAmt;
	}
	/**
	 * �]�wRedeemAmt �����B
	 * @param redeemAmt
	 */
	public void setRedeemAmt(String redeemAmt) {
		RedeemAmt = redeemAmt;
	}
	/**
	 * ���oBarcode1 ���X�Ĥ@�q���X
	 * @return Barcode1
	 */
	public String getBarcode1() {
		return Barcode1;
	}
	/**
	 * �]�wBarcode1 ���X�Ĥ@�q���X
	 * @param barcode1
	 */
	public void setBarcode1(String barcode1) {
		Barcode1 = barcode1;
	}
	/**
	 * ���oBarcode2 ���X�ĤG�q���X
	 * @return Barcode2
	 */
	public String getBarcode2() {
		return Barcode2;
	}
	/**
	 * �]�wBarcode2 ���X�ĤG�q���X
	 * @param barcode2
	 */
	public void setBarcode2(String barcode2) {
		Barcode2 = barcode2;
	}
	/**
	 * ���oBarcode3 ���X�ĤT�q���X
	 * @return Barcode3
	 */
	public String getBarcode3() {
		return Barcode3;
	}
	/**
	 * �]�wBarcode3 ���X�ĤT�q���X
	 * @param barcode3
	 */
	public void setBarcode3(String barcode3) {
		Barcode3 = barcode3;
	}
	@Override
	public String toString() {
		return "ATMRequestObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo + ", RtnCode="
				+ RtnCode + ", RtnMsg=" + RtnMsg + ", TradeNo=" + TradeNo + ", TradeAmt=" + TradeAmt + ", PayAmt="
				+ PayAmt + ", RedeemAmt=" + RedeemAmt + ", PaymentType=" + PaymentType + ", TradeDate=" + TradeDate
				+ ", Barcode1=" + Barcode1 + ", Barcode2=" + Barcode2 + ", Barcode3=" + Barcode3 + ", CheckMacValue="
				+ CheckMacValue + ", BankCode=" + BankCode + ", vAccount=" + vAccount + ", ExpireDate=" + ExpireDate
				+ "]";
	}
}
