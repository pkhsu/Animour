package org.iii.ee100.animour.salon.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.salon.entity.ServiceContent;

public interface ServiceContentDao extends GenericDao<ServiceContent> {
	List<ServiceContent> findTop3ByOrderByIdDesc();

}
