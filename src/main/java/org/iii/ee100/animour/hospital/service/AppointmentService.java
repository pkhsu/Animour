package org.iii.ee100.animour.hospital.service;

import java.util.List;

import org.iii.ee100.animour.hospital.dao.AppointmentDao;
import org.iii.ee100.animour.hospital.entity.Appointment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AppointmentService {
	@Autowired
	AppointmentDao appointmentdao;
	
	public void insertAppoint(Appointment appointment)  {
		appointmentdao.save(appointment);
	}
	
	public void deleteAppoint(long id) {
		appointmentdao.delete(id);
	}
	
	public Appointment getOne(long id)  {
		return appointmentdao.findOne(id);
	}
	
	public Iterable<Appointment> getAll()  {
		return appointmentdao.findAll();
	}

}
