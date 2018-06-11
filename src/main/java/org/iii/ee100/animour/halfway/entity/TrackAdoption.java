package org.iii.ee100.animour.halfway.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name="TRACK_ADOPTION")
public class TrackAdoption extends GenericEntity{
	
	@Column(name="ADOPTION_ID")
	private Long adoptionId;

}
