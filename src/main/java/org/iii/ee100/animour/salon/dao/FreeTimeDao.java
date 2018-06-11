package org.iii.ee100.animour.salon.dao;

import java.util.Date;
import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.salon.entity.FreeTime;

public interface FreeTimeDao extends GenericDao<FreeTime> {
	List<FreeTime> findByStatus(String status);
	List<FreeTime> findByDesigner(String designer);
	List<FreeTime> findByDesignerAndStatus(String designer,String status);
	List<FreeTime> findByDesignerAndStatusAndAppointDate(String designer,String status,Date appointDate);
	List<FreeTime> findByAppointDate(Date appointDate);



}
