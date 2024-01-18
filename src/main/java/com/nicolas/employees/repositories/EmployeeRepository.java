package com.nicolas.employees.repositories;



import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nicolas.employees.models.Employee;


@Repository
public interface EmployeeRepository extends CrudRepository<Employee, Long>{
	List<Employee> findAll(); 
}
