package com.czajkowska.controller;

import com.czajkowska.modal.Word;
import com.czajkowska.services.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.czajkowska.modal.User;
import com.czajkowska.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private UserService userService;

	@Autowired
	private WordService wordService;

	@GetMapping("/")
	public String hello() {
		return "This is the web application to learning English. Go to page: localhost:8080/welcome" +
				" and start to learn!";
	}
	
	@GetMapping("/save-user")
	public String saveUser(@RequestParam String username, @RequestParam String firstname, @RequestParam String lastname, @RequestParam int age, @RequestParam String password) {
		User user = new User(username, firstname, lastname, age, password);
		userService.saveMyUser(user);
		return "User Saved";
	}

	@GetMapping("/save-word")
	public String saveWord(@RequestParam String username, @RequestParam String firstname) {
		Word word = new Word(username, firstname);
		wordService.saveMyWord(word);
		return "Word Saved";
	}

}
