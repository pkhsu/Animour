package org.iii.ee100.animour.member.entity;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.forum.entity.Category;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "MEMBER")
public class Member extends GenericEntity implements UserDetails {
	
	
	
	@Override
	public String toString() {
		return "Member [account=" + account + ", password=" + password + ", name=" + name + ", nickname=" + nickname
				+ ", cell=" + cell + ", email=" + email + ", address=" + address + ", signature=" + signature
				+ ", registrationTime=" + registrationTime + ", loginTime=" + loginTime + ", freq=" + freq + ", status="
				+ status + ", role=" + role + "]";
	}

	@Pattern(regexp = "^[A-Za-z0-9]+", message = "請輸入字母或數字")
	@Column(name = "ACCOUNT")
	private String account;// 帳號
	
	//	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*[0-9]).{3,10}$", message = "請輸入大小寫字母和數字,且長度在3-10之間")
	@JsonIgnore
	@Pattern(regexp = "^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{3,}$", message = "請輸入大小寫字母和數字,且長度至少3")
	@Column(name = "PASSWORD",length=80)
	private String password;// 密碼

	@JsonIgnore
	@NotBlank(message="enter your name")
	@Column(name = "NAME")
	private String name;// 姓名
	
	
	@NotBlank(message="enter your nickname")
	@Column(name = "NICKNAME")
	private String nickname;// 暱稱

	@JsonIgnore
	@Pattern(regexp ="^09[0-9]{2}-[0-9]{6}$",message="Invalid cell 09xx-xxxxxx")
	@Column(name = "CELL")
	private String cell;// 手機
	
	@JsonIgnore
	@Pattern(regexp = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$", message = "Invalid email")
	@Column(name = "EMAIL")
	private String email;// 信箱
	
	@Column(name = "ADDRESS")
	private String address;// 地址
	
	@Column(name = "SIGNATURE", columnDefinition = "TEXT")//簽名檔
	private String signature;

	@Column(name="IMAGES")
	private String images;
	
	//後台管理
	@Column(name = "REGISTRATIONTIME")
	private java.sql.Timestamp registrationTime;//註冊時間		
	
	@Column(name = "LOGINTIME")
	private java.sql.Timestamp loginTime;//登入時間
	
	@Column(name = "FREQ")
	private Integer freq; 	//登入次數
	
	@Column(name = "STATUS")//(0:封鎖不予登入,1:使用)
	private Boolean status;
	
	@Column(name = "ROLE")//("member","admin")
	private String role;
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> authorities = new ArrayList<>();
		GrantedAuthority auth = new SimpleGrantedAuthority("ROLE_Member");
		if(account.equals("Admin")) {
			auth = new SimpleGrantedAuthority("ROLE_Admin");
		}		
		authorities.add(auth);
		return authorities;
	}

	@Override
	public String getUsername() {
		return account;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {

		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	
}
