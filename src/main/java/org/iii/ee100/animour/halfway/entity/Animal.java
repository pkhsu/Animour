package org.iii.ee100.animour.halfway.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "ANIMAL")
public class Animal extends GenericEntity{

	@ManyToOne
	// @JoinColumn(name = "MEMBER_ID",referencedColumnName="ID")
	private Member member;

	@JsonIgnore
	@OneToMany(mappedBy = "animal", cascade = { CascadeType.ALL })
	private List<Adoption> adoptions;

	@Column(name = "STATUS") // for system
	private String status = "開放認養";

	@Column(name = "NAME")
	private String name;

	@Column(name = "SPECIE")
	private String specie;

	@Column(name = "COLOR")
	private String color;

	@Column(name = "GENDER")
	private String gender;

	// 張貼時間
	@Column(name = "FOUND")
	private java.sql.Date found;

	// 更新時間(系統時間)
	@Column(name = "UPLOAD") // for system
	private Timestamp upload;

	@ManyToOne
	private City city;

	@Column(name = "DISTRICT")
	private String district;

	//有無就醫紀錄
	@Column(name = "HOSPITALIZED")
	private Boolean hospitalized = false;

	//大型、中型、小型
	@Column(name = "SIZE")
	private String size;
	
	//幼年、成年、老年
	@Column(name = "AGE")
	private String age;
	
	//數量(只限於幼年)
	@Column(name = "COUNT")
	private Integer count;

	//晶片號碼
	@Column(name = "CARD_NUM")
	private String cardNum;

	@Column(name = "NEUTER")
	private Boolean neuter = false;

	//飼主所開認養條件，包含於此
	@Column(name = "REMARK", columnDefinition = "TEXT")
	private String remark;

	//存在CDN的圖片URL
	@Column(name = "FILE_NAME")
	private String fileName;
	
	//是否下架，不刪除
	@Column(name = "DISABLED")
	private Boolean disabled = false;
	
	//接收byte陣列傳來的大頭貼，但只存檔名
	@Transient
	private String avatar;
	
}
