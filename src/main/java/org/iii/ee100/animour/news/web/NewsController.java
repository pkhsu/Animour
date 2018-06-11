package org.iii.ee100.animour.news.web;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.news.entity.News;
import org.iii.ee100.animour.news.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import allPay.payment.integration.AllInOne;
import allPay.payment.integration.domain.AioCheckOutALL;
import allPay.payment.integration.domain.InvoiceObj;
import allPay.payment.integration.exception.AllPayException;

@Controller
public class NewsController {
	
	@Autowired
	NewsService newsService;
	
	@Autowired
	MemberService memberService;
	//Animour首頁區塊
	@RequestMapping("/news/index")
	public String findAll(int pageNo,Model model) {
		//分頁
		if(pageNo < 1) {
			pageNo = 1;
		}
		Page<News> page = newsService.getPage(pageNo, 6);
		int totalPage = page.getTotalPages();
		if(pageNo > totalPage && totalPage!=0) {
			pageNo = totalPage;
		}
		page = newsService.getPage(pageNo, 6);
		model.addAttribute("page", page);
		
		return "/news/newsIndex";
	}
	
//	@RequestMapping("/news/index")
//	public String latest6(Model model) {
//		model.addAttribute("allNews", newsService.getAll());
//		return "/news/newsIndex";
//	}
	
	//活動詳情	
	// SelectOne
		@RequestMapping(value = "/selectOneNews", method = { RequestMethod.GET })
		public String selectOneNews(@RequestParam(name = "id") Long id, News news, Model model) {
			model.addAttribute("news", newsService.getOne(id));
			return "/news/event";
		}
	//報名活動
	// enrollOne
		@RequestMapping(value = "/enrollOneNews", method = { RequestMethod.GET })
		public String enrollOneNews(@RequestParam(name = "id") Long id, News news, Model model) {
			model.addAttribute("news", newsService.getOne(id));
			return "/news/enroll";
		}
	
	//單筆活動詳情（以活動ＩＤ搜尋）
		@RequestMapping(value= {"/findOneEvent"}, method={RequestMethod.GET})
		public String OneEvent(News news, Model model) {
			News nb = newsService.getOne(Long.valueOf(news.getId()));
			if (nb != null) {
				model.addAttribute("oneEvent", nb);
			}		
			return "/news/event";
		}
	//報名活動
	@RequestMapping("/news/enroll")
	public String newsEnroll(Model model) {
		return "/news/enroll";
	}
	
	//報名成功
	@RequestMapping("/news/ticket")
	public String newsTicket(Model model) {
		return "/news/ticket";
	}
	
	//Booking confirm
		//確定購買
		@RequestMapping(value="/news/confirmbuy2", method=RequestMethod.GET)
		public String confirmBuy2(@RequestParam(name = "id") Long id, News news, Model model) {
			model.addAttribute("news", newsService.getOne(id));
			return "/news/enroll";
		}
	
		//Ticket Payment
		@Autowired
		AnimalService animalService;
		
		@Autowired
		AdoptionService adoptionService;

		// 結帳，在此設定歐付寶結帳所需參數
		@RequestMapping(value = "/newsfrontEnd/aioCheckOut/aioCheckOutALL/{id}", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
		public @ResponseBody String aioCheckOutALL(@PathVariable Long id) {
			AioCheckOutALL aio = new AioCheckOutALL();
			AllInOne all = new AllInOne("");
			InvoiceObj invoice = new InvoiceObj();
			// 不指定付款方式，給nulls
			invoice = null;
			// 設定訂單編號，20碼。可自訂
			aio.setMerchantTradeNo("NewsAdp"+String.format("%04t", adoptionService.getOne(id).getId())+UUID.randomUUID().toString().replaceAll("-", "").substring(0, 6));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
			// 設定交易時間
			aio.setMerchantTradeDate(sdf.format(date));
			// 商品名稱＋單價＋數量
			aio.setItemName("【2018上聯寵物用品博覽會】");
			// 交易金額
			aio.setTotalAmount("150");
			// 交易描述
			aio.setTradeDesc("認養編號:");
			aio.setHoldTradeAMT("0");
			// 顯示付款成功的頁面（預設
			aio.setReturnURL("http://localhost:8080/backstage/checkoutStatus");
			// 付款成功後轉跳的頁面 
			aio.setClientBackURL("http://localhost:8080/halfway/");
			try {
				String html = all.aioCheckOut(aio, invoice);
				System.out.println(html);
				return html;
			} catch (AllPayException e) {
				throw new Error(e.getNewExceptionMessage());
			}
		}
	
	//後臺表格管理
	@RequestMapping("/news/admin")
	public String newsAdmin(Model model) {
		return "/news/admin";
	}
	
	
	// Insert News
		@RequestMapping(value = "/news/insertNews", method = RequestMethod.GET)
		public String input(Model model) {
			News news = new News();
			news.setCreateTime(new Timestamp(System.currentTimeMillis()));
			news.setPublishDate(new java.sql.Date(System.currentTimeMillis()));
			news.setCreateUser(memberService.getNewCurrentMember().getAccount());
			model.addAttribute("news", news);
			return "/news/insertNews";
		}
		//insert successfully
		@RequestMapping(value = "/news/insertNews", method = RequestMethod.POST)
		public String insertNews(Model model, @ModelAttribute("news") News news) {
			newsService.insert(news);
			model.addAttribute(news);
			return "/news/insertNewsComp";
		}
		
	//後臺查詢一筆活動（以活動ＩＤ搜尋）
	@RequestMapping(value= {"/findOneNews"}, method={RequestMethod.GET})
	public String findOne(News news, Model model) {
		News nb = newsService.getOne(Long.valueOf(news.getId()));
		if (nb != null) {
			model.addAttribute("oneNews", nb);
		}		
		return "/news/manage";
	}
	
	//後臺查詢所有活動	
	@RequestMapping(value= {"/findAllNews"}, method={RequestMethod.GET})
	public String selectAll(Model model) {
		model.addAttribute("allNews", newsService.getAll());
		return "/news/manage";
	}
	
	//後臺顯示所有活動
	@RequestMapping("/news/manage")
	public String showAllEvents(Model model) {
		model.addAttribute("allEvents", newsService.getAll());
		return "/news/manage";
	}

	//後臺刪除一筆活動（以活動ID刪除）
	@RequestMapping(value= {"/deleteNews"}, method={RequestMethod.GET})
	public String deleteNews(News news, Model model) {
		newsService.delete(news.getId());
		model.addAttribute("delete", Long.valueOf(news.getId()));
		return "/news/manage";
	}
	
	//後台新增一筆活動
	@RequestMapping(value = {"/insertNews"}, method={RequestMethod.POST})
	public String insertNews(News news, Model model) {
		newsService.insert(news);
		model.addAttribute("insertNews", news);
		return "/news/inserNews";
	}
	
	//後台更新一筆活動
//	@RequestMapping(value = "/news/update")
//	public String maintain(Model model) {
//		List<News> adminPosts = newsService.getAll();
//		for(News news:adminPosts) {
//			System.err.println("news" + news.getSubject());
//		}
//		model.addAttribute("PostsQuantity", adminPosts.size());
//		model.addAttribute("adminPosts", adminPosts);
//		return "/news/manage";
//	}
	
	// Form Data Return Show
//		@RequestMapping(value = "/news/{id}", method = { RequestMethod.GET })
//		public String input(@PathVariable("id") Long id, Model model) {
//			News news = newsService.getOne(id);
//			model.addAttribute("news", news);
//			return "/news/manage";
//		}
	
	//step 1
	// pass ID and ticket_Quantity(insert)
	// get news by ID
	// get ticket_Quantity(stock)
	// insert+ stock (total_Quantity)
	// set total_Quantity -> stock
	// update news
	// return ____;

		// Update News
		@RequestMapping(value = { "/updateNews" }, method = { RequestMethod.GET })
		public String updateNews(News news, Model model) {
			News exist = newsService.getOne(news.getId()); //MANDATORY!!!!! 
			exist.setSubject(news.getSubject());
			exist.setContent(news.getContent());
			exist.setUpdateUser(news.getUpdateUser());
			exist.setUpdateTime(news.getUpdateTime());
			try {
				newsService.update(exist);
			} catch (Exception e) {
				e.printStackTrace();
				return "/rollback";
			}
			return "redirect:/news/updateNews";
		}
		//update successfully
		@RequestMapping(value = "/news/updateNews", method = RequestMethod.GET)
		public String updateNewsCom(Model model, @ModelAttribute("news") News news) {
			newsService.update(news);
			model.addAttribute(news);
			return "/news/updateNews";
		}
		

	
//	@RequestMapping(path= {"/updateNews"}, method={RequestMethod.POST})
//	public String updateNews(News news, Model model) {
//		newsService.update(news);
//		model.addAttribute("updateNews", news);
//		return "/news/manage";
//	}
		
	//活動首頁：顯示六筆活動	
	@RequestMapping(value= {"/findSixNews"}, method={RequestMethod.GET})
	public String findSixNews(Model model) {
		model.addAttribute("sixNews", newsService.getSixNews());
		return "/news/newsIndex";
	}
	
	//活動首頁：顯示全部活動	
//		@RequestMapping(value= {"/findAllEvents"}, method={RequestMethod.GET})
//		public String findAllEvents(Model model) {
//			model.addAttribute("allEvents", newsService.getAll());
//			return "/news/newsIndex";
//		}
	
		@RequestMapping("/news/newsIndex")
		public String findAllEvents(Model model) {
			model.addAttribute("allEvents", newsService.getAll());
			return "/news/newsIndex";
		}
	
	
}
