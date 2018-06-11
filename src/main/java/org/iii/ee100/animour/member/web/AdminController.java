package org.iii.ee100.animour.member.web;

import org.iii.ee100.animour.forum.service.ForumService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	@Autowired
	MemberService memberService;

	@Autowired
	AnimalService animalService;

	@Autowired
	ForumService forumService;
	
	// 前往會員後台頁
		@PreAuthorize("hasRole('Admin')")
		@RequestMapping(value = "/admin/member", method = RequestMethod.GET)
		public String adminMember() {
			return "/admin/member/admin_copy2a";
		}
		
		//前往活動後台頁
		@PreAuthorize("hasRole('Admin')")
		@RequestMapping(value = "/admin/news", method = RequestMethod.GET)
		public String adminNews() {
			return "/admin/news/manage";
		}
		

		// 前往文章後台頁
		@PreAuthorize("hasRole('Admin')")
		@RequestMapping(value = "/admin/forum", method = RequestMethod.GET)
		public String adminforum() {
			return "/admin/forum/admin";
		}

		// 前往動物後台
		@PreAuthorize("hasRole('Admin')")
		@RequestMapping(value = "/admin/animal", method = RequestMethod.GET)
		public String adminAnimal() {
			return "/admin/halfway/admin_copy";
		}
		
		//前往統計頁面
		@PreAuthorize("hasRole('Admin')")
		@RequestMapping(path = { "/admin/chart" }, method = { RequestMethod.GET })
		public String chart(Model model) {
			return "/admin/chart";
		}
}
