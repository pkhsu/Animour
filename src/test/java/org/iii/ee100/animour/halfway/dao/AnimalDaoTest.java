package org.iii.ee100.animour.halfway.dao;

import static org.junit.Assert.fail;


import org.iii.ee100.animour.halfway.entity.Animal;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@SpringBootTest
public class AnimalDaoTest {

	@Autowired
	private AnimalDao animalDao;

	@Test
	public void testFindAll() {
		Iterable<Animal> animals = animalDao.findAll();

		for (Animal animal : animals) {
			System.out.println(animal);
		}
	}

}
