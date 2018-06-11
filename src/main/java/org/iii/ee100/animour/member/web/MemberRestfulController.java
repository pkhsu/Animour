package org.iii.ee100.animour.member.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Transient;

import org.iii.ee100.animour.common.model.ResponseForAnimour;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.Mail;
import org.iii.ee100.animour.member.ManyMail;
import org.iii.ee100.animour.member.MemberStatus;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.entity.MyFriend;
import org.iii.ee100.animour.member.entity.Notice;
import org.iii.ee100.animour.member.service.EmailService;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.member.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/member/all")
public class MemberRestfulController {
	@Autowired
	MemberService memberService;

	// admin
	@RequestMapping(method = RequestMethod.GET, produces = { "application/json" })
	public List<Member> findAll() {
		List<Member> members = memberService.getAll();
		return members;
	}

	@RequestMapping(value = "/api/member/{account}", method = RequestMethod.GET, produces = { "application/json" })
	public Member findByAccount(@PathVariable("account") String account) {
		return memberService.getOneByAccount(account);
	}

	@RequestMapping(value = "/member/{id}", method = RequestMethod.GET, produces = { "application/json" })
	public Member findById(@PathVariable("id") Long id) {
		return memberService.getOne(id);
	}

	// 不確定能不能用
	// @RequestMapping(value = "/member/{id}", method = RequestMethod.PUT, consumes
	// = { "application/json" })
	// public ResponseEntity<?> updateReservation(@PathVariable(value = "id") Long
	// id, @Valid @RequestBody Member member) {
	// memberService.insert(member);
	// return new ResponseEntity<Member>(member, HttpStatus.OK);
	//
	// }

	// 新增朋友
	@RequestMapping(value = { "/addfriend" }, method = RequestMethod.POST)
	public ResponseEntity<?> addFriend(MyFriend friend) {
		friend.setMember(memberService.getNewCurrentMember());
		if (memberService.findByMemberIdAndFriendId(friend.getMember().getId(), friend.getFriendId()) == null) {
			friend.setLove(true);
			memberService.insertFriend(friend);
			return new ResponseEntity<MyFriend>(friend, HttpStatus.OK);
		} else {
			memberService.updateFriend(friend);
			MyFriend newFriend = memberService.findByMemberIdAndFriendId(friend.getMember().getId(),
					friend.getFriendId());
			return new ResponseEntity<MyFriend>(newFriend, HttpStatus.OK);
		}

	}

	// homepage (加好友狀態)
	@RequestMapping(value = "/member/friend/{Id}", method = RequestMethod.GET, produces = { "application/json" })
	public MyFriend heartStatus(@PathVariable String Id) {
		Long friendId = Long.valueOf(Id);
		Long memberId = memberService.getNewCurrentMember().getId();
		MyFriend friend = memberService.findByMemberIdAndFriendId(memberId, friendId);
		if (friend == null) {
			System.out.println("friend.id:" + friend);
			MyFriend friend1 = new MyFriend();
			return friend1;

		} else {
			System.out.println("friend.id:" + friend.getId() + "friend.love:" + friend.getLove());

			return friend;

		}
	}

	@Autowired
	EmailService emailService;

	@RequestMapping(value = "/adminsendmail", method = RequestMethod.POST)
	public ResponseEntity<?> newMail(Mail mail) {
		String email = memberService.getOneByAccount(mail.getAccount()).getEmail();
		emailService.sendEmail(email, mail.getSubject(), mail.getContext());
		return new ResponseEntity<Mail>(mail, HttpStatus.OK);
	}

	@Transient
	@RequestMapping(value = "/adminsendmanymail", method = RequestMethod.POST, consumes = { "application/json" })
	public ResponseEntity<?> newMail(@RequestBody ManyMail manyMail) {
		if (!manyMail.getAccounts().isEmpty() && manyMail.getAccounts().size() > 0) {
			for (String account : manyMail.getAccounts()) {
				String email = memberService.getOneByAccount(account).getEmail();
				emailService.sendEmail(email, manyMail.getSubject(),
						account + "您好\n" + manyMail.getContext() + "\n\n\t\t\t\tAnimour");
			}
			return new ResponseEntity<ManyMail>(manyMail, HttpStatus.OK);
		} else {
			return new ResponseEntity<ManyMail>(manyMail, HttpStatus.BAD_REQUEST);
		}
	}

	@RequestMapping(value = "/deletemember", method = RequestMethod.POST)
	public ResponseEntity<?> delete(MemberStatus member) {
		memberService.changeMemberStatus(member.getId());
		Member member_changed = memberService.getOne(member.getId());
		member.setStatus(member_changed.getStatus());
		return new ResponseEntity<MemberStatus>(member, HttpStatus.OK);
	}

	@Autowired
	NoticeService noticeService;

	@Autowired
	ResponseForAnimour response;

	// 登入時先去撈資料庫中未讀取的通知
	@RequestMapping(value = { "/loadnotice" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public ResponseEntity<?> findNotRead() {
		Member current = memberService.getNewCurrentMember();
		if (current != null) {
			List<Notice> notread = noticeService.findNotReadByMember(current.getId(), false);
			response.setData(notread);
			Map<String, Object> parameters = new HashMap<>();
			parameters.put("count", notread.size());
			response.setParameters(parameters);
		}
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 設定通知為已讀
	@RequestMapping (value = {"/setread/{noticeId}"}, method = RequestMethod.GET)
	public ResponseEntity<?> setNoticeRead(@PathVariable Long noticeId){
		try {
			Notice notice = (Notice)noticeService.getOne(noticeId);
			notice.setStatus(true);
			noticeService.update(notice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	
	

	@Autowired
	AnimalService animalService;

	// 動物後台下架
	@RequestMapping(value = "/deleteanimal", method = RequestMethod.POST)
	public ResponseEntity<?> delete(Animal animal) {

		Animal animal_changed = animalService.getOne(animal.getId());
		if (animal.getDisabled() == true) {
			animal_changed.setDisabled(false);
		} else {
			animal_changed.setDisabled(true);

		}
		return new ResponseEntity<Animal>(animal, HttpStatus.OK);
	}

	//顯示
	@Autowired
	SessionRegistry sessionRegistry;
	@RequestMapping(value = "/findonline", method = RequestMethod.GET)
	public ResponseEntity<?> findOnline() {
		List<Object> slist = sessionRegistry.getAllPrincipals();
		List<String> usersNamesList = new ArrayList<String>();
		if(slist.size()>0) {
		for (Object principal: slist) {
		    if (principal instanceof Member) {
		        usersNamesList.add(((Member) principal).getUsername());
		    }
		}

		System.out.println("查詢全部:"+slist.size());
		System.out.println("查詢結果:"+usersNamesList.get(0));
//		model.addAttribute("loginingAlluser",usersNamesList);
		return new ResponseEntity<List<String>>(usersNamesList, HttpStatus.OK);
		}
		else {
			return new ResponseEntity<List<String>>(usersNamesList, HttpStatus.OK);
		}
	}
	
	@RequestMapping(path = { "/chart" }, method = RequestMethod.GET, produces = { "application/json" })
	public Map<String, Integer> chart() {
		return memberService.chart();
	}
	
}
