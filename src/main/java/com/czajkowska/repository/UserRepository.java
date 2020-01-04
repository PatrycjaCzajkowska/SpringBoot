package com.czajkowska.repository;

import org.springframework.data.repository.CrudRepository;

import com.czajkowska.modal.User;

public interface UserRepository extends CrudRepository<User, Integer> {	
	
	public User findByUsernameAndPassword(String username, String password);
}
