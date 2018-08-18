package allPay.payment.integration.domain;

/**
 * �|���ӽм���/�h�ڪ���
 * @author mark.chiu
 *
 */
public class CaptureObj {
	
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
	 * CaptureAMT
	 * �|���ӽм��ڪ��B
	 */
	private String CaptureAMT = "";
	
	/**
	 * UserRefundAMT
	 * �n�h�ڵ��R�誺���B
	 */
	private String UserRefundAMT = "";
	
	/**
	 * PlatformID
	 * �S���X�@���x�ӥN��(��allPay����)
	 */
	private String PlatformID = "";
	
	/**
	 * UpdatePlatformChargeFee
	 * �O�_���S���X�@���x�Ӥ���O
	 */
	private String UpdatePlatformChargeFee = "";
	
	/**
	 * PlatformChargeFee
	 * �S���X�@���x�Ӥ���O
	 */
	private String PlatformChargeFee = "";
	
	/**
	 * Remark
	 * �Ƶ�
	 */
	private String Remark = "";
	
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
	 * ���oCaptureAMT �|���ӽм��ڪ��B
	 * @return CaptureAMT
	 */
	public String getCaptureAMT() {
		return CaptureAMT;
	}
	/**
	 * �]�wCaptureAMT �|���ӽм��ڪ��B
	 * @param captureAMT
	 */
	public void setCaptureAMT(String captureAMT) {
		CaptureAMT = captureAMT;
	}
	/**
	 * ���oUserRefundAMT �n�h�ڵ��R�誺���B�A�Y���ݭn�B�z�h�ڵ��R��A�бa0�A
	 * �u�q�������B�v�����u���n����O�v��A���ڵ����x�|���C
	 *  �`�N�ƶ��G
	 *   ���Y�ݭn�B�z���B�γ����h�ڵ��R��ɡA�бa���ѼơC���Ľd��0��q�������B�C 
	 *   ���|���ӽм��ڪ��B[CaptureAMT] +�n�h�ڵ��R�誺���B[UserRefundAMT] = �q�������B�C
	 * @return UserRefundAMT
	 */
	public String getUserRefundAMT() {
		return UserRefundAMT;
	}
	/**
	 * �]�wUserRefundAMT �n�h�ڵ��R�誺���B�A�Y���ݭn�B�z�h�ڵ��R��A�бa0�A
	 * �u�q�������B�v�����u���n����O�v��A���ڵ����x�|���C
	 *  �`�N�ƶ��G
	 *   ���Y�ݭn�B�z���B�γ����h�ڵ��R��ɡA�бa���ѼơC���Ľd��0��q�������B�C 
	 *   ���|���ӽм��ڪ��B[CaptureAMT] +�n�h�ڵ��R�誺���B[UserRefundAMT] = �q�������B�C
	 * @param userRefundAMT
	 */
	public void setUserRefundAMT(String userRefundAMT) {
		UserRefundAMT = userRefundAMT;
	}
	/**
	 * ���oPlatformID �S���X�@���x�ӥN��(��O'Pay����)
	 * @return PlatformID
	 */
	public String getPlatformID() {
		return PlatformID;
	}
	/**
	 * �]�wPlatformID �S���X�@���x�ӥN��(��O'Pay����)
	 * @param platformID
	 */
	public void setPlatformID(String platformID) {
		PlatformID = platformID;
	}
	/**
	 * ���oUpdatePlatformChargeFee �O�_���S���X�@���x�Ӥ���O�A�w�]��N�C
	 * �Y���x���ݭn���u�q�沣�͡v�ɪ��S���X�@���x�Ӥ���O[PlatformChargeFee]�ɡG 
	 * �Y�����ɡA�Ѽƽбa�GN�C 
	 * �Y�n���ɡA�Ѽƽбa�GY�C 
	 * �`�N�ƶ��G �����ѼƬ��M�צX�@�����x�ӨϥΡA�@��|�������Щ�ŭȡC
	 * @return UpdatePlatformChargeFee
	 */
	public String getUpdatePlatformChargeFee() {
		return UpdatePlatformChargeFee;
	}
	/**
	 * �]�wUpdatePlatformChargeFee �O�_���S���X�@���x�Ӥ���O�A�w�]��N�C
	 * �Y���x���ݭn���u�q�沣�͡v�ɪ��S���X�@���x�Ӥ���O[PlatformChargeFee]�ɡG 
	 * �Y�����ɡA�Ѽƽбa�GN�C 
	 * �Y�n���ɡA�Ѽƽбa�GY�C 
	 * �`�N�ƶ��G �����ѼƬ��M�צX�@�����x�ӨϥΡA�@��|�������Щ�ŭȡC
	 * @param updatePlatformChargeFee
	 */
	public void setUpdatePlatformChargeFee(String updatePlatformChargeFee) {
		UpdatePlatformChargeFee = updatePlatformChargeFee;
	}
	/**
	 * ���oPlatformChargeFee �S���X�@���x�Ӥ���O�A�Y[UpdatePlatformChargeFee]�]�w��Y�ɡA�бa���ѼơC
	 * �Ҧp�G�Y�]�����B�h�ڵ��R��A�p�G�����q�檺�u�S���X�@���x�Ӥ���O�v�������ܡA�бa0�C
	 * �`�N�ƶ��G
	 * �����Ľd��0��q�沣�ͮɪ��S���X�@���x�Ӥ���O�C
	 * �����ѼƬ��M�צX�@�����x�ӨϥΡA�@��|�������Щ�ŭȡC
	 * @return PlatformChargeFee
	 */
	public String getPlatformChargeFee() {
		return PlatformChargeFee;
	}
	/**
	 * �]�wPlatformChargeFee �S���X�@���x�Ӥ���O�A�Y[UpdatePlatformChargeFee]�]�w��Y�ɡA�бa���ѼơC
	 * �Ҧp�G�Y�]�����B�h�ڵ��R��A�p�G�����q�檺�u�S���X�@���x�Ӥ���O�v�������ܡA�бa0�C
	 * �`�N�ƶ��G
	 * �����Ľd��0��q�沣�ͮɪ��S���X�@���x�Ӥ���O�C
	 * �����ѼƬ��M�צX�@�����x�ӨϥΡA�@��|�������Щ�ŭȡC
	 * @param platformChargeFee
	 */
	public void setPlatformChargeFee(String platformChargeFee) {
		PlatformChargeFee = platformChargeFee;
	}
	/**
	 * ���oRemark �Ƶ�
	 * @return Remark
	 */
	public String getRemark() {
		return Remark;
	}
	/**
	 * �]�wRemark �Ƶ�
	 * @param remark
	 */
	public void setRemark(String remark) {
		Remark = remark;
	}
	@Override
	public String toString() {
		return "CaptureObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo + ", CaptureAMT="
				+ CaptureAMT + ", UserRefundAMT=" + UserRefundAMT + ", PlatformID=" + PlatformID
				+ ", UpdatePlatformChargeFee=" + UpdatePlatformChargeFee + ", PlatformChargeFee=" + PlatformChargeFee
				+ ", Remark=" + Remark + "]";
	}
}
