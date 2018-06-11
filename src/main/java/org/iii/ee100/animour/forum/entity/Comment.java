package org.iii.ee100.animour.forum.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.NotBlank;
import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "COMMENT")
@Setter
@Getter
public class Comment extends GenericEntity {

	@ManyToOne
	@JoinColumn(name = "ARTICLE_ID", referencedColumnName = "ID")
	private Article article;

	@ManyToOne
	@JoinColumn(name = "MEMBER_ID", referencedColumnName = "ID")
	private Member member;

	@Column(name = "DETAIL", columnDefinition = "TEXT")
	@NotBlank
	private String detail;

	@Column(name = "UPDATE_TIME")
	@Past
	private java.sql.Timestamp updateTime;

}
