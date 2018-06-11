package org.iii.ee100.animour.Designer.dao;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.model.PageForAnimour;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.salon.dao.FreeTimeDao;
import org.iii.ee100.animour.salon.dao.ReservationDao;
import org.iii.ee100.animour.salon.dao.ServiceContentDao;
import org.iii.ee100.animour.salon.entity.FreeTime;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ChangeDateTest {
	@Autowired
	ReservationService reservationService;

	@Autowired
	ReservationDao reservationDao;

	@Autowired
	ServiceContentDao serviceContent;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	FreeTimeDao freeTimeDao;

	@Test
	public void freetimeDao() throws ParseException {
		List<FreeTime> test = new ArrayList<>();
		test= freeTimeDao.findByStatus("free");
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		Date aaa=date.parse("2018-05-29");
		test= freeTimeDao.findByAppointDate(aaa);
		System.out.println("aaabbbccc"+test);
		
	}
//	 @Test
//	 public void changeDate() {
//	// System.out.println(reservationService);
//	 List<Reservation> reservationList= new ArrayList<>();
//	 reservationList=reservationDao.findAll();
//	 for(Reservation newList:reservationList) {
//	
//	 SimpleDateFormat sdf = new SimpleDateFormat();
//	 String date=sdf.format(newList.getReservationDate());
//	 newList.setAppointDate(date);
//	
//	
//	 }
//	 PageForAnimour pageForAnimour =new PageForAnimour();
//	 Page<Reservation> page=reservationService.getReservationPage(pageForAnimour);
//	 reservationList = page.getContent();
//	
//	 System.out.println("hhhhhhh"+reservationList);
//	
//	 }

//	@Test
//	public void chart() {
//		List<Reservation> list=new ArrayList<>();
//		list = reservationService.getAllReservationContent();
//		Map<String,Integer> map = new HashMap<String,Integer>();
//		for(Reservation reservation:list) {
//			if (map.containsKey(reservation.getDesigner())) {
//				map.put(reservation.getDesigner(), map.get(reservation.getDesigner()) + 1);
//			}else {
//				map.put(reservation.getDesigner(), 1);
//			}
//		}
//		System.out.println("aaabbbccc"+map);
//	}

}
