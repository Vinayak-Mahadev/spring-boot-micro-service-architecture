package com.example.microservices.department.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.microservices.department.entities.Department;

public interface DepartmentRepository extends JpaRepository<Department, Long> 
{

	Department findByDepartmentId(Long departmentId);

}
