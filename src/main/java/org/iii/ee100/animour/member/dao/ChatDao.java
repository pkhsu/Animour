package org.iii.ee100.animour.member.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.member.entity.Chat;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.stereotype.Repository;

@Repository
public interface ChatDao extends GenericDao<Chat>{
												//被通知        true
	//Integer countStatusByMemberIdAndStatus(Long memberId,Boolean Status);
	
	List<Chat> findByMemberIdAndFromWho(Long memberId, Member fromWho);
}

