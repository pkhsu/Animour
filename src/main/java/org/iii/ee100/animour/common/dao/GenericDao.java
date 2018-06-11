package org.iii.ee100.animour.common.dao;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GenericDao<T extends GenericEntity> extends JpaRepository<T, Long> {

}
