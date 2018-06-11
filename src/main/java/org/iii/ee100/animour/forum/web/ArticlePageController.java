package org.iii.ee100.animour.forum.web;

import java.util.List;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Category;
import org.iii.ee100.animour.forum.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ArticlePageController {
	@Autowired
	ForumService forumService;

	// sidebar用的方法，在所有@RequestMapping之前被執行
	@ModelAttribute
	public void sidebar(Model model) {
		List<Article> popular = forumService.getPopularFour();
		if (popular != null) {
			model.addAttribute("popular", popular);
		}
		List<Category> categorys = forumService.getAllCategory();
		if (categorys != null) {
			model.addAttribute("categorys", categorys);
		}
	}

	@RequestMapping(path = { "/postArticle" }, method = { RequestMethod.GET })
	public String insertArticleForm(Model model) {
		List<Category> categoryList = forumService.getAllCategory();
		model.addAttribute("categorys", categoryList);
		return "/forum/insertArticleForm";
	}

	@RequestMapping(path = { "/updateArticle" }, method = { RequestMethod.GET })
	public String updateArticleForm(Model model,Article article) {
		Article atc;
		try {
			atc = (Article) forumService.getOne(Long.valueOf(article.getId()));
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		model.addAttribute("article", atc);
		List<Category> categoryList = forumService.getAllCategory();
		model.addAttribute("categorys", categoryList);
		return "/forum/insertArticleForm";
	}

	// 綜覽文章頁面
	@RequestMapping(path = { "/forum/findAll" }, method = { RequestMethod.GET })
	public String findAllPage(Model model) {
		// List<Article> articleList = forumService.getArticleList();
		// model.addAttribute("page", articleList);
		return "/forum/article";
	}

	// 一筆文章頁面
	@RequestMapping(path = { "/forum/findOne" }, method = { RequestMethod.GET })
	public String findOnePage(Article article, Model model) {
		Article atc;
		try {
			atc = (Article) forumService.getOne(Long.valueOf(article.getId()));
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		// click 計算
		if (atc != null && atc.getClick() != null) {
			Long click = atc.getClick();
			atc.setClick(click + 1);
			try {
				forumService.update(atc);
			} catch (Exception e) {
				e.printStackTrace();
				return "/rollback";
			}
		}
		
		//最多讚文章
		List<Article> thumbsArticle = forumService.getThumbsFour();
		model.addAttribute("thumbsArticle", thumbsArticle);
		model.addAttribute("article", atc);
		return "/forum/singleArticle";
	}

}
