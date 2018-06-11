package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.List;

import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.model.ResponseForAnimour;
import org.iii.ee100.animour.halfway.entity.AcceptRecord;
import org.iii.ee100.animour.halfway.service.AcceptRecordService;
import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AcceptRecordRestController {

	@Autowired
	AdoptionService adoptionService;

	@Autowired
	AnimalService animalService;

	@Autowired
	AcceptRecordService acceptRecordService;

	@Autowired
	MemberService memberService;

	@Autowired
	ResponseForAnimour response;

	private PageInfo defaultPageInfo = new PageInfo(1, 8);

	// 查詢全部
	@RequestMapping(value = { "/halfway/acceptrecord" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public ResponseEntity<?> listAdoption(PageInfo pageinfo) {
		if (pageinfo.getPageNumber() == null) {
			pageinfo.setPageNumber(defaultPageInfo.getPageNumber());
		}
		if (pageinfo.getSize() == null) {
			pageinfo.setSize(defaultPageInfo.getSize());
		}
		Page<AcceptRecord> page = acceptRecordService.getAccpetRecordPage(pageinfo); // pageNumber=頁數 pageSize=一頁幾筆資料
		List<AcceptRecord> adoptions = page.getContent();
		response.setData(adoptions);

		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 刪除
	@RequestMapping(value = { "/halfway/acceptrecord/{id}" }, method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteAdoption(@PathVariable Long id) {
		AcceptRecord ad = acceptRecordService.getOne(id);
		if (ad != null) {
			acceptRecordService.delete(id);
		}
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 查詢一筆
	@RequestMapping(value = { "/halfway/acceptrecord/{id}" }, method = RequestMethod.GET, produces = {
			"application/json", "application/xml" })
	public AcceptRecord oneAcceptRecord(@PathVariable Long id) {
		AcceptRecord ad = acceptRecordService.getOne(id);
		return ad;
	}

	// 設定 depositMember 為 true，id 為認養紀錄 id
	@RequestMapping(value = "/halfway/setdepositMemberTrue/{id}") // findAll
	public ResponseEntity<?> setdepositMemberTrue(@PathVariable Long id) {
		AcceptRecord ad = acceptRecordService.getOne(id);
		ad.setDepositMember(true);
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		ad.setDepositMemberDate(ts);
		acceptRecordService.update(ad);

		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 設定 depositOwner 為 true，id 為認養紀錄 id
	@RequestMapping(value = "/halfway/setdepositOwnerTrue/{id}") // findAll
	public ResponseEntity<?> setdepositOwnerTrue(@PathVariable Long id) {
		AcceptRecord ad = acceptRecordService.getOne(id);
		ad.setDepositOwner(true);
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		ad.setDepositOwnerDate(ts);
		acceptRecordService.update(ad);

		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 設定 doneMember 為 true，id 為認養紀錄 id
	@RequestMapping(value = "/halfway/setdoneMemberTrue/{id}") // findAll
	public ResponseEntity<?> setdoneMemberTrue(@PathVariable Long id) {
		AcceptRecord ad = acceptRecordService.getOne(id);
		ad.setDoneMember(true);
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		ad.setDoneMemberDate(ts);
		acceptRecordService.checkProcessEnd(ad);

		acceptRecordService.update(ad);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 設定 doneOwner 為 true，id 為認養紀錄 id
	@RequestMapping(value = "/halfway/setdoneOwnerTrue/{id}") // findAll
	public ResponseEntity<?> setdoneOwnerTrue(@PathVariable Long id) {
		AcceptRecord ad = acceptRecordService.getOne(id);
		ad.setDoneOwner(true);
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		ad.setDoneOwnerDate(ts);
		acceptRecordService.checkProcessEnd(ad);

		acceptRecordService.update(ad);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	@RequestMapping(value = "/halfway/setReport/{id}") 
	public ResponseEntity<?> setReport(@PathVariable Long id) {
		AcceptRecord ad = acceptRecordService.getOne(id);
		ad.setSuccess(false);
		acceptRecordService.update(ad);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

}
