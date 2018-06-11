package org.iii.ee100.animour.halfway.web;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.model.ResponseForAnimour;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.model.QueryFormHalfway;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.halfway.service.GoogleVisionUtils;
import org.iii.ee100.animour.halfway.service.SpecificationHalfway;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class AnimalRestController {

	@Autowired
	AnimalService animalservice;

	@Autowired
	MemberService memberService;

	@Autowired
	ResponseForAnimour response;

	private PageInfo defaultPageInfo = new PageInfo(1, 8);

	// 查詢全部，改用 Page 物件接值
	@RequestMapping(value = { "/halfway/animal" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public ResponseEntity<?> listAnimal(PageInfo pageinfo) throws Exception {
		if (pageinfo.getPageNumber() == null) {
			pageinfo.setPageNumber(defaultPageInfo.getPageNumber());
		}
		if (pageinfo.getSize() == null) {
			pageinfo.setSize(defaultPageInfo.getSize());
		}
		Page<Animal> page = animalservice.getAnimalPage(pageinfo); // pageNumber=頁數 pageSize=一頁幾筆資料
		List<Animal> animals = page.getContent();
		response.setData(animals);

		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 新增&修改
	@RequestMapping(value = { "/halfway/animal" }, method = RequestMethod.POST)
	public ResponseEntity<?> insertAnimal(Animal animal,
			@RequestParam(value = "file", required = false) MultipartFile avatar, HttpServletRequest request) {
		Member current = memberService.getNewCurrentMember();
		animal.setMember(current);
		// 普通表單
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		animal.setUpload(ts);
		// 先insert，才能取得自動生成的id，做為儲存圖片的檔名
		if (animal.getId() == null) {
			animalservice.insert(animal);
		}
		if (avatar != null && !avatar.isEmpty()) {
			String fileName = animalservice.readImage(avatar, request, animal);
			animal.setFileName(fileName);
		}
		// 儲存圖片之後，更新
		animalservice.update(animal);

		return new ResponseEntity<Animal>(animal, HttpStatus.OK);
	}

	// 刪除
	@RequestMapping(value = { "/halfway/animal/{id}" }, method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteAnimal(@PathVariable Long id) {
		Animal an = animalservice.getOne(id);
		if (an != null) {
			animalservice.delete(id);
		}
		return new ResponseEntity<Animal>(HttpStatus.OK);
	}

	// 查詢一筆
	@RequestMapping(value = { "/halfway/animal/{id}" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public Animal oneAdoption(@PathVariable Long id) {
		Animal an = animalservice.getOne(id);
		return an;
	}

	// 複合查詢
	@RequestMapping(value = "/queryTest", method = { RequestMethod.POST })
	public List<Animal> specificationQuery(@RequestBody QueryFormHalfway queryform, PageInfo pageinfo, Model model) {
		List<Map<String, Object>> lastspec = new ArrayList<>();

		// 接收種類的 checkbox
		Map<String, Object> speciemap = new IdentityHashMap<>();
		if (queryform.getSpecieitems() != null && queryform.getSpecieitems().size() != 0) {
			for (String sp : queryform.getSpecieitems()) {
				speciemap.put(new String("specie"), sp);
			}
		}
		lastspec.add(speciemap);

		// 接收縣市的 checkbox
		Map<String, Object> citymap = new IdentityHashMap<>();
		if (queryform.getCityitems() != null && queryform.getCityitems().size() != 0) {
			for (Long ct : queryform.getCityitems()) {
				citymap.put(new String("city"), animalservice.getCityById(ct));
			}
		}
		lastspec.add(citymap);

		// 接收性別的 checkbox
		Map<String, Object> gendermap = new IdentityHashMap<>();
		if (queryform.getGenderitems() != null && queryform.getGenderitems().size() != 0) {
			for (String sp : queryform.getGenderitems()) {
				gendermap.put(new String("gender"), sp);
			}
		}
		lastspec.add(gendermap);

		// 接收體型的 checkbox
		Map<String, Object> sizemap = new IdentityHashMap<>();
		if (queryform.getSizeitems() != null && queryform.getSizeitems().size() != 0) {
			for (String sp : queryform.getSizeitems()) {
				sizemap.put(new String("size"), sp);
			}
		}
		lastspec.add(sizemap);

		// 接收年齡的 checkbox
		Map<String, Object> agemap = new IdentityHashMap<>();
		if (queryform.getAgeitems() != null && queryform.getAgeitems().size() != 0) {
			for (String sp : queryform.getAgeitems()) {
				agemap.put(new String("age"), sp);
			}
		}
		lastspec.add(agemap);

		Specification<Animal> spec = null;
		int count = 1;

		for (Map<String, Object> m : lastspec) {
			if (m.size() != 0) {
				spec = Specifications.where(SpecificationHalfway.containsEqualsOr(m));
				break;
			}
			count++;
		}

		for (int i = count; i < lastspec.size(); i++) {
			if (lastspec.get(i).size() != 0) {
				spec = Specifications.where(spec).and(SpecificationHalfway.containsEqualsOr(lastspec.get(i)));
			}
		}

		// 設定 pageinfo
		if (pageinfo.getPageNumber() == null) {
			pageinfo.setPageNumber(defaultPageInfo.getPageNumber());
		}
		if (pageinfo.getSize() == null) {
			pageinfo.setSize(defaultPageInfo.getSize());
		}
		Page<Animal> page = animalservice.getSpecPage(pageinfo, spec);
		List<Animal> animals = page.getContent();

		return animals;
	}

	@RequestMapping(path = { "/halfway/animal/chart" }, method = RequestMethod.GET, produces = { "application/json" })
	public Map<String, Integer> chart() {
		return animalservice.chart();
	}

	// 呼叫 vision API
	@RequestMapping(value = { "/vision" }, method = RequestMethod.GET)
	public ResponseEntity<?> visionTest(@RequestParam(value = "imageUrl") String imageUrl) {
		String response = null;
		try {
			response = GoogleVisionUtils.visionApiRequest(imageUrl);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 依照會員帳號查詢
	@RequestMapping(value = { "/halfway/bymember" }, method = RequestMethod.GET)
	public ResponseEntity<?> findByMemberAccount(@RequestParam(value="account") String account , PageInfo pageinfo) {
		if (pageinfo.getPageNumber() == null) {
			pageinfo.setPageNumber(defaultPageInfo.getPageNumber());
		}
		if (pageinfo.getSize() == null) {
			pageinfo.setSize(defaultPageInfo.getSize());
		}
		Page<Animal> page = animalservice.getAnimalPageByMemberAccount(memberService.getOneByAccount(account).getId(), pageinfo); // pageNumber=頁數 pageSize=一頁幾筆資料
		List<Animal> animals = page.getContent();
		response.setData(animals);

		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
}
