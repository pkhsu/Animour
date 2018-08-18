package allPay.payment.integration.domain;

/**
 * �H�Υd���b/�h��/����/��󪫥�
 * @author mark.chiu
 *
 */
public class DoActionObj {
	
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
	 * TradeNo
	 * allPay������s��
	 */
	private String TradeNo = "";
	
	/**
	 * Action
	 * ����ʧ@
	 */
	private String Action = "";
	
	/**
	 * TotalAmount
	 * ���B
	 */
	private String TotalAmount = "";
	
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
	 * ���oTradeNo O��Pay������s��
	 * @return TradeNo
	 */
	public String getTradeNo() {
		return TradeNo;
	}
	/**
	 * �]�wTradeNo O��Pay������s��
	 * @param tradeNo
	 */
	public void setTradeNo(String tradeNo) {
		TradeNo = tradeNo;
	}
	/**
	 * ���oAction ����ʧ@�A�w��q�氵�B�z���ʧ@�A�Ҧp�n��q�氵���b�ɡA�бaC�C
	 * ��.�Y�n�������b�ɡA�Ѽƽбa�GC
	 * ��.�Y�n����h��ɡA�Ѽƽбa�GR
	 * ��.�Y�n��������ɡA�Ѽƽбa�GE
	 * ��.�Y�n������ɡA�Ѽƽбa�GN
	 * @return Action
	 */
	public String getAction() {
		return Action;
	}
	/**
	 * �]�wAction ����ʧ@�A�w��q�氵�B�z���ʧ@�A�Ҧp�n��q�氵���b�ɡA�бaC�C
	 * ��.�Y�n�������b�ɡA�Ѽƽбa�GC
	 * ��.�Y�n����h��ɡA�Ѽƽбa�GR
	 * ��.�Y�n��������ɡA�Ѽƽбa�GE
	 * ��.�Y�n������ɡA�Ѽƽбa�GN
	 * @param action
	 */
	public void setAction(String action) {
		Action = action;
	}
	/**
	 * ���oTotalAmount ���B
	 * @return TotalAmount
	 */
	public String getTotalAmount() {
		return TotalAmount;
	}
	/**
	 * �]�wTotalAmount ���B
	 * @param totalAmount
	 */
	public void setTotalAmount(String totalAmount) {
		TotalAmount = totalAmount;
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
		return "DoActionObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo + ", TradeNo=" + TradeNo
				+ ", Action=" + Action + ", TotalAmount=" + TotalAmount + ", PlatformID=" + PlatformID + "]";
	}
	
}
