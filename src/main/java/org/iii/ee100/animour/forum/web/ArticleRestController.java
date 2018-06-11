package org.iii.ee100.animour.forum.web;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.common.model.PageForAnimour;
import org.iii.ee100.animour.forum.dao.ThumbsUpDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Comment;
import org.iii.ee100.animour.forum.entity.ThumbsUp;
import org.iii.ee100.animour.forum.service.ForumService;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.member.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/articles")
public class ArticleRestController {

	@Autowired
	ForumService forumService;

	@Autowired
	MemberService memberService;

	@Autowired
	ThumbsUpDao thumbsUpDao;

	@Autowired
	NoticeService noticeService;

	// 綜覽文章頁面AJAX用的
	@RequestMapping(method = RequestMethod.GET, produces = { "application/json" })
	public List<Article> findAll(PageForAnimour pageForAnimour) {
		PageRequest pageable = pageForAnimour.getPageRequest();
		Page<Article> articlePage = forumService.getPage(pageable);
		return pageHandler(pageForAnimour, articlePage, pageable);
	}

	// // 查詢一筆文章AJAX用的 現在會壞
	// @RequestMapping(value = "/{id}", method = RequestMethod.GET, produces = {
	// "application/json" })
	// public Article findOne(@PathVariable(value = "id") Long id) {
	// Article article = forumService.getOne(id);
	// return article;
	// }

	// 搜尋文章標題AJAX用的
	@RequestMapping(value = "/search/{search}", method = RequestMethod.GET, produces = { "application/json" })
	public List<Article> search(@PathVariable(value = "search") String search, PageForAnimour pageForAnimour) {
		PageRequest pageable = pageForAnimour.getPageRequest();
		Page<Article> articlePage = forumService.getPageSearchBySubject(search, pageable);
		return pageHandler(pageForAnimour, articlePage, pageable);
	}

	// 按照文章類別查詢
	@RequestMapping(path = { "/category/{categoryId}" }, method = RequestMethod.GET, produces = { "application/json" })
	public List<Article> findByCategory(@PathVariable(value = "categoryId") Long categoryId,
			PageForAnimour pageForAnimour) {
		PageRequest pageable = pageForAnimour.getPageRequest();
		Page<Article> articlePage = forumService.getPageSearchByCategoryId(categoryId, pageable);
		return pageHandler(pageForAnimour, articlePage, pageable);
	}

	@RequestMapping(path = { "/chart" }, method = RequestMethod.GET, produces = { "application/json" })
	public Map<String, ArrayList<Long>> chart() {
		return forumService.chart();
	}

	// 新增留言
	@RequestMapping(value = { "/comment" }, method = RequestMethod.POST)
	public ResponseEntity<Comment> newComment(Comment comment) {
		if (memberService.getNewCurrentMember() != null) {
			comment.setUpdateTime(new Timestamp(System.currentTimeMillis() - 1));
			comment.setMember(memberService.getNewCurrentMember());
			comment.setArticle(comment.getArticle());
			forumService.insertComment(comment);
			if (memberService.getNewCurrentMember() != comment.getArticle().getMember()) {
				noticeService.setNotify(comment.getArticle().getMember().getId(), "在您的文章底下留言",
						"/forum/findOne?id=" + comment.getArticle().getId());
			}
			System.out.println("控制器呼叫新增留言");
			return new ResponseEntity<Comment>(comment, HttpStatus.OK);
		} else {
			return new ResponseEntity<Comment>(comment, HttpStatus.NON_AUTHORITATIVE_INFORMATION);
		}
	}

	@RequestMapping(value = { "/thumbsUp" }, method = RequestMethod.POST)
	public ResponseEntity<?> thumbsUp(ThumbsUp thumbsUp) {
		if (memberService.getNewCurrentMember() != null) {
			System.out.println("控制器呼叫thumbsUp");
			thumbsUp.setMember(memberService.getNewCurrentMember());
			System.out.println(thumbsUp.getMember().getId());
			System.out.println(thumbsUp.getArticle().getId());
			List<ThumbsUp> thumbsList = forumService.findThumbsUpByMemberIdAndArticleId(thumbsUp.getMember().getId(),
					thumbsUp.getArticle().getId());
			System.out.println(thumbsList);
			if (!thumbsList.isEmpty()) {
				for (ThumbsUp thumb : thumbsList) {
					if (thumb.getThumb() == true) {
						thumb.setThumb(false);
					} else {
						thumb.setThumb(true);
					}
					forumService.insertThumbsUp(thumb);
					List<ThumbsUp> trueThumbs = forumService.findThumbsUpByArticleIdAndThumb(thumb.getArticle().getId(),
							true);
					thumb.getArticle().setThumbsQuantity(trueThumbs.size());
					try {
						forumService.update(thumb.getArticle());
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				thumbsList = forumService.findThumbsUpByMemberIdAndArticleId(thumbsUp.getMember().getId(),
						thumbsUp.getArticle().getId());
				return new ResponseEntity<List<ThumbsUp>>(thumbsList, HttpStatus.OK);
			} else {
				thumbsUp.setThumb(true);
				forumService.insertThumbsUp(thumbsUp);
				List<ThumbsUp> trueThumbs = forumService.findThumbsUpByArticleIdAndThumb(thumbsUp.getArticle().getId(),
						true);
				thumbsUp.getArticle().setThumbsQuantity(trueThumbs.size());
				try {
					forumService.update(thumbsUp.getArticle());
				} catch (Exception e) {
					e.printStackTrace();
				}

				thumbsList = new ArrayList<ThumbsUp>();
				thumbsList.add(0, thumbsUp);
				return new ResponseEntity<List<ThumbsUp>>(thumbsList, HttpStatus.OK);
			}
		} else {
			return new ResponseEntity<ThumbsUp>(thumbsUp, HttpStatus.NON_AUTHORITATIVE_INFORMATION);
		}
	}

	// 新增&修改文章
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> newArticle(Article article) {
		if (article.getStatus() == null) {
			System.out.println(article.getStatus());
			if (memberService.getNewCurrentMember() != null) {
				if (article.getId() != null && memberService.getNewCurrentMember()==article.getMember()) {
					Article existArticle = forumService.getOne(article.getId());
					existArticle.setSubject(article.getSubject());
					existArticle.setCategory(article.getCategory());
					existArticle.setContent(article.getContent());
					existArticle.setUpdateTime(new Timestamp(System.currentTimeMillis() - 1));
					if (article.getImages().equals(null)) {
						existArticle.setImages(article.getImages());
					}
					try {
						forumService.update(existArticle);
					} catch (Exception e) {
						e.printStackTrace();
					}
				} else {
					article.setMember(memberService.getNewCurrentMember());
					article.setUpdateTime(new Timestamp(System.currentTimeMillis() - 1));
					article.setPostTime(new Timestamp(System.currentTimeMillis() - 1));
					article.setThumbsQuantity(thumbsUpDao.findByArticleIdAndThumb(article.getId(), true).size());
					article.setClick(0L);
					article.setStatus(true);
					try {
						forumService.insert(article);
					} catch (Exception e) {
						e.printStackTrace();
					}
				} 
			}
		} else {
			System.out.println(article.getStatus());
			Article existArticle = forumService.getOne(article.getId());
			if (existArticle.getStatus() == null || existArticle.getStatus() == true) {
				existArticle.setStatus(false);
				try {
					forumService.update(existArticle);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return new ResponseEntity<Article>(existArticle, HttpStatus.OK);
			} else {
				existArticle.setStatus(true);
				try {
					forumService.update(existArticle);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return new ResponseEntity<Article>(existArticle, HttpStatus.OK);
			}
		}
		return new ResponseEntity<Article>(article, HttpStatus.OK);
	}

	// 讓COMMENT的AJAX呼叫用的
	@RequestMapping(value = { "/comment/{articleId}" }, method = RequestMethod.GET, produces = { "application/json" })
	public List<Comment> getComment(@PathVariable(value = "articleId") Long articleId) {
		List<Comment> commentList = forumService.getCommentByArticleId(articleId);
		return commentList;
	}

	public List<Article> pageHandler(PageForAnimour pageForAnimour, Page<Article> articlePage, PageRequest pageable) {
		// 為了讓前端抓得到totalPage
		int totalPage = articlePage.getTotalPages();
		for (Article article : articlePage) {
			article.setTotalPage(totalPage);
		}
		System.out.println(totalPage + "==========" + pageable.getPageNumber());
		if (pageForAnimour.getPageNo() > totalPage || totalPage == 0) {
			return null;
		}
		List<Article> articleList = articlePage.getContent();
		return articleList;
	}
}
