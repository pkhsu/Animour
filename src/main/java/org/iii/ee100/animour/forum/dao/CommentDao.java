package org.iii.ee100.animour.forum.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.forum.entity.Comment;

public interface CommentDao extends GenericDao<Comment>{
	List<Comment> findByArticleIdOrderByUpdateTime(Long id);
}
