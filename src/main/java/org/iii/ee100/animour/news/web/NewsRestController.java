package org.iii.ee100.animour.news.web;

import java.util.Map;

import org.iii.ee100.animour.news.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/news")
public class NewsRestController {
	
	@Autowired
	NewsService newsService;
	
	@RequestMapping(path = { "/chart" }, method = RequestMethod.GET, produces = { "application/json" })
	public Map<String, Integer[]> chart() {
		return newsService.chart();
	}
}
