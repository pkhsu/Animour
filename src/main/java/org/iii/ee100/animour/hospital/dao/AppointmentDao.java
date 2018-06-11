package org.iii.ee100.animour.hospital.dao;

import org.iii.ee100.animour.hospital.entity.Appointment;
import org.springframework.data.repository.CrudRepository;

public interface AppointmentDao extends CrudRepository<Appointment, Long> {

}
