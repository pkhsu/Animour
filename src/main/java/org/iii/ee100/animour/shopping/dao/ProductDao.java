package org.iii.ee100.animour.shopping.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface ProductDao extends GenericDao<Product>, JpaSpecificationExecutor<Product> {
	//FROM product ORDER BY shelvesDate DESC FETCH FIRST 6 ROWS ONLY
	List<Product> findTop4ByOrderByShelvesDateDesc();
	
	//WHERE price <= ?
	List<Product> findByPriceLessThanEqual(Integer price);
	
	//where price BETWEEN ? and ?
	List<Product> findByPriceBetween(Integer startPrice, Integer endPrice);
	
	//select by keyWord
	List<Product> findByNameContaining(String name);
	
	//WHERE name LIKE ?% AND price < ?
	List<Product> findByNameStartingWithAndPriceLessThan(String name, Integer price);
	
	//WHERE name LIKE %? AND price < ?
	List<Product> findByNameEndingWithAndPriceLessThan(String name, Integer price);
	
	//WHERE name IN (?,?,?) AND price = ?
	List<Product> findByNameInAndPriceLessThan(List<String> name, Integer price);
	
	List<Product> findByClassify_id(Long id);
	
	List<Product> findByMember_id(Long id);
	
}
