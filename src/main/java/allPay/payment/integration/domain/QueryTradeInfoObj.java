package allPay.payment.integration.domain;

/**
 * �d�߭q�檫��
 * @author mark.chiu
 *
 */
public class QueryTradeInfoObj {
	
	/**
	 * MerchantID
	 * �|���s��(��allPay����)
	 */
	private String MerchantID = "";
	
	/**
	 * MerchantTradeNo
	 * �|������s��
	 */
	private String MerchantTradeNo = "";
	
	/**
	 * TimeStamp
	 * ���Үɶ�
	 */
	private String TimeStamp = "";
	
	/**
	 * PlatformID
	 * �S���X�@���x�ӥN��(��allPay����)
	 */
	private String PlatformID = "";
	
	/********************* getters and setters *********************/
	
	
	/**
	 * ���oMerchantID �|���s��(��O'Pay����)�A�����x���S���X�@���x���إ߭q��ɡA�����~���ġC�@�륭�x�ӽЩ��������
	 * @return MerchantID
	 */
	public String getMerchantID() {
		return MerchantID;
	}
	/**
	 * �]�wMerchantID �|���s��(��O'Pay����)�A�����x���S���X�@���x���إ߭q��ɡA�����~���ġC�@�륭�x�ӽЩ��������
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
	 * @param merchantTradeNo
	 */
	public void setMerchantTradeNo(String merchantTradeNo) {
		MerchantTradeNo = merchantTradeNo;
	}
	/**
	 * ���oTimeStamp ���Үɶ�
	 * @return TimeStamp
	 */
	public String getTimeStamp() {
		return TimeStamp;
	}
	/**
	 * �]�wTimeStamp ���Үɶ�
	 * @param timeStamp
	 */
	public void setTimeStamp(String timeStamp) {
		TimeStamp = timeStamp;
	}
	/**
	 * ���oPlatformID �S���X�@���x�ӥN��(��O��Pay����)
	 * @return PlatformID
	 */
	public String getPlatformID() {
		return PlatformID;
	}
	/**
	 * �]�wPlatformID �S���X�@���x�ӥN��(��O��Pay����)
	 * @param platformID
	 */
	public void setPlatformID(String platformID) {
		PlatformID = platformID;
	}
	@Override
	public String toString() {
		return "QueryTradeInfoObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo + ", TimeStamp="
				+ TimeStamp + ", PlatformID=" + PlatformID + "]";
	}
}
