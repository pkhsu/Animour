package org.iii.ee100.animour.hospital.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;

@Data
@Entity
@Table(name="HOSPITAL")
public class Hospital extends GenericEntity{

	@Column(name="NAME")
	String name;
	@Column(name="ENGLISHNAME")
	String englishName;	
	
	@Column(name="TEL")
	String tel;
	@Column(name="ADDRESS")
	String address;
	@Column(name="POSTCODE")
	String postcode;

	
}
