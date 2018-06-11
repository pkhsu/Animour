package org.iii.ee100.animour.donate.dao;

import org.iii.ee100.animour.donate.entity.Donate;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DonateDaoTest {

	@Autowired
	private DonateDao donateDao;

	@Test
	public void testFindAll() {
		Iterable<Donate> donates = donateDao.findAll();

		for (Donate donate : donates) {
			System.out.println(donate);
		}
	}

}
