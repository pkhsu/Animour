package org.iii.ee100.animour.halfway.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.halfway.entity.City;

public interface CityDao extends GenericDao<City> {
	List<City> findByOrderById();
	List<City> findByAnimalCountGreaterThanOrderByAnimalCountDesc(Long count);
}
