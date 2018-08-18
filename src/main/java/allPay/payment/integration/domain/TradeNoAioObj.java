package allPay.payment.integration.domain;

/**
 * �U���|����b�C���ɪ���
 * @author mark.chiu
 *
 */
public class TradeNoAioObj {
	
	/**
	 * MerchantID
	 * �|���s��(��allPay����)
	 */
	private String MerchantID = "";
	
	/**
	 * DateType
	 * �d�ߤ�����O
	 */
	private String DateType = "";
	
	/**
	 * BeginDate
	 * �d�߶}�l���
	 */
	private String BeginDate = "";
	
	/**
	 * EndDate
	 * �d�ߵ�����
	 */
	private String EndDate = "";
	
	/**
	 * PaymentType
	 * �I�ڤ覡
	 */
	private String PaymentType = "";
	
	/**
	 * PlatformStatus
	 * �q������
	 */
	private String PlatformStatus = "";
	
	/**
	 * PaymentStatus
	 * �I�ڪ��A
	 */
	private String PaymentStatus = "";
	
	/**
	 * AllocateStatus
	 * ���ڪ��A
	 */
	private String AllocateStatus = "";
	
	/**
	 * MediaFormated
	 * CSV�榡
	 */
	private String MediaFormated = "";
	
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
	 * ���oDateType �d�ߤ�����O�A�n�d�ߪ�������O
	 * �Y���d�ߥI�ڤ���ɡA�h�Ѽƽбa��
	 * �Y���d�߼��ڤ���ɡA�h�Ѽƽбa��
	 * �Y���d�߰h�ڤ���ɡA�h�Ѽƽбa��
	 * �Y���d�߭q�����ɡA�h�Ѽƽбa��
	 * @return DateType
	 */
	public String getDateType() {
		return DateType;
	}
	/**
	 * �]�wDateType �d�ߤ�����O�A�n�d�ߪ�������O
	 * �Y���d�ߥI�ڤ���ɡA�h�Ѽƽбa��
	 * �Y���d�߼��ڤ���ɡA�h�Ѽƽбa��
	 * �Y���d�߰h�ڤ���ɡA�h�Ѽƽбa��
	 * �Y���d�߭q�����ɡA�h�Ѽƽбa��
	 * @param dateType
	 */
	public void setDateType(String dateType) {
		DateType = dateType;
	}
	/**
	 * ���oBeginDate �d�߶}�l����A����榡���uyyyy-MM-dd�v
	 * @return BeginDate
	 */
	public String getBeginDate() {
		return BeginDate;
	}
	/**
	 * �]�wBeginDate �d�߶}�l����A����榡���uyyyy-MM-dd�v
	 * @param beginDate
	 */
	public void setBeginDate(String beginDate) {
		BeginDate = beginDate;
	}
	/**
	 * ���oEndDate �d�ߵ������A����榡���uyyyy-MM-dd�v
	 * @return EndDate
	 */
	public String getEndDate() {
		return EndDate;
	}
	/**
	 * �]�wEndDate �d�ߵ������A����榡���uyyyy-MM-dd�v
	 * @param endDate
	 */
	public void setEndDate(String endDate) {
		EndDate = endDate;
	}
	/**
	 * ���oPaymentType �I�ڤ覡�A�n�d�߭q�檺�I�ڤ覡 
	 * �Y���H�Υd�ɡA�h�Ѽƽбa01 
	 * �Y�����ATM�ɡA�h�Ѽƽбa02 
	 * �Y��ATM �d�����ɡA�h�Ѽƽбa03 
	 * �Y���W�ӥN�X�ɡA�h�Ѽƽбa04 
	 * �Y���]�I�q�ɡA�h�Ѽƽбa07 
	 * �Y���H�Υd(OTP)�ɡA�h�Ѽƽбa08 
	 * �Y���ڥI�_�b��ɡA�h�Ѽƽбa09 
	 * �Y�������ɡA�Щ������@�Ѽ�
	 * @return PaymentType
	 */
	public String getPaymentType() {
		return PaymentType;
	}
	/**
	 * �]�wPaymentType �I�ڤ覡�A�n�d�߭q�檺�I�ڤ覡 
	 * �Y���H�Υd�ɡA�h�Ѽƽбa01 
	 * �Y�����ATM�ɡA�h�Ѽƽбa02 
	 * �Y��ATM �d�����ɡA�h�Ѽƽбa03 
	 * �Y���W�ӥN�X�ɡA�h�Ѽƽбa04 
	 * �Y���]�I�q�ɡA�h�Ѽƽбa07 
	 * �Y���H�Υd(OTP)�ɡA�h�Ѽƽбa08 
	 * �Y���ڥI�_�b��ɡA�h�Ѽƽбa09 
	 * �Y�������ɡA�Щ������@�Ѽ�
	 * @param paymentType
	 */
	public void setPaymentType(String paymentType) {
		PaymentType = paymentType;
	}
	/**
	 * ���oPlatformStatus �q�������A�n�d�ߪ��q������
	 * �Y���@��ɡA�h�Ѽƽбa1
	 * �Y�����x�ɡA�h�Ѽƽбa2
	 * �Y�������ɡA�Щ������@�Ѽ�
	 * @return PlatformStatus
	 */
	public String getPlatformStatus() {
		return PlatformStatus;
	}
	/**
	 * �]�wPlatformStatus �q�������A�n�d�ߪ��q������
	 * �Y���@��ɡA�h�Ѽƽбa1
	 * �Y�����x�ɡA�h�Ѽƽбa2
	 * �Y�������ɡA�Щ������@�Ѽ�
	 * @param platformStatus
	 */
	public void setPlatformStatus(String platformStatus) {
		PlatformStatus = platformStatus;
	}
	/**
	 * ���oPaymentStatus �I�ڪ��A�A�n�d�ߪ��q��I�ڪ��A 
	 * �Y�����I�ڮɡA�h�Ѽƽбa0 
	 * �Y���w�I�ڮɡA�h�Ѽƽбa1
	 * �Y���q�楢�ѮɡA�h�Ѽƽбa2 
	 * �Y�������ɡA�Щ������@�Ѽ�
	 * @return PaymentStatus
	 */
	public String getPaymentStatus() {
		return PaymentStatus;
	}
	/**
	 * �]�wPaymentStatus �I�ڪ��A�A�n�d�ߪ��q��I�ڪ��A 
	 * �Y�����I�ڮɡA�h�Ѽƽбa0 
	 * �Y���w�I�ڮɡA�h�Ѽƽбa1
	 * �Y���q�楢�ѮɡA�h�Ѽƽбa2 
	 * �Y�������ɡA�Щ������@�Ѽ�
	 * @param paymentStatus
	 */
	public void setPaymentStatus(String paymentStatus) {
		PaymentStatus = paymentStatus;
	}
	/**
	 * ���oAllocateStatus ���ڪ��A�A�n�d�ߪ��q�漷�ڪ��A
	 * �Y�������ڮɡA�h�Ѽƽбa0
	 * �Y���w���ڮɡA�h�Ѽƽбa1
	 * �Y�������ɡA�Щ������@�Ѽ�
	 * @return AllocateStatus
	 */
	public String getAllocateStatus() {
		return AllocateStatus;
	}
	/**
	 * �]�wAllocateStatus ���ڪ��A�A�n�d�ߪ��q�漷�ڪ��A
	 * �Y�������ڮɡA�h�Ѽƽбa0
	 * �Y���w���ڮɡA�h�Ѽƽбa1
	 * �Y�������ɡA�Щ������@�Ѽ�
	 * @param allocateStatus
	 */
	public void setAllocateStatus(String allocateStatus) {
		AllocateStatus = allocateStatus;
	}
	/**
	 * ���oMediaFormated CSV�榡�A�n�U�����ɮ׮榡 
	 * �Y���ª��榡�ɡA�h�Ѽƽбa0 
	 * �Y���s���榡�ɡA�h�Ѽƽбa1
	 * @return MediaFormated
	 */
	public String getMediaFormated() {
		return MediaFormated;
	}
	/**
	 * �]�wMediaFormated CSV�榡�A�n�U�����ɮ׮榡 
	 * �Y���ª��榡�ɡA�h�Ѽƽбa0 
	 * �Y���s���榡�ɡA�h�Ѽƽбa1
	 * @param mediaFormated
	 */
	public void setMediaFormated(String mediaFormated) {
		MediaFormated = mediaFormated;
	}
	@Override
	public String toString() {
		return "TradeNoAioObj [MerchantID=" + MerchantID + ", DateType=" + DateType + ", BeginDate=" + BeginDate
				+ ", EndDate=" + EndDate + ", PaymentType=" + PaymentType + ", PlatformStatus=" + PlatformStatus
				+ ", PaymentStatus=" + PaymentStatus + ", AllocateStatus=" + AllocateStatus + ", MediaFormated="
				+ MediaFormated + "]";
	}
}
