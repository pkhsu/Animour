package org.iii.ee100.animour.salon.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="DESIGNER")
public class Designer extends GenericEntity{
	
	
//	@OneToMany(mappedBy = "designer", cascade = { CascadeType.ALL })
//	private List<ServiceContent> serviceContent;

	
	@Column(name="DESIGNER")
	private String designer;

	
	
	
	
	@Override
	public String toString() {
		return "Designer [designer=" + designer + "]";
	}





	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((designer == null) ? 0 : designer.hashCode());
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
		Designer other = (Designer) obj;
		if (designer == null) {
			if (other.designer != null)
				return false;
		} else if (!designer.equals(other.designer))
			return false;
		return true;
	}

	
	
	

	
	
		
	
}
