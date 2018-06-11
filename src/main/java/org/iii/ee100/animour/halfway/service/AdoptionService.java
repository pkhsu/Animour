package org.iii.ee100.animour.halfway.service;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.halfway.dao.AdoptionDao;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.model.Quiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class AdoptionService extends GenericService<Adoption> {

	@Autowired
	private AdoptionDao adoptionDao;

	public void insert(Adoption adoption) {
		adoptionDao.save(adoption);
	}

	public void update(Adoption adoption) {
		adoptionDao.save(adoption);
	}

	public void delete(Long id) {
		adoptionDao.delete(id);
	}

	public ArrayList<Adoption> getAll() {
		return Lists.newArrayList(adoptionDao.findAll());
	}

	public Adoption getOne(Long id) {
		return adoptionDao.findOne(id);
	}

	public List<Adoption> getCheckAdoption(Long ownerId) {
		List<Adoption> adoptions = new ArrayList<>();
		for (Adoption adoption : adoptionDao.findByOwnerIdOrderByRequestDateDesc(ownerId)) {
			if (adoption.getAcceptRequest() == null) {
				adoptions.add(adoption);
			}
		}
		return adoptions;
	}

	// pageSize=一頁幾筆資料
	public Page<Adoption> getAdoptionPage(PageInfo pageinfo) {
		PageRequest request = new PageRequest(pageinfo.getPageNumber() - 1, pageinfo.getSize(), Sort.Direction.DESC,
				"requestDate");
		return adoptionDao.findAll(request);
	}

	// 檢核認養數量是否已達上限
	public Map<String, Object> checkAdoptionLimit(Long id) {
		// List<Adoption> count = adoptionDao.findByMemberIdOrderByAcceptDateDesc(id);
		// List<Adoption> count = adoptionDao.findByMemberId(id);
		Map<String, Object> parameters = new HashMap<>();
		List<Adoption> count = adoptionDao.findTop2ByMemberIdOrderByAcceptDateDesc(id);

		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.YEAR, -1);
		Long lastyear = cal.getTimeInMillis();
		Timestamp ts = new Timestamp(lastyear);

		if (count.size() == 2 && count.get(1).getAcceptDate().after(ts)) {
			parameters.put("check", false);
			// 第二筆資料的日期
			parameters.put("limitPast", count.get(1).getAcceptDate());
			return parameters;
		} else {
			parameters.put("check", true);
			return parameters;
		}
	}

	// 讀取文字檔的測驗題目，new成物件後，存入collection裡面
	public List<Quiz> genQuiz(HttpServletRequest request) {
		String uploadRootPath = request.getServletContext().getRealPath("images/halfway/animal/quiz.txt");
		List<Quiz> quizs = new ArrayList<>();
		try (BufferedReader bufferReader = new BufferedReader(new FileReader(uploadRootPath));) {
			String data;
			Long id = 1L;
			while ((data = bufferReader.readLine()) != null) {
				Quiz quiz = new Quiz();
				quiz.setQuestion(data);
				quiz.setId(id);
				quizs.add(quiz);
				System.out.println(data);
				id++;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return quizs;
	}
}
