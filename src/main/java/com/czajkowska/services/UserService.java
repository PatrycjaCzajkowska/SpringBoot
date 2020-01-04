package com.czajkowska.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.czajkowska.modal.User;
import com.czajkowska.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	private final UserRepository userRepository; //tworzenie instancji UserRepository
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	} //konstruktor
	
	public void saveMyUser(User user ) {
		userRepository.save(user);
	}
	
	public List<User> showAllUsers(){
		List<User> users = new ArrayList<User>();
		for(User user : userRepository.findAll()) {
			users.add(user);
		}
		
		return users;
	}
	
	public void deleteMyUser(int id) {
		userRepository.delete(id);
	}
	
	public User editUser(int id) {
		return userRepository.findOne(id);
	}
	
	public User findByUsernameAndPassword(String username, String password) {
		return userRepository.findByUsernameAndPassword(username, password);
	}
	}

	