package org.iii.ee100.animour.shopping.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name="CARTITEM")
public class CartItem extends GenericEntity {
	
	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name="PRODUCT", nullable = false)
	private Product product;
	@Column(name="QUANTITY")
	private Integer quantity;
	
	public CartItem(Product product, Integer quantity) {
		super();
		this.product = product;
		this.quantity = quantity;
	}
	public CartItem() {
		super();
	}
	
}
