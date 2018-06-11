package org.iii.ee100.animour.member;

import javax.validation.constraints.Pattern;

public class Password {
	
	
	private String oldpassword;

	@Pattern(regexp = "^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{3,10}$", message = "請輸入大小寫字母和數字,且長度在3-10之間")
	private String newpassword;
	
	public String getOldpassword() {
		return oldpassword;
	}
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
}
