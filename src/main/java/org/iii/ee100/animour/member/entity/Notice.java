package org.iii.ee100.animour.member.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "NOTICE")
public class Notice extends GenericEntity {

	@ManyToOne
	@JoinColumn(name = "FROM_WHO", referencedColumnName = "ID")
	private Member fromWho;// 發通知的member，一定是線上的會員

	@Column(name = "MEMBER_ID")
	private Long memberId;// 被通知

	@Column(name = "NOTICE_TIME")
	private java.sql.Timestamp noticeTime = new Timestamp(System.currentTimeMillis());

	// 是否已讀，預設未讀 = false
	@Column(name = "STATUS")
	private Boolean status = false;

	@Column(name = "DETAIL")
	private String detail;

	// 設定建立超連結的URL
	@Column(name = "HREF")
	private String href;

	// 設定未讀的通知數量
	@Transient
	private Long count;

}
