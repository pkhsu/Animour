package org.iii.ee100.animour.hospital.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.hospital.entity.Hospital;
import org.iii.ee100.animour.hospital.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HospitalController {

	@Autowired
	HospitalService hospitalService;
	
	
	@RequestMapping("/hospitalform")
	public String index(Model model) {

		return "/hospital/form";
	}
	
	@RequestMapping(path= {"/selectonehospital"},method={RequestMethod.POST})
	public String selectOneHospital(Hospital hospital, Model model) {
		hospital=hospitalService.getOne(hospital.getId());
		if (hospital != null) {
		model.addAttribute("onehospital", hospital);
		}
		return "/hospital/hospitalist";
	}

	@RequestMapping("/selectallhospital")
	public String findAllHospital(Model model)  {
		List<Hospital> hospital =hospitalService.getAll();
		model.addAttribute("alllist", hospital);		
		return "/hospital/hospitalist";
	}	
	


	@RequestMapping(path= {"/inserthospital"}, method={RequestMethod.POST})
	public String insertHospital(Hospital hospital, Model model) {
		hospitalService.insert(hospital);
		model.addAttribute("insert", hospital);
		return "/hospital/hospitalist";
	}
	
	
	@RequestMapping(path= {"/deletehospital"}, method={RequestMethod.POST})
	public String deleteOneProduct(Hospital hospital, Model model) {
		hospitalService.delete(hospital.getId());
		model.addAttribute("delete", hospital.getId());
		return "/hospital/hospitalist";
	}
	

	
	@RequestMapping(path= {"/updatehospital"}, method={RequestMethod.POST})
	public String updateProduct(Hospital hospital, Model model) {
		hospitalService.update(hospital);
		model.addAttribute("update", hospital);
		return "/hospital/hospitalist";
	}
	

	
	
}
