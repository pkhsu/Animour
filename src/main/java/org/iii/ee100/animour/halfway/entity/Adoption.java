
package org.iii.ee100.animour.halfway.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "ADOPTION")
public class Adoption extends GenericEntity {
	// 提出認養的人
	@OneToOne
	// @JoinColumn(name = "user_id", nullable = false)
	private Member member;

	// 想要認養的動物
	@ManyToOne
	private Animal animal;

	// 動物的主人的 ID
	@Column(name = "OWNER_ID")
	private Long ownerId;

	// 提出認養的時間
	@Column(name = "REQUEST_DATE")
	private Timestamp requestDate;

	// 提出認養時的意見
	@Column(name = "REQUEST_COMMENT", columnDefinition = "TEXT")
	private String requestComment;

	// 會員認養觀念檢測分數
	@Column(name = "SCORE")
	private Integer score;

	// 紀錄主人是否接受認養要求
	@Column(name = "ACCEPT_REQUEST")
	private Boolean acceptRequest;

	// 訂單成立時間(接受認養時間)
	@Column(name = "ACCEPT_DATE")
	private Timestamp acceptDate;

	// 儲存對應的認養紀錄
	@OneToOne
	private AcceptRecord acceptRecord;
}
