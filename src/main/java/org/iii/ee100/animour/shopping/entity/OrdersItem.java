package org.iii.ee100.animour.shopping.entity;

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
@Table(name="ORDERSITEM")
public class OrdersItem extends GenericEntity {
	
	@Column(name="NAME")
	private String name; //商品名稱
	@Column(name="PRICE")
	private Integer price; //商品單價
	@Column(name="QUANTITY")
	private Integer quantity; //購買商品數量
	@Column(name="CLASSIFY")
	private String classify; //購買商品類別
	@ManyToOne
	@JoinColumn(name="ORDERS_ID", nullable=false)
	private Orders orders;
	
//	@ManyToOne(cascade = CascadeType.PERSIST)
//	@JoinColumn(name="ORDER_ID", nullable = false)
//	private Orders orders;
//	@ManyToOne(cascade = CascadeType.PERSIST)
//	@JoinColumn(name="CARTITEM_ID", nullable = false)
//	private CartItem cartItem;
	
}
