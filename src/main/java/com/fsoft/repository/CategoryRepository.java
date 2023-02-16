package com.fsoft.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.fsoft.entity.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
	List<Category> findAllByOrderByIdAsc();

	Category findByName(String name);

	List<Category> findById(Long id);
}
