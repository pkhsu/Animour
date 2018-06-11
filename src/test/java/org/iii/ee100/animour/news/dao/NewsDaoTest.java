package org.iii.ee100.animour.news.dao;

import static org.junit.Assert.fail;

import java.util.Iterator;
import java.util.List;

import org.iii.ee100.animour.news.entity.News;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.test.context.junit4.SpringRunner;
@RunWith(SpringRunner.class)
@SpringBootTest
public class NewsDaoTest {
	
	@Autowired
	private NewsDao newsDao;

//	@Test
//	public void testFindAll() {
//		Iterable<News> newsAll = newsDao.findAll();
//		
//		for(News news:newsAll) {
//			System.out.println(news);
//		}
//	}
	
	@Test
	public void testFindSixNews() {
		List<News> newsList = newsDao.findTop6ByOrderByEventDateDesc();
		for(News news:newsList) {
			System.out.println(news);
		}
	}
	

}
