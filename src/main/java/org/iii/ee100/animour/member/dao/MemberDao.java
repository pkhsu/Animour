package org.iii.ee100.animour.member.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDao extends GenericDao<Member>{

	Member findByAccount(String account);

	Member findByEmail(String email);
	
	//From member where role=? order by id;
	List<Member> findByRoleOrderById(String role);
	
	//From member where role=? and status=? order by id;
	List<Member> findByRoleAndStatusOrderById(String role,Integer status);

}
