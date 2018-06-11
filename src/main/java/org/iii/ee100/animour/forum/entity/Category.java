package org.iii.ee100.animour.forum.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotBlank;
import org.iii.ee100.animour.common.entity.GenericEntity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "CATEGORY")
@Setter
@Getter
public class Category extends GenericEntity {

	@Column(name = "NAME", unique = true)
	@NotBlank(message = "name cannot be blank or null")
	private String name;

	@JsonIgnore
	@Transient
	private int articleQuantity;

}
