package org.iii.ee100.animour.salon.web;

import org.iii.ee100.animour.salon.entity.Reservation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FormsController {
	
	
	
	@RequestMapping(path = { "/reservation" }, method = { RequestMethod.GET })
	public String reservationTime(Model model) {
		return "/salon/insertReservationForm2";
	}
}
