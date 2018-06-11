package org.iii.ee100.animour.salon.entity;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="RESERVATIONTIME")
public class ReservationTime extends GenericEntity{
	
	
	
	
	
	
	@Override
	public String toString() {
		return "ReservationTime [frontTime=" + frontTime + ", backTime=" + backTime + "]";
	}

	@Column(name="FRONT_TIME")
	private java.sql.Time frontTime;
	
	@Column(name="BACK_TIME")
	private java.sql.Time backTime;

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((backTime == null) ? 0 : backTime.hashCode());
		result = prime * result + ((frontTime == null) ? 0 : frontTime.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		ReservationTime other = (ReservationTime) obj;
		if (backTime == null) {
			if (other.backTime != null)
				return false;
		} else if (!backTime.equals(other.backTime))
			return false;
		if (frontTime == null) {
			if (other.frontTime != null)
				return false;
		} else if (!frontTime.equals(other.frontTime))
			return false;
		return true;
	}
	

}
