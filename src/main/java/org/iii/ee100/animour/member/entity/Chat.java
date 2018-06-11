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
@Table(name = "CHAT")
public class Chat extends GenericEntity{
	
	@ManyToOne
	@JoinColumn(name = "FROM_WHO", referencedColumnName = "ID")
	private Member fromWho;// 發送訊息的member，一定是線上的會員

	@Column(name = "MEMBER_ID")
	private Long memberId;// 接收訊息的會員

	@Column(name = "CHAT_TIME")
	private java.sql.Timestamp chatTime = new Timestamp(System.currentTimeMillis());

	// 是否已讀，預設未讀 = false
	@Column(name = "STATUS")
	private Boolean status = false;

	// 所有歷史訊息內容，整串對話
	@Column(name = "DETAIL")
	private String detail;

	// 單次傳送訊息
	@Transient
	private String message;
	
	// 設定未讀的通知數量
	@Transient
	private Long count;

}
	
