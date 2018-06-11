package org.iii.ee100.animour.halfway.model;

import javax.validation.constraints.NotNull;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
public class Quiz extends GenericEntity{

	private String question;
	
	@NotNull
	private Boolean youranswer;
	
	private Boolean correct = true;
	
}
