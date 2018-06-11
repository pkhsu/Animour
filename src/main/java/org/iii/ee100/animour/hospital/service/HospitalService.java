package org.iii.ee100.animour.hospital.service;

import java.util.ArrayList;
import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.hospital.dao.HospitalDao;
import org.iii.ee100.animour.hospital.entity.Hospital;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HospitalService  {

	@Autowired
	private HospitalDao hospitalDao;


	public void insert(Hospital hospital)  {
		hospitalDao.save(hospital);
	}

	

	public void update(Hospital hospital)  {
		hospitalDao.save(hospital);		
	}

	

	public void delete(Long id) {
		hospitalDao.delete(id);
	}


	public List<Hospital> getAll() {
		return Lists.newArrayList(hospitalDao.findAll());
	}


	public Hospital getOne(Long id) {
		return hospitalDao.findOne(id);
	}
	
	public List<Hospital> getThreeHospital() {
		long[] array=new long[3];//3個數字
		if(hospitalDao.count()!=0) {
		for (int arr=0;arr<array.length;arr++) {
			long i=0;
			p:
			while (i==0) {
				i=(long)(Math.random()*(hospitalDao.count())+1);
				for(int b=0;b<arr;b++) {
					if(array[b]==i) {
						i=0;
						continue p;
					}
					
				}
				array[arr]=i;//不重複
			}//end while
		}//end for
	
		}
		List<Hospital> result =new ArrayList<Hospital>();
		for(int i=0;i<array.length;i++) {
			
			result.add(hospitalDao.findOne(array[i]));
		}
		return result;
	} 
	
	
	
	
}
