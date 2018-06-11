package org.iii.ee100.animour.common.model;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PageForAnimour {

	int pageNo;

	int size;

	Sort.Direction direction;
	
	String directionString;
	
	String properties;

	public PageRequest getPageRequest() {
		if (this.size == 0) {
			this.setSize(3);
		}
		if (this.pageNo == 0) {
			this.setPageNo(1);
		}
		if (this.directionString == null || this.properties == null) {
			return new PageRequest(this.pageNo - 1, this.size);
		} else {
			if(directionString.equalsIgnoreCase("ASC")) {
				this.setDirection(Direction.ASC);
			}else {
				this.setDirection(Direction.DESC);
			}
			Sort sort = new Sort(this.direction, this.properties);			
			return new PageRequest(this.pageNo - 1, this.size, sort);
		}
	}
}
