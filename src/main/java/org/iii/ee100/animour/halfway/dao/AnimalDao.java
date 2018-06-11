package org.iii.ee100.animour.halfway.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.entity.City;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface AnimalDao extends GenericDao<Animal>,JpaSpecificationExecutor<Animal> {
	List<Animal> findByOrderByUploadDesc();
	
	List<Animal> findTop6ByOrderByUploadDesc();
	
	List<Animal> findBySpecieOrderByUploadDesc(String specie);
	
	Page<Animal> findByCity(City city, Pageable pageable);
	
	Page<Animal> findByNameContaining(String name,Pageable pageable);
	
	List<Animal> findByMemberIdOrderByUploadDesc(Long memberId);
	
	Page<Animal> findByMemberIdOrderByUploadDesc(Long memberId, Pageable pageable);
	
	
	// 計算(筆數)
	Long countBySpecie(String specie);
	
	Long countBySize(String size);
	
	Long countByAge(String age);
	
	Long countByGender(String gender);
	
}
