package com.fsoft.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.fsoft.entity.GeneratedIdProduct;

public interface GeneratedIdProductRepository extends JpaRepository<GeneratedIdProduct, Long> {

	@Transactional
	@Modifying
	@Query("UPDATE GeneratedIdProduct c SET c.count = c.count + 1")
	void updateCount();
}
