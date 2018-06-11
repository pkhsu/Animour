package org.iii.ee100.animour.hospital.web;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import org.iii.ee100.animour.hospital.entity.Appointment;
import org.iii.ee100.animour.hospital.entity.Hospital;
import org.iii.ee100.animour.hospital.service.AppointmentService;
import org.iii.ee100.animour.hospital.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HospitalIndexController {

	@Autowired
	HospitalService hospitalService;
	@Autowired
	AppointmentService appointmentService;
	
	//寵物醫院&各區醫院
	@RequestMapping("/hospital")
	public String index2(Model model) {
		List<Hospital> hospital =hospitalService.getAll();
		model.addAttribute("alllist", hospital);		
		return "/hospital/hospitalindex";
	}

	//預約醫院
	@RequestMapping(path= {"/hospital/appointmentdate"},method={RequestMethod.POST})
	public String order(Model model, Hospital hospital) {
		if(hospital !=null) {
		hospital =hospitalService.getOne(hospital.getId());
		model.addAttribute("onehospital", hospital);
		return "/hospital/appointment";
		
		}
		else {
			return "/news/NewsIndex";
		}
		}

	
	//填寫預約資訊
	@RequestMapping("/insert_app_date")
	public String order(Model model,Appointment appointment
			,Hospital hospital
			) {
		appointmentService.insertAppoint(appointment);
		if(appointment.getId() !=null) {
		appointment=appointmentService.getOne(appointment.getId());
		hospital=hospitalService.getOne(appointment.getHospital_id());
		model.addAttribute("inserta",appointment );
		model.addAttribute("hospital_insertApp",hospital );

		}
		return "/hospital/appointmentList";
	}
	
	
	//查詢預約資料
	@RequestMapping("/findorder")
	public String order(Model model
			) {
		Iterable<Appointment> allorder=appointmentService.getAll();
		model.addAttribute("app", allorder);
		
		return "/hospital/allappointment";
	}
	
	
    final static SimpleDateFormat  df = new SimpleDateFormat("yyyy-MM-dd hh:mm");
	
	
}
