package org.iii.ee100.animour.shopping.web.utility;

public class pageUtility {
	//pageNumber Utility
	public static int getPageNumber(String pageNoStr) {
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(pageNoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		if(pageNo < 1 ) {
			pageNo = 1;
		}
		return pageNo;
	}
}
