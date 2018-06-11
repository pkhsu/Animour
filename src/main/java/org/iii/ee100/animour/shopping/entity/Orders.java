package org.iii.ee100.animour.shopping.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name="ORDERS")
public class Orders extends GenericEntity {
	
	@Column(name="TOTALAMOUNT")
	private Integer totalAmount;
	@Column(name="ORDERDATE")
	private Date orderDate;
	@OneToMany(mappedBy="orders", cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private List<OrdersItem> ordersItem = new ArrayList<OrdersItem>();
	@ManyToOne
	@JoinColumn(name="MEMBER_ID", nullable=false)
	private Member member;
	
//	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
//	@JoinTable(name="PRODUCT_ORDERS",	
//			joinColumns={@JoinColumn(name="ORDERS_ID", referencedColumnName="ID")},
//			inverseJoinColumns= {@JoinColumn(name="PRODUCT_ID", referencedColumnName="ID")})
//	Set<Product> products = new HashSet<Product>();

}
