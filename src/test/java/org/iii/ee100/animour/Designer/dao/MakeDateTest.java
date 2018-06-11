package org.iii.ee100.animour.Designer.dao;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
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
public class MakeDateTest {
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

//	@Test
//	public void freetimeDao() {
//		List<FreeTime> test = new ArrayList<>();
//		test= freeTimeDao.findByStatus("free");
//		System.out.println("aaabbbccc"+test);
//		
//	}
	//預約班表生成
	@Test
	public void makeDate() throws ParseException {
		int i=0;


		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		List<FreeTime> freeTimeList = new ArrayList<>();
		freeTimeList=freeTimeDao.findByStatus("free");
		for(int r=1;r<=7;r++) {
	        Date date=new Date();//取時間
	        Calendar calendar = new GregorianCalendar();
	        calendar.setTime(date);
	        	i++;
	        	calendar.add(calendar.DATE,i);//把日期往後增加一天.整數往後,負數往前
	        	for(int j=1;j<=6;j++) {
	        		date=calendar.getTime(); //這個就是時間往後推一天的结果
	        		String dateString = formatter.format(date);
	        		date=formatter.parse(dateString);
	        		for(FreeTime freeTime:freeTimeList) {
	        			if(!freeTime.getAppointDate().equals(date)) {
	        				freeTime.setId(null);
	        				freeTime.setAppointDate(date);
	    					freeTimeDao.save(freeTime);

	        			}
	        			
	        		}
	        	}
	        	
	        	
	        }
	    
	}

}
