package org.iii.ee100.animour.Designer.dao;

import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.iii.ee100.animour.salon.dao.DesignerDao;
import org.iii.ee100.animour.salon.dao.FreeTimeDao;
import org.iii.ee100.animour.salon.dao.ReservationDao;
import org.iii.ee100.animour.salon.dao.ServiceContentDao;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.FreeTime;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ReservationTime;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DesignerDaoTest {

	@Autowired
	private DesignerDao designerDao;
	// @Autowired
	private ServiceContentDao serviceContenDao;
	@Autowired
	private ReservationService reservationService;

	@Autowired
	ReservationDao reservationDao;
	
	@Autowired
	FreeTimeDao freeTimeDao;
	@Test
	public void printsomething() {
//		System.out.println("hhhhhhhhhh"+freeTimeDao.findByDesigner("飛影"));
		System.err.println("hhhhhhhhhh"+freeTimeDao.findByDesignerAndStatus("飛影", "free"));
	}
//	@Test
//	public void decideThreeContentRepeateOrNot() throws ParseException {
//		// 取出各Table設計師名稱、時間內容種類
//		FreeTime freeTime= new FreeTime();
//		String status="free";
//		List<Reservation> reservationList = reservationService.getAllReservationContent();
//		List<FreeTime> freeTimeList = reservationService.getBReservation(status);
//		//取出各object裡的屬性互相比較
//		for(Reservation reservationFoum:reservationList) {
//			for(FreeTime freeTimeFoum:freeTimeList) {
//				long id=freeTimeFoum.getId();
//				String Bdesigner=freeTimeFoum.getBdesigner();
//				Time BfrontTime =freeTimeFoum.getBfrontTime();
//				Date BreservationDate=freeTimeFoum.getBreservationDate();
//				Date AreservationDate=reservationFoum.getReservationDate();
//				String Adesigner=reservationFoum.getDesigner();
//				Time AfrontTime=reservationFoum.getFrontTime();
//				
//				//比較有沒有重複時間
//				if(AreservationDate.equals(BreservationDate)&&Adesigner.equals(Bdesigner)&&AfrontTime.equals(BfrontTime)) {
//					freeTime=(freeTimeDao.findOne(id));
//					freeTime.setBfrontTime(BfrontTime);
//					freeTime.setBreservationDate(BreservationDate);
//					freeTime.setBdesigner(Bdesigner);
//					freeTime.setStatus("busy");
//					freeTimeDao.save(freeTime);
//				}
//			}
//		}
//		
//	}
//}
		//使用空set放置不重複物件
//		Set<ReservationTime> reservationTimeSetList = new HashSet<ReservationTime>();
//		Set<Designer> designerSetList = new HashSet<Designer>();

		//
//		List<Designer> designerList = reservationService.getAllDesigner();
//		ArrayList<ReservationTime> reservationTimeList = reservationService.getAllReservationTime();
		// 前端日期輸入
		// Date compareDate = reservation.getReservationDate();

//		DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		//預設時間
//		int i=0;
		
        

       
		

	// public void TestInsertDesigner() {
	// Designer designer = new Designer();
	// designer.setDesigner("小美");
	// designer.setFreeTime(Timestamp.valueOf("2018-06-01 09:00:00"));
	// designer.setOneFree(1);
	// designerDao.save(designer);
	//
	// Designer designer2 = new Designer();
	// designer2.setDesigner("阿明");
	// designer2.setFreeTime(Timestamp.valueOf("2018-06-01 10:00:00"));
	// designer2.setOneFree(1);
	// designerDao.save(designer2);
	//
	// Designer designer3 = new Designer();
	// designer3.setDesigner("志偉");
	// designer3.setFreeTime(Timestamp.valueOf("2018-06-01 11:00:00"));
	// designer3.setOneFree(1);
	// designerDao.save(designer3);
	//
	// Designer designer4 = new Designer();
	// designer4.setDesigner("阿湯");
	// designer4.setFreeTime(Timestamp.valueOf("2018-06-01 12:00:00"));
	// designer4.setOneFree(1);
	// designerDao.save(designer4);
	//
	// Designer designer5 = new Designer();
	// designer5.setDesigner("阿生");
	// designer5.setFreeTime(Timestamp.valueOf("2018-06-01 02:00:00"));
	// designer5.setOneFree(1);
	// designerDao.save(designer5);
	//
	// Designer designer6 = new Designer();
	// designer6.setDesigner("阿佑");
	// designer6.setFreeTime(Timestamp.valueOf("2018-06-01 03:00:00"));
	// designer6.setOneFree(1);
	// designerDao.save(designer6);
	//
	// }

	// @Test
	// public void reservationForm() {
	// PageForAnimour pageForAnimour =new PageForAnimour();
	// Page<Reservation> page =
	// reservationService.getReservationPage(pageForAnimour);
	// List<Reservation> ReservationList = page.getContent();
	// System.out.println(ReservationList);
	//
	// }
	// @Test
	// public void getReservationPage() {
	// PageForAnimour pageForAnimour =new PageForAnimour();
	// pageForAnimour.getPageRequest();
	// PageRequest request = new PageRequest(pageForAnimour.getPageNo(),
	// pageForAnimour.getSize(), Sort.Direction.DESC,"reservationDate");
	// System.out.println(request);
	// }

	// @Test
	// public void TestfindAll() {
	// System.out.println(designerDao.findAll());
	// }

	// @Test
	// public void TestfindContentall() {
	// System.out.println(reservationService.getAllServiceContent());
	// }

}
