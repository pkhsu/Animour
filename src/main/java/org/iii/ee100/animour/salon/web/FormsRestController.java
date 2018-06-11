package org.iii.ee100.animour.salon.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.iii.ee100.animour.Designer.dao.MakeDateTest;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.FreeTime;
import org.iii.ee100.animour.salon.entity.NameAndDate;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ReservationTime;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/reservationForms")
public class FormsRestController {
	
	@Autowired
	ReservationService reservationService;
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/Reservation",method = RequestMethod.GET,produces = { "application/json"})
	public List<Reservation> Reservation(){
		return reservationService.getAllReservationContent();
		
	}
	
//	@RequestMapping(value="/ReservationDate",method = RequestMethod.GET,produces = { "application/json"})
//	public List<ReservationDate> ReservationDate(){
//		return null;
//		
//	}
	
//	@RequestMapping(value="/getDesignerTime",method = RequestMethod.GET)
//	public List<FreeTime> getDesigner(String engineer,FreeTime freeTime,@RequestParam (value="key") String designer1){
//		engineer=freeTime.getEngineer();
//		System.out.println("yoyoyo"+designer1);
//		return reservationService.getDesigner(designer1);
//	}
	//空閒的設計師時間
	@RequestMapping(value="/getFreeDesignerTime",method = RequestMethod.GET)
	public List<FreeTime> freeDesignerTime(String status,@RequestParam (value="aaa2") String designer,@RequestParam (value="bbb2") String appointDate) throws ParseException{
//		System.out.println("oldDate"+appointDate);
		status ="free";
		SimpleDateFormat date =new SimpleDateFormat("yyyy-MM-dd");
		 Date newDate=date.parse(appointDate);
//		 System.out.println("newDate"+newDate);
//		System.out.println("AAAAAAaaaaas"+reservationService.getFreeDesignerTimeAndDate(nameAndDate.getDesigner(), status, nameAndDate.getAppointDate()));
//		System.out.println("aaaabbbb"+reservationService.getFreeDate(newDate));
		 return reservationService.getFreeDesignerTimeAndDate(designer, status, newDate);
	}
	
	//暫時好像沒有用
	@RequestMapping(value="/getFreeTime",method = RequestMethod.GET,produces = { "application/json"})
	public List<FreeTime> getFreeTime(String status) throws ParseException{
		reservationService.makeDate();
		status="free";
//		List<FreeTime> freeTimeList=reservationService.getBReservation(status);
		
		
		return reservationService.getBReservation(status);
	}
	
	
	@RequestMapping(value="/getServiceCotent",method = RequestMethod.GET,produces = { "application/json"})
	public List<ServiceContent> getServiceCotent(){
		return reservationService.getAllServiceContent();
		
	}
	@RequestMapping(value="/getTimeSection",method = RequestMethod.GET,produces = { "application/json"})
	public List<ReservationTime> getTimeSection(){
		return reservationService.getAllReservationTime();
		
	}
	@RequestMapping(value="/getDesigner",method = RequestMethod.GET,produces = { "application/json"})
	public List<Designer> getDesigner(){
		return reservationService.getAllDesigner();
		
	}
	
	
	@RequestMapping(method = RequestMethod.POST,produces = { "application/json"})
	public ResponseEntity<?> insertReservation(@Valid @RequestBody Reservation reservation) throws ParseException {
		Member currentMember = memberService.getNewCurrentMember();
		reservation.setMember(currentMember);
		reservation.setPayment("未付款");
		reservation.setTotalTime(1);
		 reservationService.repeateOrNot(reservation);
		 reservationService.freeTime(reservation);
		return new ResponseEntity<Reservation>(reservation, HttpStatus.OK);
	}
	

}
