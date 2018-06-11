package org.iii.ee100.animour.salon.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	



	@RequestMapping(path = { "/editReservation" }, method = { RequestMethod.GET })
	public String editReservation(Model model) {
		return "/salon/editReservation";
	}
	//管理員連結
	@RequestMapping(path = { "/salonAdminReservation" }, method = { RequestMethod.GET })
	public String salonAdminReservation(Model model) {
		return "/salon/salonAdminReservation";
	}
	@RequestMapping(path = { "/reservation/introduce" }, method = { RequestMethod.GET })
	public String reservationTimeInsert(@ModelAttribute("reservation")Reservation reservation,Model model) throws Exception {
		return "/salon/introduce";
	}
	
	//選取服務種類
	@RequestMapping(path = { "/appointment/firstPage" }, method = { RequestMethod.GET })
	public String showServiceType(Model model) {
		ArrayList<ServiceContent> allType= reservationService.getThreeServiceConten();
		model.addAttribute("allType",allType);
		return "/salon/reservation";		
	}

	
	@ModelAttribute("allContent")
	public Map<String,String> getAllContent() {
		Map<String,String> contentMaps = new HashMap<>();
		List<ServiceContent>serviceContents=reservationService.getThreeServiceConten();
		for(ServiceContent serviceContent:serviceContents) {
			contentMaps.put(serviceContent.getContent(), serviceContent.getContent());
		}
		return contentMaps;
	
	}

	@ModelAttribute("allDate")
	public Map<Long,Date> getAllDate() throws Exception {
		Map<Long,Date> DateMaps = new HashMap<>();
		List<Reservation>reservationDateList=reservationService.getAll();
		for(Reservation reservation:reservationDateList) {
			DateMaps.put(reservation.getId(), reservation.getReservationDate());
		}
		return DateMaps;
		
	}
	@ModelAttribute("allDesigner")
	public Map<String,String> getAllDesigner() throws Exception {
		Map<String,String> DateMaps = new HashMap<>();
		List<Designer>DesignerList=reservationService.getAllDesigner();
		for(Designer designer:DesignerList) {
			DateMaps.put(designer.getDesigner(),designer.getDesigner());
		}
		return DateMaps;
		
	}
	






}
