package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.model.ResponseForAnimour;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.entity.Notice;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.member.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AdoptionRestController {

	@Autowired
	AdoptionService adoptionService;

	@Autowired
	AnimalService animalService;

	@Autowired
	MemberService memberService;

	@Autowired
	ResponseForAnimour response;
	
	@Autowired
	NoticeService noticeService;

	private PageInfo defaultPageInfo = new PageInfo(1, 8);

	// 查詢全部
	@RequestMapping(value = { "/halfway/adoption" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public ResponseEntity<?> listAdoption(PageInfo pageinfo) {
		if (pageinfo.getPageNumber() == null) {
			pageinfo.setPageNumber(defaultPageInfo.getPageNumber());
		}
		if (pageinfo.getSize() == null) {
			pageinfo.setSize(defaultPageInfo.getSize());
		}
		Page<Adoption> page = adoptionService.getAdoptionPage(pageinfo); // pageNumber=頁數 pageSize=一頁幾筆資料
		List<Adoption> adoptions = page.getContent();
		response.setData(adoptions);

		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 新增，回傳id
	@RequestMapping(value = { "/halfway/adoption" }, method = RequestMethod.POST)
	public ResponseEntity<?> addAdoption(@RequestBody Adoption adoption, Notice notice) {
		// 設定送出時間
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		adoption.setRequestDate(ts);
		// 設定登入的會員
		Member current = memberService.getNewCurrentMember();
		adoption.setMember(current);
		adoptionService.insert(adoption);
		// 設定 id
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("id", adoption.getId());
		response.setParameters(parameter);
		
//		if (current != null) {
//			notice.setDetail("會員向您發送認養申請");
//			notice.setFromWho(current);
//			notice.setMemberId(adoption.getOwnerId());
//			notice.setHref("/halfway/showAdoption");
//			noticeService.insert(notice);
//			Long count = noticeService.findNotReadCount(adoption.getOwnerId());
//			notice.setCount(count);
//			noticeService.notify(memberService.getOne(adoption.getOwnerId()).getAccount(), notice);
//		}
		
		noticeService.setNotify(adoption.getOwnerId(), "會員向您發送認養申請", "/halfway/showAdoption");
		
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	
	 // 更新自我檢測分數
	@RequestMapping(value = { "/halfway/adoption/{id}" }, method = RequestMethod.PUT)
	public ResponseEntity<?> updateAdoption(@PathVariable Long id, @RequestBody Map<String, Integer> map) {
		Adoption adoption = adoptionService.getOne(id);
		adoption.setScore(map.get("score"));
		adoptionService.update(adoption);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 刪除
	@RequestMapping(value = { "/halfway/adoption/{id}" }, method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteAdoption(@PathVariable Long id) {
		Adoption ad = adoptionService.getOne(id);
		if (ad != null) {
			adoptionService.delete(id);
		}
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 查詢一筆
	@RequestMapping(value = { "/halfway/adoption/{id}" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public Adoption oneAnimal(@PathVariable Long id) {
		Adoption ad = adoptionService.getOne(id);
		return ad;
	}

	// 取得一年內認養次數 (尚未完成)
	@RequestMapping(value = { "/halfway/adoption/check" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public ResponseEntity<?> checkLimit() {
		Member current = memberService.getNewCurrentMember();
//		Map<String, Object> parameter = new HashMap<>();
//		parameter.put("check", adoptionService.checkAdoptionLimit(current.getId()));
		response.setParameters(adoptionService.checkAdoptionLimit(current.getId()));
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 取得quiz題目的json格式資料
	@RequestMapping(value = { "/halfway/quiz" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public ResponseEntity<?> listQuiz(HttpServletRequest request) {
		response.setData(adoptionService.genQuiz(request));
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

}
