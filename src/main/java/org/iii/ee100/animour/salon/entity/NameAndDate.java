package org.iii.ee100.animour.salon.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class NameAndDate {
	
	@JsonProperty("appointDate")
	private java.util.Date appointDate;
	
	@JsonProperty("designer")
	private String designer;

}
