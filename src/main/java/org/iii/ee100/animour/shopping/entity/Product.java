package org.iii.ee100.animour.shopping.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "PRODUCT")
public class Product extends GenericEntity {

	@Column(name = "NAME", length = 50, nullable = false)
	private String name;
	@Column(name = "PRICE", nullable = false)
	private Integer price;
	@Column(name = "STOCK", nullable = false)
	private Integer stock;
	@Column(name = "MAKE_DATE", nullable = false)
	private java.sql.Date makeDate;
	@Column(name = "EXPIRE", nullable = false)
	private Integer expire;
	@Column(name = "SHELVES_DATE", nullable = false)
	private java.sql.Date shelvesDate;
	@Column(name = "DESCRIPTION", length = 2000)
	private String description;
	@Column(name = "NOTICE", length = 2000)
	private String notice;
	@Column(name = "IMAGES")
	private String images;
//	@Column(name="COVERIMAGES")
//	private Blob coverImages;
//	@Transient
//	private MultipartFile photo;
	
	@ManyToOne
	@JoinColumn(name = "CLASSIFY_ID", referencedColumnName = "ID", nullable = false)
	private Classify classify;
	@ManyToOne
	@JoinColumn(name="MEMBER_ID", referencedColumnName = "ID", nullable = false)
	private Member member;

//	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
//	@JoinTable(name = "PRODUCT_ORDERS",
//			joinColumns = {@JoinColumn(name = "PRODUCT_ID", referencedColumnName = "ID")},
//			inverseJoinColumns = {@JoinColumn(name = "ORDERS_ID", referencedColumnName = "ID")})
//	private Set<Orders> orders = new HashSet<Orders>();

}
