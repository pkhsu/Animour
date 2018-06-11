package org.iii.ee100.animour.donate.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.donate.dao.DonateDao;
import org.iii.ee100.animour.donate.entity.Donate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DonateService {

	@Autowired
	DonateDao donateDao;

	public void insert(Donate donate) {
		donateDao.save(donate);
	}

	public void delete(Long id) {
		donateDao.delete(id);
	}

	public void update(Donate donate) {
		donateDao.save(donate);
	}

	public List<Donate> getAll() {
		return Lists.newArrayList(donateDao.findAll());
	}

	public Donate getOne(Long id) {
		return donateDao.findOne(id);
	}

}
