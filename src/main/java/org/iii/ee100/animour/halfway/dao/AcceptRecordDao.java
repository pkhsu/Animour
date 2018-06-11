package org.iii.ee100.animour.halfway.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.halfway.entity.AcceptRecord;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.entity.Animal;

public interface AcceptRecordDao extends GenericDao<AcceptRecord> {

	List<AcceptRecord> findByOrderByStartDateDesc();
	
	List<AcceptRecord> findByOwnerIdOrderByEndDate(Long ownerId);

	List<AcceptRecord> findByMemberIdOrderByEndDate(Long memberId);

	
}
