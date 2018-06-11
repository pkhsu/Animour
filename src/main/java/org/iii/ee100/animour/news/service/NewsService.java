package org.iii.ee100.animour.news.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.news.dao.NewsDao;
import org.iii.ee100.animour.news.entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
public class NewsService{
	@Autowired
	private NewsDao newsDao;
	
	public Page<News> getPage(int pageNo, int pageSize) {
		PageRequest pageable = new PageRequest(pageNo - 1, pageSize);
		return newsDao.findTop6ByOrderByIdDesc(pageable);
	}	
	
	public void insert(News news) {
		newsDao.save(news);
	}	
	
	public void update(News news) {
		newsDao.save(news);
	}	
	
	public void delete(Long id) {
		newsDao.delete(id);
	}	
	
	public List<News> getAll() {
		return Lists.newArrayList(newsDao.findAll());
	}	
	
	public News getOne(Long id) {
		return newsDao.findOne(id);
	}
	public List<News> getSixEvents(){
		return newsDao.findTop6ByOrderByPublishDateDesc();
	}
	
	public List<News> getSixNews(){
		return newsDao.findTop6ByOrderByIdDesc();
	}
	

	public List<News> getByMemberId(Long id) {
		return newsDao.findByMember_id(id);
	}
	
	public Map<String,Integer[]> chart(){
		List<News> list = newsDao.findAll();
		Map<String,Integer[]> map = new HashMap<String,Integer[]>();
		for(News news:list) {
			Integer[] array = new Integer[2];
			array[0] = news.getTicketQuantity();
			array[1] = news.getTicketQuantity() * news.getTicketPrice();
			map.put(news.getSubject(), array);
		}
		return map;
	}
}
