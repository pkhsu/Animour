package org.iii.ee100.animour.halfway.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.halfway.dao.AnimalDao;
import org.iii.ee100.animour.halfway.dao.CityDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.entity.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Transactional
@Service
public class AnimalService extends GenericService<Animal> {

	@Autowired
	private AnimalDao animalDao;

	@Autowired
	private CityDao cityDao;

	public void insert(Animal animal) {
		animalDao.save(animal);
	}

	public void update(Animal animal) {
		animalDao.save(animal);
	}

	public void delete(Long id) {
		animalDao.delete(id);
	}

	public ArrayList<Animal> getAll() {
		return Lists.newArrayList(animalDao.findAll());
	}

	public Animal getOne(Long id) {
		return animalDao.findOne(id);
	}

	public List<Animal> getSix() {
		return animalDao.findTop6ByOrderByUploadDesc();
	}

	// pageSize=一頁幾筆資料
	public Page<Animal> getAnimalPage(PageInfo pageinfo) {
		PageRequest request = new PageRequest(pageinfo.getPageNumber() - 1, pageinfo.getSize(), Sort.Direction.DESC,
				"upload");
		return animalDao.findAll(request);
	}

	public Page<Animal> getAnimalConatainingPage(String name, Integer pageNumber, Integer pageSize) {
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, Sort.Direction.DESC, "upload");
		return animalDao.findByNameContaining(name, request);
	}

	public Page<Animal> getSpecPage(PageInfo pageinfo, Specification<Animal> spec) {
		PageRequest request = new PageRequest(pageinfo.getPageNumber() - 1, pageinfo.getSize(), Sort.Direction.DESC,
				"upload");
		return animalDao.findAll(spec, request);
	}

	public List<City> getAllCity() {
		return cityDao.findByOrderById();
	}

	public List<City> getQueryCity() {
		return cityDao.findByAnimalCountGreaterThanOrderByAnimalCountDesc(0L);
	}

	public City getCityById(Long id) {
		return cityDao.findOne(id);
	}

	public void updateAnimalCount() {
		List<City> citys = cityDao.findByOrderById();
		for (City city : citys) {
			city.setAnimalCount(new Long(city.getAnimals().size()));
		}
	}

	public String readImage(MultipartFile image, HttpServletRequest request, Animal an) {
		// 圖片
		String fileName = null;
		String uploadRootPath = request.getServletContext().getRealPath("images/halfway/animal/");
		System.out.println("uploadRootPath=" + uploadRootPath);

		// 如果檔案路徑不存在，創造一個
		File uploadRootDir = new File(uploadRootPath);
		if (!uploadRootDir.exists()) {
			uploadRootDir.mkdirs();
		}

		String contentType = image.getContentType();
		String fileType = contentType.substring(contentType.indexOf("/") + 1);

		if ((!image.isEmpty()) && ((fileType.equals("jpeg")) || (fileType.equals("png")))) {
			try {
				String originName = image.getOriginalFilename();
				fileName = "id_" + an.getId() + originName.substring(originName.lastIndexOf(".")).trim();
				// 把讀進來的檔案，轉成byte陣列
				byte[] bytes = image.getBytes();
				BufferedOutputStream buffout = new BufferedOutputStream(
						new FileOutputStream(new File(uploadRootPath + fileName)));
				// 利用Outputstream 把檔案內容(byte陣列)透過write方法寫出，至硬碟端檔案(檔案名稱為"/tmp"+fileName)
				buffout.write(bytes);
				buffout.close();

			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return fileName;
	}

	public List<String> setSpecie() {
		List<String> species = new ArrayList<>();
		species.add("狗");
		species.add("貓");
		species.add("兔");
		species.add("鼠");
		species.add("鳥");
		species.add("其他");
		return species;
	}

	public List<String> setSize() {
		List<String> size = new ArrayList<>();
		size.add("大型");
		size.add("中型");
		size.add("小型");
		return size;
	}

	public List<String> setAge() {
		List<String> age = new ArrayList<>();
		age.add("成年");
		age.add("幼年");
		age.add("老年");
		return age;
	}

	// for MemberPage
	public List<Animal> getHomepageAnimalList(Long memberId) {
		return animalDao.findByMemberIdOrderByUploadDesc(memberId);

	}

	public void setResponseParameters(String key, Object value) {
		Map<String, Object> parameters = new HashMap<>();
		parameters.put(key, value);
	}

	// for chart

	public Map<String, Integer> chart() {
		List<Animal> list = animalDao.findAll();
		Map<String, Integer> map = new HashMap<String, Integer>();
		for (Animal animal : list) {
			if (map.containsKey(animal.getSpecie())) {
				map.put(animal.getSpecie(), map.get(animal.getSpecie()) + 1);
			} else {
				map.put(animal.getSpecie(), 1);
			}
		}
		return map;
	}

	// 會員帳號查詢，放大鏡
	public Page<Animal> getAnimalPageByMemberAccount(Long memberId, PageInfo pageinfo) {
		PageRequest request = new PageRequest(pageinfo.getPageNumber() - 1, pageinfo.getSize(), Sort.Direction.DESC,
				"upload");
		return animalDao.findByMemberIdOrderByUploadDesc(memberId, request);
	}
}
