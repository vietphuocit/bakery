package com.fsoft.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fsoft.entity.Role;

@Repository("roleRepository")
public interface RoleRepository extends JpaRepository<Role, Long> {
	Optional<Role> findByName(String roleName);
}
