package org.iii.ee100.animour.hospital.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="OUTPATIENT")
public class Outpatient {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	Long id;
	@Column(name="HOSPITAL_ID")
	Long hospital_id;
	
	@Column(name="SUBJECT")
	String subject;/*科別*/	
	
	@Column(name="NAME")
	String Name; /*醫師名字*/
	
	@Column(name="OPENDATE")
	java.sql.Date opendate; /*開診日期*/
	
	@Column(name="SHIFTS")
	String shifts; /*開診時間(早午晚)*/

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getHospital_id() {
		return hospital_id;
	}

	public void setHospital_id(Long hospital_id) {
		this.hospital_id = hospital_id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public java.sql.Date getOpendate() {
		return opendate;
	}

	public void setOpendate(java.sql.Date opendate) {
		this.opendate = opendate;
	}

	public String getShifts() {
		return shifts;
	}

	public void setShifts(String shifts) {
		this.shifts = shifts;
	}

	
	
}
