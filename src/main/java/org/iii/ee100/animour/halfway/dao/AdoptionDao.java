package org.iii.ee100.animour.halfway.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.member.entity.Member;

public interface AdoptionDao extends GenericDao<Adoption>{

	List<Adoption> findByOwnerIdOrderByRequestDateDesc(Long ownerId);
	
	//List<Adoption> findByAcceptDateAfter (Date acceptDate);
	
	List<Adoption> findTop2ByMemberIdOrderByAcceptDateDesc(Long memberId);
	//List<Adoption> findByMemberIdOrderByAcceptDateDesc(Long memberId);

}
