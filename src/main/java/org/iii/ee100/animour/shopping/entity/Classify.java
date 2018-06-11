package org.iii.ee100.animour.shopping.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name="CLASSIFY")
public class Classify extends GenericEntity {
	
	@Column(name="NAME", length = 50, nullable = false)
	private String name;
	
//	@OneToMany(mappedBy="classify", cascade=CascadeType.ALL, fetch=FetchType.EAGER)
//	private Set<Product> product;
	
}
