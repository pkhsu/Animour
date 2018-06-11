package org.iii.ee100.animour.common.entity;


import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PageInfo {

	private Integer pageNumber;
	
	private Integer size;
	
	public PageInfo() {}
	
	public PageInfo(Integer number, Integer size) {
		this.pageNumber = number;
		this.size = size;	
	}
}
