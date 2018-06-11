package org.iii.ee100.animour.halfway.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "ACCEPT_RECORD")
public class AcceptRecord extends GenericEntity {

	// 認養程序開始時間(接受認養時間)
	@NotNull
	@Column(name = "START_DATE")
	private Timestamp startDate;

	// 認養程序截止時間
	@Column(name = "END_DATE")
	private Timestamp endDate = startDate;

	// 訂單處理狀態
	@Column(name = "STATUS")
	private String status;

	// 飼主是否繳納押金，當付款成功，資料回來的時候
	@Column(name = "DEPOSIT_OWNER")
	private Boolean depositOwner = false;

	// 飼主繳納押金時間
	@Column(name = "DEPOSIT_OWNER_DATE")
	private Timestamp depositOwnerDate;

	// 會員是否繳納押金
	@Column(name = "DEPOSIT_MEMBER")
	private Boolean depositMember = false;

	// 會員繳納押金時間
	@Column(name = "DEPOSIT_MEMBER_DATE")
	private Timestamp depositMemberDate;

	// 飼主確認程序是否完成，前端傳值
	@Column(name = "DONE_OWNER")
	private Boolean doneOwner;

	// 飼主確認程序完成時間
	@Column(name = "DONE_OWNER_DATE")
	private Timestamp doneOwnerDate;

	// 會員確認程序是否完成，前端傳值
	@Column(name = "DONE_MEMBER")
	private Boolean doneMember;

	// 會員確認程序完成時間
	@Column(name = "DONE_MEMBER_DATE")
	private Timestamp doneMemberDate;

	// 飼主對本次交易的回饋意見，前端傳值
	@Column(name = "FEEDBACK_OWNER")
	private String feedbackOwner;

	// 會員對本次交易的回饋意見，前端傳值
	@Column(name = "FEEDBACK_MEMBER")
	private String feedbackMember;

	// 交易完成後的認證照片URL，前端傳值
	@Column(name = "FEEDBACK_IMAGE")
	private String feedbackImages;

	// 認養程序是否成功，並判斷有無被檢舉
	@Column(name = "SUCCESS")
	private Boolean success;

	// 退還押金是否成功
	@Column(name = "CHANGEBACK")
	private Boolean changeback;

	// 飼主ID
	@Column(name = "OWNER_ID")
	private Long ownerId;

	// 認養人ID
	@Column(name = "MEMBER_ID")
	private Long memberId;
	
	

	@OneToOne
	private Adoption adoption;
}
