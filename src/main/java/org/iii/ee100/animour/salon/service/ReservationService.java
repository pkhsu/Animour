package org.iii.ee100.animour.salon.service;

import java.sql.Time;
import java.text.DateFormat;
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
import java.util.Set;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.model.PageForAnimour;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.salon.dao.DesignerDao;
import org.iii.ee100.animour.salon.dao.FreeTimeDao;
import org.iii.ee100.animour.salon.dao.ReservationDao;
import org.iii.ee100.animour.salon.dao.ServiceContentDao;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.FreeTime;
import org.iii.ee100.animour.salon.entity.NameAndDate;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ReservationTime;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class ReservationService extends GenericService<Reservation> {

	@Autowired
	ReservationDao reservationDao;

	@Autowired
	DesignerDao designerDao;

	@Autowired
	ServiceContentDao serviceContentDao;

	@Autowired
	org.iii.ee100.animour.salon.dao.reservationTimeDao reservationTimeDao;

	public void deleteReservation(Reservation id) {
		reservationDao.delete(id);
	}

	public ArrayList<Reservation> getAllReservationContent() {
		return Lists.newArrayList(reservationDao.findAll());
	}
	public ArrayList<Reservation> getMemberContent(long id) {
		return Lists.newArrayList(reservationDao.findByMemberId(id));
	}
	@Autowired
	FreeTimeDao freeTimeDao;
	public ArrayList<FreeTime> getBReservation(String status) {
		return Lists.newArrayList(freeTimeDao.findByStatus(status));
	}
	
	public ArrayList<FreeTime> getDesigner(String designer) {
		return Lists.newArrayList(freeTimeDao.findByDesigner(designer));
		
	}
	
	public ArrayList<FreeTime> getFreeDate(Date appointDate) {
		return Lists.newArrayList(freeTimeDao.findByAppointDate(appointDate));
		
	}
	
	
	
	public FreeTime updateBReservationStatus(FreeTime freeTime) {
		return freeTimeDao.save(freeTime);
	}
	

	public Reservation updateReservation(Reservation reservation) {
		reservation.setAppointDate(reservation.getAppointDate());
		reservation.setDesigner(reservation.getDesigner());
		reservation.setPayment(reservation.getPayment());
		return reservationDao.save(reservation);
		
	}
	
	public Reservation insertReservation(Reservation reservation) {
		return reservationDao.save(reservation);
	}

	public List<Designer> getAllDesigner() {
		return Lists.newArrayList(designerDao.findAll());

	}
	//找設計師和有空時間
	public ArrayList<FreeTime> getFreeDesignerTime(String designer,String status){
		return Lists.newArrayList(freeTimeDao.findByDesignerAndStatus(designer, status));
	}
	
	public ArrayList<FreeTime> getFreeDesignerTimeAndDate(String designer,String status,Date appointDate){
		return Lists.newArrayList(freeTimeDao.findByDesignerAndStatusAndAppointDate(designer, status, appointDate));
	}

	public ArrayList<ReservationTime> getAllReservationTime() {
		return Lists.newArrayList(reservationTimeDao.findAll());
	}

	public Reservation getOne(Long id) {
		return reservationDao.findOne(id);
	}

	public ServiceContent getServiceContentId(Long id) {
		return serviceContentDao.findOne(id);
	}

	public ArrayList<ServiceContent> getAllServiceContent() {
		
		return Lists.newArrayList(serviceContentDao.findAll());

	}
	
	public ArrayList<ServiceContent> getThreeServiceConten() {
		return Lists.newArrayList(serviceContentDao.findTop3ByOrderByIdDesc());

	}
	
	public Map<String,Integer> chart() {
		List<Reservation> list = reservationDao.findAll();
		Map<String,Integer> map = new HashMap<String,Integer>();
		for(Reservation reservation:list) {
			if (map.containsKey(reservation.getDesigner())) {
				map.put(reservation.getDesigner(), map.get(reservation.getDesigner()) + 1);
			}else {
				map.put(reservation.getDesigner(), 1);
			}
		}
		return map;
	}
	//預約班表生成
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
	        				freeTime.setAppointDate(date);
	    					freeTimeDao.save(freeTime);

	        			}
	        			
	        		}
	        	}
	        	
	        	
	        }
	    
	}

	
	//判斷日期是否重複並改變狀態
	public void freeTime(Reservation reservation) {
		// 取出各Table設計師名稱、時間內容種類
		String status="free";
		List<Reservation> reservationList = this.getAllReservationContent();
		List<FreeTime> freeTimeList = this.getBReservation(status);
		DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		//取出各object裡的屬性互相比較
			for(FreeTime freeTimeFoum:freeTimeList) {
				long id=freeTimeFoum.getId();
				String Bdesigner=freeTimeFoum.getDesigner();
				Time BfrontTime =freeTimeFoum.getFrontTime();
				Date BreservationDate=freeTimeFoum.getAppointDate();
				String stringDateB=simpleDateFormat.format(BreservationDate);
				Date AreservationDate=reservation.getReservationDate();
				String stringDateA=simpleDateFormat.format(AreservationDate);

				String Adesigner=reservation.getDesigner();
				Time AfrontTime=reservation.getFrontTime();
				
				//比較有沒有重複時間
				if(stringDateA.equals(stringDateB)&&Adesigner.equals(Bdesigner)&&AfrontTime.equals(BfrontTime)) {
					FreeTime freeTime=(freeTimeDao.findOne(id));
					System.out.println("asdfgh"+id);
					System.out.println("Adesigner"+Adesigner+"Bdesigner"+Bdesigner);
					freeTime.setFrontTime(BfrontTime);
					freeTime.setAppointDate(BreservationDate);
					freeTime.setDesigner(Bdesigner);
					freeTime.setStatus("busy");
					freeTimeDao.save(freeTime);
				}
			}
		
		
	
	}
	
	//判斷服務內容是否重複
	public Reservation decideThreeContentRepeateOrNot(Reservation reservation,ServiceContent serviceContentFinally) {
		//取出各Table設計師名稱、服務內容種類
		List<Designer> designerList=this.getAllDesigner();
		ArrayList<ServiceContent> serviceContentList=this.getAllServiceContent();
		//前端日期輸入
		Date compareDate = reservation.getReservationDate();
		
		
		//預約內容明細
		List<Reservation> reservationListData = new ArrayList<>();
		reservationListData = reservationDao.findAll();
		//取出資料庫的日期、內容、設計師名稱
		for (Reservation reservations : reservationListData) {
			//設計師Table
			for(Designer designers:designerList) {
				//服務內容Table
				for(ServiceContent serviceContents:serviceContentList) {
					Date mainDate = reservations.getReservationDate();
					String mainDesigner=reservations.getDesigner();
					String mainContent=reservations.getContent();
					String compareDesigner=designers.getDesigner();
					String compareConten=serviceContents.getContent();

					if(!mainDate.equals(compareDate)||!mainDesigner.equals(compareDesigner)||!mainContent.equals(compareConten)) {
						serviceContentDao.save(serviceContentFinally);

					}
				}
			}
				
			
		}
		
		return null;
		
		

	}
	

	// 計算總時數
	public Integer addServiceTime() {
		ServiceContent serviceContent = new ServiceContent();
		return serviceContent.getTime();
	}

	public Reservation repeateOrNot(Reservation reservation) throws ParseException {
		List<Reservation> reservationList = new ArrayList<>();
		reservationList = reservationDao.findAll();
		Date compareDate = reservation.getReservationDate();
		DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateText = simpleDateFormat.format(compareDate);
		Date compareDate2 = simpleDateFormat.parse(dateText);

		// System.out.println("catch textDate :"+dateText);
		int flag2 = 0;
		int flag3 = 0;
		for (Reservation reservations : reservationList) {
			Date mainDate = reservations.getReservationDate();
			if (mainDate.equals(compareDate2)) {
				flag3++;

			} else {
				flag2++;
				if (flag2 == reservationList.size()) {
					System.out.println("flag2number"+flag2);
					reservationDao.save(reservation);
				}
			}
		}
		return reservation;
	}

	// 預約幾筆的頁面方法
	public Page<Reservation> getReservationPage(PageForAnimour pageForAnimour) {
		pageForAnimour.setSize(6);
		PageRequest request = new PageRequest(pageForAnimour.getPageNo(), pageForAnimour.getSize(), Sort.Direction.ASC,
				"id");

		return reservationDao.findAll(request);
	}
	
	public void decideThreeContentRepeateOrNot() throws ParseException {
		// 取出各Table設計師名稱、時間內容種類
		Reservation reservation = new Reservation();
		// 時間、設計師、日期的空物件
		ReservationTime reservationTime = null;
		Designer designer = null;
		
		//使用空set放置不重複物件
		Set<ReservationTime> reservationTimeSetList = new HashSet<ReservationTime>();
		Set<Designer> designerSetList = new HashSet<Designer>();

		//
		List<Designer> designerList = this.getAllDesigner();
		ArrayList<ReservationTime> reservationTimeList = this.getAllReservationTime();
		// 前端日期輸入
		// Date compareDate = reservation.getReservationDate();

		DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		//預設時間
		int i=0;
		
        

         //這個就是時間往後推一天的结果
		// 預約內容明細
		List<Reservation> reservationListData = new ArrayList<>();
		reservationListData = reservationDao.findAll();
		// 取出資料庫的日期、內容、設計師名稱
		for (Reservation reservations : reservationListData) {
			// 設計師Table
			for (Designer designers : designerList) {
				// 服務內容Table
				for (ReservationTime reservationTimes : reservationTimeList) {
					Date mainDate = reservations.getReservationDate();
					Date CurrentDate=new Date();//取時間
			        Calendar calendar = new GregorianCalendar();
					calendar.setTime(CurrentDate);
					calendar.add(calendar.DATE,i);//把日期往後增加一天.整數往後,負數往前
			        CurrentDate=calendar.getTime();
			        i++;
//					String stringDate= simpleDateFormat.format(mainDate);
//					Date mainDate2=simpleDateFormat.parse(stringDate);
					String mainDesigner = reservations.getDesigner();
					Time mainTime = reservations.getFrontTime();
					String compareDesigner = designers.getDesigner();
					Time compareTime = reservationTimes.getFrontTime();
//					System.out.println(mainDate2);
					if (!mainDate.equals(CurrentDate) || !mainDesigner.equals(compareDesigner)||!mainTime.equals(compareTime)) {

						// if(!reservationTime.getFrontTime().equals(compareTime)) {
						 reservationTime =new ReservationTime();
						 reservationTime.setFrontTime(compareTime);
						 reservationTimeSetList.add(reservationTime);
//						 }
						System.out.println("compareDate2: " + CurrentDate);
//
						designer = new Designer();
						designer.setDesigner(compareDesigner);
						designerSetList.add(designer);
						// if(!reservationDate.getReservationDate().equals(compareDate2)) {
//						 reservationDateFinallyList.add(reservationDate);
						// }
					}
				}
			}

		}

		 for(ReservationTime finalAnswer:reservationTimeSetList) {
		 System.out.println("finalAnswer"+finalAnswer.getFrontTime());
		 }
 		for (Designer finalAnswer2 : designerSetList) {
			System.out.println("finalAnswer2" + finalAnswer2.getDesigner());
		}

	}


}
