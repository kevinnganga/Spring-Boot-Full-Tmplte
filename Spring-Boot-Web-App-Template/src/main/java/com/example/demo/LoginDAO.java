package com.example.demo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface LoginDAO extends CrudRepository<Login, Integer> {

	//CUSTOM METHOD
	List<Login> findByuserName(String userName);
	
	
}
