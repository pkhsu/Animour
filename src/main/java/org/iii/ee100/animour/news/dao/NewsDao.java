package org.iii.ee100.animour.news.dao;


import java.util.List;

import org.iii.ee100.animour.news.entity.News;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NewsDao extends JpaRepository<News, Long>{
	//SELECT id, subject, content, updateTime FROM news ORDER BY id desc fetch first 6 rows only";
	Page<News> findTop6ByOrderByIdDesc(Pageable pageable);
	
	List<News> findTop6ByOrderByIdDesc();
	
	List<News> findTop6ByOrderByEventDateDesc();	
	
	List<News> findByMember_id(Long id);

	List<News> findTop6ByOrderByPublishDateDesc();
	

}
