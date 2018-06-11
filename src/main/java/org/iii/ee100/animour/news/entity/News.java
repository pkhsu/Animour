package org.iii.ee100.animour.news.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="NEWS")
public class News extends GenericEntity{
	
	@Column(name="SUBJECT")
	private String subject;
	@Column(name="EVENT_DATE")
	private java.sql.Date eventDate;
	@Column(name="EVENT_TIME")
	private String eventTime;
	@Column(name="ADDRESS")
	private String address;
	@Column(name="CONTENT")
	private String content;
	@Column(name="PUBLISH_DATE")
	private java.sql.Date publishDate;
	@Column(name="PUBLISH_EXPIRE")
	private java.sql.Date publishExpire;
	@Column(name="CREATE_USER")
	private String createUser;
	@Column(name="CREATE_TIME")
	private java.sql.Timestamp createTime;
	@Column(name="UPDATE_USER")
	private String updateUser;
	@Column(name="UPDATE_TIME")
	private java.sql.Timestamp updateTime;
	@Column(name="TICKET_PRICE")
	private Integer ticketPrice;
	@Column(name="TICKET_QUANTITY")
	private Integer ticketQuantity;
	@Column(name="STOCK")
	private Integer stock;
//	@Column(name="PAGE_VIEW")
//	private int pageView;
	@Column(name="IS_DEL")
	private String isDel;
	@Column(name="IS_ON")
	private String isOn;
	@Column(name="IMAGES")
	private String images;
	
	@ManyToOne
	@JoinColumn(name="MEMBER_ID")
	private Member member;
	

}
