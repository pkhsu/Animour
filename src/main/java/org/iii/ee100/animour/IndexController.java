
package org.iii.ee100.animour;

import java.util.List;

import org.iii.ee100.animour.donate.entity.Donate;
import org.iii.ee100.animour.donate.service.DonateService;
import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.service.ForumService;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.hospital.entity.Hospital;
import org.iii.ee100.animour.hospital.service.HospitalService;
import org.iii.ee100.animour.news.entity.News;
import org.iii.ee100.animour.news.service.NewsService;
import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@Autowired
	AnimalService animalservice;
	@Autowired
	HospitalService hospitalService;
	@Autowired
	ForumService forumService;
	@Autowired
	ProductService productService;
	@Autowired
	NewsService newsService;
	
	@Autowired
	DonateService donateService;

	@RequestMapping("/")
	public String index(Model model) {
//		List<Animal> animals = animalservice.getSix();
//		model.addAttribute("animals", animals);
		
		List<Animal> animals = animalservice.getSix();
		model.addAttribute("animals", animals);

		List<Hospital> hospitalls = hospitalService.getThreeHospital();
		model.addAttribute("hospitals", hospitalls);
		
//		List<Hospital> hospitalls = hospitalService.getAll();
//		model.addAttribute("hospitals", hospitalls);

//		List<Article> articles = forumService.getNew();
//		System.out.println(articles);
//		model.addAttribute("articles", articles);
		
		List<Article> articles = forumService.getNewPostThree();
		model.addAttribute("articles", articles);

		List<Product> product = productService.getNewSex();
		model.addAttribute("product", product);

		List<News> bean = newsService.getSixNews();
		model.addAttribute("sixNews", bean);

		

		List<Donate> donates = donateService.getAll();
		model.addAttribute("donates", donates);

		return "/index";
	}

}
