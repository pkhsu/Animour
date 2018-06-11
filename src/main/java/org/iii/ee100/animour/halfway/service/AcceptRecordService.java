package org.iii.ee100.animour.halfway.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.halfway.dao.AcceptRecordDao;
import org.iii.ee100.animour.halfway.entity.AcceptRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class AcceptRecordService extends GenericService<AcceptRecord> {

	@Autowired
	private AcceptRecordDao acceptRecordDao;

	public void insert(AcceptRecord acceptRecord) {
		acceptRecordDao.save(acceptRecord);
	}

	public void update(AcceptRecord acceptRecord) {
		acceptRecordDao.save(acceptRecord);
	}

	public void delete(Long id) {
		acceptRecordDao.delete(id);
	}

	public ArrayList<AcceptRecord> getAll() {
		return Lists.newArrayList(acceptRecordDao.findAll());
	}

	public AcceptRecord getOne(Long id) {
		return acceptRecordDao.findOne(id);
	}

	// pageSize=一頁幾筆資料
	public Page<AcceptRecord> getAccpetRecordPage(PageInfo pageinfo) {
		PageRequest request = new PageRequest(pageinfo.getPageNumber() - 1, pageinfo.getSize(), Sort.Direction.DESC,
				"startDate");
		return acceptRecordDao.findAll(request);
	}

	public Timestamp calEndDate(Timestamp t) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(t);
		cal.add(Calendar.MONTH, 1);
		Long lastyear = cal.getTimeInMillis();
		Timestamp ts = new Timestamp(lastyear);
		return ts;
	}

	// 取出送養紀錄
	public List<AcceptRecord> getCheckGive(Long ownerId) {
		List<AcceptRecord> adoptions = acceptRecordDao.findByOwnerIdOrderByEndDate(ownerId);
		return adoptions;
	}

	// 取出認養紀錄
	public List<AcceptRecord> getCheckGet(Long memberId) {
		List<AcceptRecord> adoptions = acceptRecordDao.findByMemberIdOrderByEndDate(memberId);
		return adoptions;
	}

	public void checkProcessEnd(AcceptRecord ar) {
		if (ar.getDoneMember() != null && ar.getDoneOwner() != null) {
			if (ar.getDoneMember() && ar.getDoneOwner()) {
				ar.setStatus("認養成功");
			}
		}
	}

}
