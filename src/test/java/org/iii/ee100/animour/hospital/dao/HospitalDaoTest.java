package org.iii.ee100.animour.hospital.dao;

import static org.junit.Assert.fail;

import org.iii.ee100.animour.hospital.entity.Hospital;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HospitalDaoTest {

	@Autowired
	private HospitalDao hospitaldao;
	
	@Test
	public void testFindAll() {
		Iterable<Hospital> hospital=hospitaldao.findAll();	

		for(Hospital hosp:hospital) {
			System.out.println(hosp);
		}
		
	}

}
