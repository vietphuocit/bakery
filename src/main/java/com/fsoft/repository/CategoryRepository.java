package com.fsoft.repository;

import java.util.List;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fsoft.entity.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
	List<Category> findAll(Sort sort);

	@Transactional
	@Modifying
	@Query("UPDATE Category c SET c.name = :name WHERE c.id = :id")
	void updateNameById(@Param("id") Long id, @Param("name") String name);
}
