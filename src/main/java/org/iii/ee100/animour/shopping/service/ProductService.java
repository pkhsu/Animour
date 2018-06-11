package org.iii.ee100.animour.shopping.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.shopping.dao.ProductDao;
import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ProductService extends GenericService<Product> {
	
	@Autowired
	private ProductDao productDao;
	
	public Page<Product> getPage(int pageNo, int pageSize) {
		PageRequest pageable = new PageRequest(pageNo - 1, pageSize);
		return productDao.findAll(pageable);
	}
	
	//find product by classify
	public Page<Product> getProductByCategory(Long id, int pageNo, int pageSize) {
		PageRequest pageable = new PageRequest(pageNo - 1, pageSize);
		Specification<Product> specification = new Specification<Product>() {
			@Override
			public Predicate toPredicate(Root<Product> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				Predicate pedicate = cb.equal(root.get("classify"), id);
				return pedicate;
			}
		};
		Page<Product> page = productDao.findAll(specification, pageable);
		return page;
	}
	
	//KeyWord Select By Product
	public Page<Product> getByNameKeyWord(String name, int pageNo, int pageSize) {
		PageRequest pageable = new PageRequest(pageNo - 1, pageSize);
		Specification<Product> specification = new Specification<Product>() {
			@Override
			public Predicate toPredicate(Root<Product> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				Predicate pedicate = cb.like(root.get("name"), "%" + name + "%");
				return pedicate;
			}
		};
		Page<Product> page = productDao.findAll(specification, pageable);
		return page;
	}
	
	//find Product by PriceLessThanEqual
	public Page<Product> getByPriceLessThanEqual(Integer price, int pageNo, int pageSize) {
		PageRequest pageable = new PageRequest(pageNo - 1, pageSize);
		Specification<Product> specification = new Specification<Product>() {
			@Override
			public Predicate toPredicate(Root<Product> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				Predicate pedicate = cb.le(root.get("price"), price);
				return pedicate;
			}
		};
		Page<Product> page = productDao.findAll(specification, pageable);
		return page;
	}
	
	//for chart
	public Map<String,Integer> chart() {
		List<Product> list = productDao.findAll();
		Map<String,Integer> map = new HashMap<String,Integer>();
		for(Product product:list) {
			if (map.containsKey(product.getClassify().getName())) {
				map.put(product.getClassify().getName(), map.get(product.getClassify().getName()) + 1);
			}else {
				map.put(product.getClassify().getName(), 1);
			}
		}
		return map;
	}
	
	@Override
	public void insert(Product product) throws Exception {
		productDao.saveAndFlush(product);
	}
	
	@Override
	public void update(Product product) throws Exception {
		productDao.save(product);
	}
	
	@Override
	public void delete(Long id) throws Exception {
		productDao.delete(id);
	}
	
	@Override
	public ArrayList<Product> getAll() {
		return Lists.newArrayList(productDao.findAll());
	}
	
	@Override
	public Product getOne(Long id) {
		return productDao.findOne(id);
	}
	
	public List<Product> getNewSex() {
		return productDao.findTop4ByOrderByShelvesDateDesc();
	}
	
	//find Product by Classify
	public List<Product> getByClassify(Long id) {
		return productDao.findByClassify_id(id);
	}
	
	public List<Product> getByMemberId(Long id){
		return productDao.findByMember_id(id);
	}
	
}
