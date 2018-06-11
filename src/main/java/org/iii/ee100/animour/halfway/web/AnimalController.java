package org.iii.ee100.animour.halfway.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.entity.City;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.entity.Notice;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.member.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AnimalController {

	@Autowired
	AnimalService animalservice;

	@Autowired
	MemberService memberService;

	@Autowired
	NoticeService noticeService;

	// 首頁，list
	@RequestMapping(value = "/halfway")
	public String listPage(Model model, Notice notice) {
		// 設定當前會員
		Member current = memberService.getNewCurrentMember();
		model.addAttribute("currentMember", current);
		// 依縣市別更新動物數量
		animalservice.updateAnimalCount();
		List<City> citys = animalservice.getQueryCity();
		model.addAttribute("citys", citys);

		// notice.setDetail("以為您轉跳至中途首頁");
//		if (current != null) {
//			notice.setDetail("已為您轉跳至中途首頁");
//			notice.setMemberId(current.getId());
//			notice.setHref("http://tw.yahoo.com");
//			noticeService.insert(notice);
//			Long count = noticeService.findNotReadCount(current.getId());
//			notice.setCount(count);
//			noticeService.notify(current.getAccount(), notice);
//		}

		return "/halfway/list";
	}

	// 轉跳至動物詳情，提出認養請求頁面
	@RequestMapping(value = "/halfway/detail", method = { RequestMethod.GET })
	public String animalDetail(Long id, Model model) {
		Animal animal = animalservice.getOne(id);
		model.addAttribute("animal", animal);

		Member current = memberService.getNewCurrentMember();
		model.addAttribute("currentMember", current);
		return "/halfway/animalDetail";
	}

	// 轉跳至新增動物表單
	@RequestMapping(value = "/halfway/addAnimal", method = { RequestMethod.GET })
	public String addPage(Model model) {
		Animal an = new Animal();
		model.addAttribute("animal", an);
		List<City> citys = animalservice.getAllCity();
		model.addAttribute("citys", citys);
		return "/halfway/add";
	}

	// 轉跳至update表單
	@RequestMapping(value = "/halfway/updateAnimal", method = { RequestMethod.GET })
	public String toUpdate(@RequestParam("id") Long id, Model model) {
		Animal an = animalservice.getOne(id);
		model.addAttribute("animal", an);
		List<City> citys = animalservice.getAllCity();
		model.addAttribute("citys", citys);
		return "/halfway/add";
	}

	// 生成表單下拉式選單欄位
	@ModelAttribute("allCity")
	public Map<Long, String> getAllCity() {
		Map<Long, String> cityMap = new HashMap<>();
		List<City> citys = animalservice.getAllCity();
		for (City city : citys) {
			cityMap.put(city.getId(), city.getName());
		}
		return cityMap;
	}

	// 生成表單下拉式選單欄位
	@ModelAttribute("allSpecie")
	public List<String> getAllSpecie() {
		return animalservice.setSpecie();
	}

	// 生成表單下拉式選單欄位
	@ModelAttribute("allAge")
	public List<String> getAllAge() {
		return animalservice.setAge();
	}

	// 生成表單下拉式選單欄位
	@ModelAttribute("allSize")
	public List<String> getAllSize() {
		return animalservice.setSize();
	}
	
	// 上傳更多圖片
	@RequestMapping(value="/upload")
	public String moreFile() {
		return "/halfway/moreImage";
	}
	
}
