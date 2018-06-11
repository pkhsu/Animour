package org.iii.ee100.animour.hospital.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Appointment {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	Long  id;
	
	@Column(name="NAME")
	String name;//姓名
	@Column(name="CELL")
	String cell;//手機
	@Column(name="EMAIL")
	String email;//信箱
	
	@Column(name="HOSPITAL_ID")
	Long hospital_id;//信箱
			
	
	@Column(name="TARGETTIME")
	private java.sql.Date targetTime;//預約時間

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCell() {
		return cell;
	}

	public void setCell(String cell) {
		this.cell = cell;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public java.sql.Date getTargetTime() {
		return targetTime;
	}

	public void setTargetTime(Date targetTime) {
		this.targetTime = (java.sql.Date) targetTime;
	}

	public Long getHospital_id() {
		return hospital_id;
	}

	public void setHospital_id(Long hospital_id) {
		this.hospital_id = hospital_id;
	}

	@Override
	public String toString() {
		return "Appointment [id=" + id + ", name=" + name + ", cell=" + cell + ", email=" + email + ", hospital_id="
				+ hospital_id + ", targetTime=" + targetTime + "]";
	}

	
	
	
	
}
