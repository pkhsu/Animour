package org.iii.ee100.animour.salon.entity;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.data.annotation.Transient;



@Entity
@Table(name="RESERVATION")
public class Reservation extends GenericEntity{
	
	
	
	@Override
	public String toString() {
		return "Reservation [reservationDate=" + reservationDate + ", frontTime=" + frontTime + ", content="
				+ content + ", designer=" + designer + ", totalTime=" + totalTime + ", price=" + price + "]";
	}
	@ManyToOne
	@JoinColumn(name = "MEMBER_ID", referencedColumnName = "ID")
	private Member member; 

	

	@Column(name="RESERVATION_DATE")
	private java.util.Date reservationDate;
	
	@Column(name="FRONT_TIME")
	private java.sql.Time frontTime;
	
	@Column(name="CONTENT")
	private String content;
	
	@Column(name="DESIGNER")
	private String designer;
	@Column(name="TOTAL_TIME")
	private Integer totalTime;
	
	@Column(name="PRICE")
	private Integer price;
	
	@Column(name="PAYMENT")
	private String payment;
	
	@Column(name="APPOINT_DATE")
	private String appointDate;

	public Date getReservationDate() {
		return reservationDate;
	}

	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}

	public java.sql.Time getFrontTime() {
		return frontTime;
	}

	public void setFrontTime(java.sql.Time frontTime) {
		this.frontTime = frontTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDesigner() {
		return designer;
	}

	public void setDesigner(String designer) {
		this.designer = designer;
	}

	public Integer getTotalTime() {
		return totalTime;
	}

	public void setTotalTime(Integer totalTime) {
		this.totalTime = totalTime;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getAppointDate() {
		return appointDate;
	}

	public void setAppointDate(String appointDate) {
		this.appointDate = appointDate;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	
	
	
	
}
