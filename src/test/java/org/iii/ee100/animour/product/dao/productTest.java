package org.iii.ee100.animour.product.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.iii.ee100.animour.member.dao.MemberDao;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.shopping.dao.ClassifyDao;
import org.iii.ee100.animour.shopping.dao.OrdersDao;
import org.iii.ee100.animour.shopping.dao.ProductDao;
import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.ClassifyService;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.iii.ee100.animour.shopping.entity.Classify;
import org.iii.ee100.animour.shopping.entity.Orders;
import org.iii.ee100.animour.shopping.entity.OrdersItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class productTest {

	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private OrdersDao ordersDao;
	
	@Autowired
	private ClassifyDao classifyDao;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ClassifyService classifyService;
	
	@Autowired
	private OrdersDao orderDao;
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private MemberService memberService;
	
//	@Test
//	public void TestMemeberProduct() {
//		
//		List<Product> products = productDao.findByMember_id(2L);
//		for(Product product:products) {
//			System.out.println(product.getName());
//		}
//	}
	
	/**  id > 5
	 * 測試帶查詢條件的分頁
	 * 使用JpaSpecificationExecutor的 Page<T> findAll(Specification<T> spec, Pageable pageable)方法
	 * Specification: 封裝了Criteria查詢的查詢條件
	 * Pageable: 封裝了請求分頁的訊息 pageNo, pageSize, Sort
	 */
//	@Test
//	public void testJpaSpecificationExecutor() {
//		int pageNo = 0;
//		int pageSize = 5; //一頁幾筆
//		PageRequest pageable = new PageRequest(pageNo, pageSize);
//		//使用Specification的匿名內部類別
//		Specification<Product> specification = new Specification<Product>() {
//			/**
//			 * *root: 代表查詢的Entity類別
//			 * query:代表可以從中得到root物件，即告知JPA Criteria查詢要查詢哪一個Entity，還可以來加入查詢條件，還可以結合EntityManager物件得到最終查詢的TypedQuery物件
//			 * *cb:CriteriaBuilder物件，用來建立Criteria相關物件的工廠，並且可以從中取得Predicate物件
//			 * *return: Predicate類型代表一個查詢條件
//			 */
//			@Override
//			public Predicate toPredicate(Root<Product> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
////				Predicate pedicate = cb.equal(root.get("classify"), 1);
//				Predicate pedicate = cb.like(root.get("name"), "%磅%");
//				
//				return pedicate;
//			}
//		};
//		Page<Product> page = productDao.findAll(specification, pageable);
//		
//		
//		System.err.println("getTotalPages=" + page.getTotalPages());
//		System.err.println("getTotalElements=" + page.getTotalElements());
//		List<Product> content = page.getContent();
//		for(Product product:content) {
//			System.err.println(product.getName());
//		}
//	}
	
//	@Test
//	public void testListProduct() {
//		Page<Product> page = productService.getPage(1, 6);
//		List<Product> products = page.getContent();
//		for(Product product:products) {
//			System.out.println(product.getName());
//		}
//	}
	
//	@Test
//	public void testFindAllClassify() {
//		List<Product> products = productDao.findByClassify_id(1L);
//		for(Product product:products) {
//			System.out.println(product.getName());
//		}
//	}
	
	@Test
	public void testInsertProduct() {
//		Classify classify1 = new Classify();
//		classify1.setName("寵物伺料");
//		classifyDao.save(classify1);
//		
//		List<Classify> classifies = classifyDao.findAll();
//		long i = 0;
//		for(Classify classify:classifies) {
//			i = classify.getId();
//		}
//		System.out.println(i);
		
//		classifyDao.deleteAll();
//		System.out.println(productDao.findAll());
		
//		Classify classify2 = new Classify();
//		classify2.setName("寵物用品");
//		
//		Classify classify3 = new Classify();
//		classify3.setName("寵物玩具");
//		
//		Classify classify4 = new Classify();
//		classify4.setName("其它");
//		
//		classifyDao.save(classify1);
//		classifyDao.save(classify2);
//		classifyDao.save(classify3);
//		classifyDao.save(classify4);
		
//		Product product1 = new Product();
//		product1.setName("0% 零穀 5 種魚–全齡犬 晶亮護毛配方 2.5 磅");
//		product1.setPrice(391);
//		product1.setQuantity(100L);
//		product1.setMakeDate(java.sql.Timestamp.valueOf("2018-3-15 12:00:01"));
//		product1.setExpire(365);
//		product1.setShelvesDate(java.sql.Date.valueOf("2018-4-8"));
//		product1.setDescription("bbbbbbbbbbbbbbbbbbbbbbbbb");
//		product1.setClassify(classify1);
//		productDao.save(product1);
	}
	
	//測試寫入訂單
//	@Test
//	public void testOneToMany() {
//		Orders orders = new Orders();
//		orders.setTotalAmount(110);
//		orders.setOrderDate(new Date(System.currentTimeMillis()));
//		
//		OrdersItem ordersItem = new OrdersItem();
//		ordersItem.setName("法國皇家PRP30 貴賓成貓 3 公斤");
//		ordersItem.setPrice(50);
//		ordersItem.setQuantity(2);
//		ordersItem.setOrders(orders);
//		
//		OrdersItem ordersItem2 = new OrdersItem();
//		ordersItem2.setName("法國皇家PRP30 貴賓成貓 2.5 公斤");
//		ordersItem2.setPrice(60);
//		ordersItem2.setQuantity(3);
//		ordersItem2.setOrders(orders);
//		
//		List<OrdersItem> ordersList = new ArrayList<OrdersItem>();
//		ordersList.add(ordersItem);
//		ordersList.add(ordersItem2);
//		
//		orders.setOrdersItem(ordersList);
//		
//		ordersDao.save(orders);
//	}
	
	//測試查詢訂單
//	@Test
//	public void testQueryOrders() {
//		List<Orders> OrdersList = ordersDao.findAll();
//		for(Orders orders:OrdersList) {
//			System.out.println("訂單編號=" + orders.getId());
//			System.out.println(orders.getTotalAmount());
//			System.out.println(orders.getOrderDate());
//			
//			List<OrdersItem> ordersItem = orders.getOrdersItem();
//			for(OrdersItem order:ordersItem) {
//				System.out.println("商品名稱=" + order.getName());
//				System.out.println("商品價格=" + order.getPrice());
//				System.out.println("購買數量=" + order.getQuantity());
//			}
//			System.out.println();
//		}
//	}
	
	@Test
	public void testManyToOne() {
		//keyword test
//		System.out.println(productDao.findByNameContaining("磅"));
		
		//依類別查詢商品
//		List<Product> lists = productDao.findByClassify_id(1L);
//		for(Product list:lists) {
//			System.out.println(list.getClassify().getId() + " " + list.getClassify().getName() + " " + list.getName());
//		}
	}
	
/*	@Test
	public void testManyToMany() {
		Product product1 = new Product();
		product1.setName("法國皇家PRP30 貴賓成犬 1.5 公斤");
		product1.setPrice(600);
		product1.setQuantity(20L);
		product1.setMakeDate(java.sql.Timestamp.valueOf("2018-3-15 12:00:00"));
		product1.setExpire(90);
		product1.setShelvesDate(java.sql.Date.valueOf("2018-4-2"));
		
		Product product2 = new Product();
		product2.setName("法國皇家PRP30 貴賓成貓 2.5 公斤");
		product2.setPrice(580);
		product2.setQuantity(10L);
		product2.setMakeDate(java.sql.Timestamp.valueOf("2018-3-15 11:00:00"));
		product2.setExpire(360);
		product2.setShelvesDate(java.sql.Date.valueOf("2018-4-3"));
		
		Product product3 = new Product();
		product3.setName("Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅");
		product3.setPrice(833);
		product3.setQuantity(92L);
		product3.setMakeDate(java.sql.Timestamp.valueOf("2018-4-25 18:00:00"));
		product3.setExpire(180);
		product3.setShelvesDate(java.sql.Date.valueOf("2018-4-6"));
		
		Orders orders1 = new Orders();
		orders1.setName("訂單一");
		
		Orders orders2 = new Orders();
		orders2.setName("訂單二");
		
		//Test一筆商品多個訂單
//		product1.getOrders().add(orders1);
//		product1.getOrders().add(orders2);
//		productDao.save(product1);
		
		//Test一筆訂單多筆商品
		orders1.getProducts().add(product1);
		orders1.getProducts().add(product2);
		orders1.getProducts().add(product3);
		ordersDao.save(orders1);
	}
*/
	
	//查訂單
	@Test
	public void testMemberOrders() {
//		Member member = memberDao.findOne(2L);
//		System.out.println(member.getName());
//		System.out.println(member.getEmail());
//		System.out.println(member.getAddress());
//		System.out.println(member.getCell());
		
//		List<Orders> ordersList = member.getOrders();
//		System.err.println(ordersList.size());
//		for(Orders orders:ordersList) {
//			System.out.println("訂單編號=" + orders.getId());
//			System.out.println("訂單日期=" + orders.getOrderDate());
//			System.out.println("訂單總金額" + orders.getTotalAmount());
//			
//			for(OrdersItem ordersItem:orders.getOrdersItem()) {
//				System.out.println(ordersItem.getName());
//			}
//			System.out.println();
////			System.out.println(orders.getOrdersItem().size());
//		}
		
		
		
//		System.out.println(ordersList.size());
//		for(int i = 0; i < ordersList.size(); i++) {
//			System.err.println("訂單編號=" + ordersList.get(i).getId());
//			System.err.println("訂單日期=" + ordersList.get(i).getOrderDate());
//			System.err.println("訂單總金額" + ordersList.get(i).getTotalAmount());
//			
//			System.out.println("商品編號=" + ordersList.get(i).getOrdersItem().get(i).getId());
//			System.out.println("商品名稱=" + ordersList.get(i).getOrdersItem().get(i).getName());
//			System.out.println("商品價格=" + ordersList.get(i).getOrdersItem().get(i).getPrice());
//			System.out.println("購買數量=" + ordersList.get(i).getOrdersItem().get(i).getQuantity());
//		}
		
//		Orders orders = ordersDao.findOne(2L);
//		List<OrdersItem> ordersItem = orders.getOrdersItem();
//		System.out.println(orders.getMember().getName());
//		System.out.println(orders.getMember().getEmail());
//		System.out.println(orders.getMember().getAddress());
//		System.out.println(orders.getMember().getCell());
//		
//		for(OrdersItem order:ordersItem) {
//			System.out.println("商品名稱=" + order.getName());
//			System.out.println("商品價格=" + order.getPrice());
//			System.out.println("購買數量=" + order.getQuantity());
//		}
//		
//		List<Orders> ordersList = ordersDao.findByMember_id(2L);
//		for(Orders orders:ordersList) {
//			System.out.println(orders.getMember().getName());
//			System.out.println(orders.getOrderDate());
//			System.out.println(orders.getTotalAmount());
//			List<OrdersItem> ordersItem = orders.getOrdersItem();
//			for(OrdersItem order:ordersItem) {
//				System.out.println(order.getName());
//			}
//		}
	}
	
	//刪除一筆商品
//	@Test
//	public void testDelete() {
//		productDao.delete(5L);
//	}
	
//	@Test
//	public void testGetNewSex() {
//		List<Product> products = productDao.findTop6ByOrderByShelvesDateDesc();
//		for(Product product:products) {
//			System.out.println(product);
//		}
//	}
	
	@Test
	public void testKeyWord() {
//		Product product = productDao.findByName("Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅");
//		System.err.println(product);
		
		//依價格<=查詢
//		List<Product> products = productDao.findByPriceLessThanEqual(600);
//		for(Product product:products) {
//			System.out.println("產品名稱:" + product.getName() + "\t\t" + "價格:" + product.getPrice() + "\t" + "類別:" + product.getClassify().getName());
//		}
		
//		List<Product> products = productDao.findByPriceBetween(600, 1000);
//		for(Product product:products) {
//			System.out.println(product);
//		}
		
//		List<Product> products = productDao.findByNameContaining("磅");
//		for(Product product:products) {
//			System.out.println(product.getName());
//		}
		
//		List<Product> products = productDao.findByNameStartingWithAndPriceLessThan("法國皇家", 600);
//		for(Product product:products) {
//			System.out.println(product);
//		}
		
//		List<Product> products = productDao.findByNameEndingWithAndPriceLessThan("磅", 1000);
//		for(Product product:products) {
//			System.out.println(product);
//		}
		
//		List<Product> products = productDao.findByNameInAndPriceLessThan(Arrays.asList("Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅",
//				"法國皇家PRP30 貴賓成貓 2.5 公斤", "法國皇家PRP30 貴賓成犬 1.5 公斤"), 599);
//		System.out.println(products);
		
//		System.out.println(productDao.findByNameContaining("法國皇家"));
		
//		System.out.println(productDao.findOne(2L).getName());
		
//		List<Classify> findAll = classifyDao.findByName("寵物伺料");
//		for(Classify classify:findAll) {
//			Set<Product> products = classify.getProduct();
//			for(Product product:products) {
//				System.out.println(product.getName());
//			}
//		}
	}
	
	
	@Test
	public void testFindAll() {
//		Iterable<Product> products = productDao.findAll();
//		for(Product product :products) {
//			System.out.println(product);
//		}
	}
	
}
