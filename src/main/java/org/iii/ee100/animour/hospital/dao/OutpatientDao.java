package org.iii.ee100.animour.hospital.dao;

import org.iii.ee100.animour.hospital.entity.Outpatient;
import org.springframework.data.repository.CrudRepository;

//CRUD門診時間
public interface OutpatientDao extends CrudRepository<Outpatient, Long> {

}
