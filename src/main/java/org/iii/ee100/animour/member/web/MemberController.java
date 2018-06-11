package org.iii.ee100.animour.member.web;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.apache.poi.util.SystemOutLogger;
import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.service.ForumService;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.Password;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.entity.MyFriend;
import org.iii.ee100.animour.member.service.EmailService;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;

	@Autowired
	AnimalService animalService;

	@Autowired
	ForumService forumService;

	// 導向註冊頁面
	@RequestMapping(value = "/sign_up", method = RequestMethod.GET)
	public String sign(Model model) {
		Member member = new Member();
		model.addAttribute("member", member);
		return "/member/register_original";

	}

	// 送出註冊資料=新增會員
	@RequestMapping(value = "/sign_up", method = RequestMethod.POST)
	public String register(@Valid @ModelAttribute("member") Member member, BindingResult bindingResult) {
		if (bindingResult.hasErrors() || memberService.emailExist(member.getEmail())
				|| memberService.getOneByAccount(member.getUsername()) != null) {
			List<FieldError> errorList = bindingResult.getFieldErrors();
			// for(FieldError error : errorList){
			// System.out.println("error-param:"+error.getField());
			// System.out.println("error-message:"+error.getDefaultMessage());
			// }

			if (memberService.emailExist(member.getEmail())) {
				bindingResult.rejectValue("email", "email message", "email exist");
			}
			if (memberService.getOneByAccount(member.getUsername()) != null) {
				bindingResult.rejectValue("account", "account message", "帳號重複");
			}

			return "/member/register_original";
		} else {
			member.setRegistrationTime(new Timestamp(System.currentTimeMillis()));
			member.setStatus(true);
			if (member.getSignature() == "") {
				member.setSignature(member.getAccount() + " say hi.");
			}

			if (member.getImages() == "") {
				member.setImages("https://i.imgur.com/q9PMXsf.png");

			}
			memberService.insert(member);
			return "redirect:/";// 註冊成功跳轉 login
		}
	}

	// <會員>(get)修改個人資料頁面
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Model model) {
		Member userDetails = memberService.getNewCurrentMember();
		model.addAttribute("member", userDetails);
		return "/member/update";
	}

	// <會員>(post)修改個人資料頁面
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatemember(@Valid Member member, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "/member/update";
		} else {
			if (member.getImages() == "" && memberService.getNewCurrentMember().getImages() != "") {
				member.setImages(memberService.getNewCurrentMember().getImages());
			}
			if (member.getSignature() == "" && memberService.getNewCurrentMember().getSignature() != "") {
				member.setSignature(memberService.getNewCurrentMember().getSignature());
			}
			memberService.update(member);
			return "redirect:/";
		}
	}

	// <會員>(get)修改密碼頁面
	@RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	public String changePassword() {
		return "/member/updatepassword";
	}

	// <會員>(post)修改密碼頁面
	@RequestMapping(value = "/changepassword", method = RequestMethod.POST)
	public String updatePassword(@Valid Password password, BindingResult result, Map<String, Object> map) {
		if (memberService.getNewCurrentMember().getPassword().equals(password.getOldpassword())) {
			if (result.hasErrors()) {
				map.put("newpassword", "請輸入大小寫字母和數字,且長度大於3");
				return "/member/update_password";
			} else {
				memberService.update(memberService.getNewCurrentMember(), password.getNewpassword());
				return "redirect:/logout";
			}
		} else {
			result.rejectValue("oldpassword", "oldpassword", "請確定密碼");
			map.put("oldpassword", result.getFieldError("oldpassword").getDefaultMessage());
			map.put("newpassword", "請輸入大小寫字母和數字,且長度大於3");
			return "/member/updatepassword";

		}

	}

	// 列出(全部)會員-admin
	@RequestMapping("/users")
	public String findAll() {
		return "/member/users";// 先傳送頁面
	}

	// 顯示個人首頁
	@RequestMapping(value = "/user/{account}", method = RequestMethod.GET)
	public String profile(Model model, @PathVariable String account) {
		Member userDetails = memberService.getOneByAccount(account);
		Member currentUserDetails = memberService.getNewCurrentMember();
		// who's hompage (member)
		model.addAttribute("member", userDetails);
		// current Member
		model.addAttribute("currentMember", currentUserDetails);

		// System.out.println("userdetails"+userDetails.getAccount());
		List<Animal> animalls = animalService.getHomepageAnimalList(userDetails.getId());
		model.addAttribute("animalls", animalls);

		List<Article> artls = forumService.getArticlesByMemberId(userDetails.getId());
		// System.out.println("userdetails::"+userDetails.getAccount());
		model.addAttribute("articles", artls);

		List<Member> memberList = new ArrayList<>();
		List<MyFriend> list = memberService.findByMemberIdAndLove(userDetails.getId(), true);
		for (MyFriend friend : list) {
			Member member = memberService.getOne(friend.getFriendId());
			memberList.add(member);
		}
		model.addAttribute("friendlist", memberList);

		return "/member/homepage";
	}

	// post
	@RequestMapping(value = "/forgetpassword", method = RequestMethod.POST)
	public String forgetPassword(@RequestParam(value = "account") String account,
			@RequestParam(value = "email") String email) {
		if (memberService.emailExist(email) && memberService.getOneByAccount(account) != null
				&& memberService.getOneByAccount(account).getEmail().equals(email)) {
			// 寄信
			String text = memberService.newPassword();
			System.out.println("newPassword():" + text);

			memberService.update(memberService.getOneByAccount(account), text);
			mailService.sendEmail(email, "Animour密碼", account + "您好:\n" + "您的新密碼" + text);
			return "redirect:/";

		} else {
			return "/login/login";
		}
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String usermange() {
		return "/403";
	}

	// 前往mail寄信頁面
	@RequestMapping(value = "/mailto", method = RequestMethod.GET)
	public String mailPage() {
		return "/member/mail";
	}

	@Autowired
	EmailService mailService;

	@RequestMapping(value = "/mailto", method = RequestMethod.POST)
	public String mailSussese(@RequestParam(value = "email") String email,
			@RequestParam(value = "subject") String subject, @RequestParam(value = "text") String text) {
		mailService.sendEmail(email, subject, text);
		return "/member/mail";
	}

	// 導向聊天頁面
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	// public String chatPage(@RequestParam(value = "memberId") Long memberId) {
	public String chatPage() {
		return "/member/chat";
	}

	// 導向聊天對話框
	@RequestMapping(value = "/chatbox", method = RequestMethod.GET)
	// public String chatPage(@RequestParam(value = "memberId") Long memberId) {
	public String chatboxPage() {
		return "/member/chatbox";
	}

	// 導向通知頁面
	@RequestMapping(value = "/notification", method = RequestMethod.GET)
	// public String chatPage(@RequestParam(value = "memberId") Long memberId) {
	public String notificationPage() {
		return "/member/notification";
	}

	// @RequestMapping(value = "/adminsendmail", method = RequestMethod.POST)
	// public void adminSendMails(
	// @RequestParam(value="account") String account,
	// @RequestParam(value="subject") String subject,
	// @RequestParam(value="content") String text) {
	// String email=memberService.getOneByAccount(account).getEmail();
	// mailService.sendEmail(email,subject, text);
	// }

}
