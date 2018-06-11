package org.iii.ee100.animour.common.security;

import org.iii.ee100.animour.member.dao.MemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class AnimourUserDetailsService implements UserDetailsService {
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public UserDetails loadUserByUsername(String account) throws UsernameNotFoundException {		
		if(memberDao.findByAccount(account)!=null && memberDao.findByAccount(account).getStatus()!=true) {
			throw new BadCredentialsException("此帳號已被封鎖惹喔~");
		}		
		if(memberDao.findByAccount(account)==null ) {
		throw new BadCredentialsException("請確認帳號密碼");
		}
		return memberDao.findByAccount(account);
	}

}
