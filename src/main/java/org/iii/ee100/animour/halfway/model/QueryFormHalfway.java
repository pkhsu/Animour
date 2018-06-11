package org.iii.ee100.animour.halfway.model;

import java.util.List;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
public class QueryFormHalfway {

	private List<String> specieitems;

	private List<Long> cityitems;
	
	private List<String> genderitems;
	
	private List<String> sizeitems;
	
	private List<String> ageitems;
	
}
