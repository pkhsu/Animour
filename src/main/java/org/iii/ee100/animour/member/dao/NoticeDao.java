package org.iii.ee100.animour.member.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.member.entity.Notice;
import org.springframework.stereotype.Repository;

@Repository
public interface NoticeDao extends GenericDao<Notice>{
												//被通知        true
	//Integer countStatusByMemberIdAndStatus(Long memberId,Boolean Status);
	
	Long countByMemberIdAndStatus(Long memberId, Boolean status);
	
	List<Notice> findByMemberIdAndStatus(Long memberId, Boolean status);
}
