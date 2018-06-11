package org.iii.ee100.animour.Designer.dao;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.salon.dao.ReservationDao;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class someId {
	@Autowired
	MemberService memberService;
	@Autowired
	Reservation reservation;
	@Autowired
	ReservationService reservationService;
	@Autowired
	ReservationDao reservationDao;

	@Test
	public void test() throws Exception {
		ArrayList<Reservation> list=new ArrayList<>();
//		long id=1;
//		list=reservationService.getServiceContenByMemberId(id);
//		System.out.println("aaabbb"+list);
		long id=2;
		
		list =reservationService.getAll();
		
	}

}
