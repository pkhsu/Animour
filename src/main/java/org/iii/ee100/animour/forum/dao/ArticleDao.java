package org.iii.ee100.animour.forum.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticleDao extends GenericDao<Article> {

	// FROM Article ORDER BY PostTime DESC FETCH FIRST 3 ROWS ONLY
	List<Article> findTop3ByOrderByPostTimeDesc();

	// FROM Article ORDER BY UpdateTime DESC FETCH FIRST 4 ROWS ONLY
	List<Article> findTop4ByStatusOrderByClickDesc(Boolean status);

	List<Article> findBySubjectContainingIgnoreCaseAndStatus(String subject,Boolean status);

	Page<Article> findBySubjectContainingIgnoreCaseAndStatus(String subject, Pageable pageable,Boolean status);

	List<Article> findByCategoryIdAndStatus(Long categoryId,Boolean status);
	
	List<Article> findByMemberIdAndStatus(Long memberId,Boolean status);

	Page<Article> findByCategoryId(Long categoryId, Pageable pageable);
	
	List<Article> findTop4ByStatusOrderByThumbsQuantityDesc(Boolean status);
	
	Page<Article> findByOrderByPostTimeDesc(Pageable pageable);
	
	List<Article> findByStatusOrderByThumbsQuantityDesc(Boolean status);
}
