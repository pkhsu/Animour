package org.iii.ee100.animour.hospital.dao;

import org.iii.ee100.animour.hospital.entity.Hospital;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HospitalDao extends CrudRepository<Hospital, Long> {

	
	
}
