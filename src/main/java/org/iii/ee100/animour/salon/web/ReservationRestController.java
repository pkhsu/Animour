package org.iii.ee100.animour.salon.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.iii.ee100.animour.common.model.PageForAnimour;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/reservations")
public class ReservationRestController {

	@Autowired
	ReservationService reservationService;

	@Autowired
	MemberService memberService;

	// findAll
	@RequestMapping(method = RequestMethod.GET, produces = { "application/json" })
	public List<Reservation> reservationForm(PageForAnimour pageForAnimour) {
		List<Reservation> all = null;
		try {
			all = reservationService.getAll();
		} catch (Exception e) {
		}
		for (Reservation reservation : all) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String date = sdf.format(reservation.getReservationDate());
			reservation.setAppointDate(date);
		}
		Page<Reservation> page = reservationService.getReservationPage(pageForAnimour);
		all = page.getContent();
		return all;

	}

	// post
	@RequestMapping(method = RequestMethod.POST, consumes = { "application/json" })
	public Reservation insertReservation(@Valid @RequestBody Reservation reservation) {
		return reservationService.insertReservation(reservation);
	}

	// getId
	@RequestMapping(value = "/reservation/{id}", method = RequestMethod.GET, produces = { "application/json" })
	public Reservation getReservationById(@PathVariable(value = "id") Long reservationId) {
		return reservationService.getOne(reservationId);
	}
	
	
	//只回傳特定會員的訂單
	@RequestMapping(value = "/reservation/member", method = RequestMethod.GET, produces = { "application/json" })
	public List<Reservation> getMemberContent(Reservation reservation) {
		Member currentMember = memberService.getNewCurrentMember();
		List<Reservation> all = null;
		try {
			all = reservationService.getMemberContent(currentMember.getId());
		} catch (Exception e) {
		}
		for (Reservation reservation2 : all) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String date = sdf.format(reservation2.getReservationDate());
			reservation2.setAppointDate(date);
		}		
		return all;
	}
	
	@RequestMapping(value = "/reservation/chart", method = RequestMethod.GET, produces = { "application/json" })
	public Map<String,Integer> getReservationInChart() {
		return reservationService.chart();
	}
	

	// insert a Reservation by id
	// 付款成功不能改資料
	@RequestMapping(value = "/reservation/{id}", method = RequestMethod.POST)
	public ResponseEntity<?> updateReservation(@PathVariable(value = "id") Long id, Reservation reservation,
			@RequestParam("member_id") Long memberid) throws ParseException {
		//取得訂單pk、預約日期
		reservation.getId();
		reservation.getAppointDate();
		//String 轉成 Date
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(reservation.getAppointDate());
		reservation.setReservationDate(date);
		//把回傳的memberid set進會員裡面
		reservation.setMember(memberService.getOne(memberid));
		reservationService.insertReservation(reservation);
		return new ResponseEntity<Reservation>(reservation, HttpStatus.OK);

	}
	
	@RequestMapping(value = { "/reservation/{id}" }, method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteReservation(@PathVariable(value = "id") Long reservationId) {
		Reservation reservation = reservationService.getOne(reservationId);
		reservationService.deleteReservation(reservation);
		return ResponseEntity.ok().build();
	}
}
