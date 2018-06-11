package org.iii.ee100.animour.hospital.service;

import java.util.List;

import org.iii.ee100.animour.hospital.dao.OutpatientDao;
import org.iii.ee100.animour.hospital.entity.Outpatient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OutpatientService {
	@Autowired
	OutpatientDao outpatientdao;
	
	public void insertAppoint(Outpatient outpatient)  {
		outpatientdao.save(outpatient);
	}
	
	public void deleteAppoint(long id) {
		outpatientdao.delete(id);
	}
	
	public Outpatient getOne(long id)  {
		return outpatientdao.findOne(id);
	}
	
	public Iterable<Outpatient> getAll()  {
		return outpatientdao.findAll();
	}

}
