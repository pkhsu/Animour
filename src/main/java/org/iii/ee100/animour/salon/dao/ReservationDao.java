package org.iii.ee100.animour.salon.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.salon.entity.Reservation;

public interface ReservationDao extends GenericDao<Reservation> {
	List<Reservation> findByMemberId(Long id);
}
