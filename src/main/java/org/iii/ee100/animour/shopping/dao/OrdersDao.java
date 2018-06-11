package org.iii.ee100.animour.shopping.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.shopping.entity.Orders;

public interface OrdersDao extends GenericDao<Orders> {
	List<Orders> findByMember_id(Long id);
}
