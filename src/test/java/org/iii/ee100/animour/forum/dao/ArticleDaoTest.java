package org.iii.ee100.animour.forum.dao;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.service.ForumService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ArticleDaoTest {
	// @Autowired
	// private ArticleDao articleDao;

	@Autowired
	private ForumService forumService;

	@Test
	public void testFindAll() {
		Iterable<Article> articles;
		try {
			articles = forumService.getAll();
			for (GenericEntity ar : articles) {
				System.out.println(ar);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// @Test
	// public void testFindOne() {
	// Article article = articleDao.findOne(1L);
	//
	//
	// System.out.println(article);
	//
	// }
}
