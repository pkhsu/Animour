package org.iii.ee100.animour.shopping.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.shopping.dao.OrdersDao;
import org.iii.ee100.animour.shopping.entity.Orders;
import org.iii.ee100.animour.shopping.entity.OrdersItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class OrdersService {
	
	@Autowired
	private OrdersDao ordersDao;
	
	public void insert(Orders orders) {
		ordersDao.save(orders);
	}
	
	public List<Orders> getByMemberOrders(Long id) {
		return ordersDao.findByMember_id(id);
	}
	
	//for chart
	public Map<String,Integer> chart() {
		List<Orders> list = ordersDao.findAll();
		Map<String,Integer> map = new HashMap<String,Integer>();
		for(Orders orders:list) {
			for(OrdersItem ordersItem:orders.getOrdersItem()) {
				if(map.containsKey(ordersItem.getClassify())) {
					map.put(ordersItem.getClassify(), map.get(ordersItem.getClassify()) + 1);
				}else {
					map.put(ordersItem.getClassify(), 1);
				}
			}
		}
		return map;
	}
}
