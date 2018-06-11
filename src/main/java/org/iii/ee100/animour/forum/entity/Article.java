package org.iii.ee100.animour.forum.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "ARTICLE")
@Setter
@Getter
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Article extends GenericEntity {

	@ManyToOne
	@JoinColumn(name = "CATEGORY_ID", referencedColumnName = "ID")
	@NotNull(message = "category cannot be null")
	private Category category;

	@Column(name = "SUBJECT")
	@NotBlank(message = "subject cannot be blank or null")
	@Size(min = 3, max = 255, message = "subject must be between 10 and 255 characters")
	private String subject;

	@Column(name = "CONTENT", columnDefinition = "TEXT")
//	@NotBlank(message = "content cannot be blank or null")
//	@Size(min = 30, message = "content should not be less than 30 characters")
	private String content;

	@Column(name = "POST_TIME")
	@Past
	private java.sql.Timestamp postTime;

	@Column(name = "UPDATE_TIME")
	@Past
	private java.sql.Timestamp updateTime;

	@ManyToOne
	@JoinColumn(name = "MEMBER_ID", referencedColumnName = "ID")
	private Member member;

	@JsonInclude(JsonInclude.Include.NON_NULL)
	@Column(name = "CLICK")
	private Long click;
	
	@Column(name = "IMAGES")
	private String images;
	
	@Column(name = "STATUS")
	private Boolean status;
	
	@Transient
	private int commentLength;

	@Column(name = "THUMBS_QUANTITY")
	private Integer thumbsQuantity;
	
	@Transient
	private int totalPage;
}
