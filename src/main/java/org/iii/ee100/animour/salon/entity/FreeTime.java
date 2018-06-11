package org.iii.ee100.animour.salon.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;

@Data
@Entity
@Table(name="FREETIME")
public class FreeTime extends GenericEntity{

	@Column(name="APPOINT_DATE")
	private java.util.Date appointDate;
	
	@Column(name="FRONT_TIME")
	private java.sql.Time frontTime;
	
	@Column(name="DESIGNER")
	private String designer;
	
	@Column(name="STATUS")
	private String status;
	
	
}
