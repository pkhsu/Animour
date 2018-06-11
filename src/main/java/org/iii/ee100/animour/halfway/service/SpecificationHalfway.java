package org.iii.ee100.animour.halfway.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

@Service
public class SpecificationHalfway {
	
	// 沒用到
	public static Specification<Animal> containsLikeOr(Map<String, Object> attributemap) {

		return new Specification<Animal>() {
			
			@Override
			public Predicate toPredicate(Root<Animal> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predicates = new ArrayList<>();
				for (Map.Entry<String, Object> entry : attributemap.entrySet()) {
					String attribute = entry.getKey();
					Object value = entry.getValue();
					predicates.add(cb.like(root.get(attribute), "%" + value + "%"));
					
				}
				return cb.or(predicates.toArray(new Predicate[predicates.size()]));
			}
		};
	}
	
	public static Specification<Animal> containsEqualsOr(Map<String, Object> attributemap) {

		return new Specification<Animal>() {
			
			@Override
			public Predicate toPredicate(Root<Animal> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predicates = new ArrayList<>();
				for (Map.Entry<String, Object> entry : attributemap.entrySet()) {
					String attribute = entry.getKey();
					Object value = entry.getValue();
					predicates.add(cb.equal(root.get(attribute), value));
				}
				return cb.or(predicates.toArray(new Predicate[predicates.size()]));
			}
		};
	}
}
