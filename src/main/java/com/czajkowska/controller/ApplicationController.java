package com.czajkowska.controller;

import javax.servlet.http.HttpServletRequest;

import com.czajkowska.modal.Word;
import com.czajkowska.services.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.czajkowska.modal.User;
import com.czajkowska.services.UserService;

@Controller
public class ApplicationController {

	@Autowired
	UserService userService;

	@Autowired
	WordService wordService;

	/*
	"MODE_HOME"); //strona z powitaniem
	"MODE_REGISTER"); //New Registration: Username, FName, LName, age, Password + Register button

	 */

	@RequestMapping("/welcome") //Controller will be handle the request and call method
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME"); //strona z powitaniem
		return "welcomepage";
	}

	@RequestMapping("/register")//wzor
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER"); //New Registration: Username, FName, LName, age, Password + Register button
		return "welcomepage";
	}
	@RequestMapping("/new-word")// tabela1   dodane///////////////////////////
	public String registration1(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER1"); //strona z filmikami + 2 pola
		return "homepage";
	}

	@PostMapping("/save-user") //wzor
	public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");  //ERROR ; strona z powitaniem
		return "welcomepage";
	}

	@PostMapping("/save-word") //tabela1   dodane///////////////////////////
	public String registerUser1(@ModelAttribute Word word, BindingResult bindingResult, HttpServletRequest request) {
		wordService.saveMyWord(word);
		request.setAttribute("mode", "MODE_HOME"); //ERROR ; strona z powitaniem?
		return "homepage";
	}

	@GetMapping("/show-users") //wzor
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");//ID, Username, FName, LName, age, delete, edit
		return "welcomepage";
	}

	@GetMapping("/list") // dodane///////////////////////////
	public String showAllWords(HttpServletRequest request) {
		request.setAttribute("words", wordService.showAllWords());
		request.setAttribute("mode", "ALL_USERS1"); //BRAK srodka - SPRAWDZIC - BRAK
		return "homepage";
	}

	@RequestMapping("/delete-user") //wzor
	public String deleteUser(@RequestParam int id, HttpServletRequest request) {
		userService.deleteMyUser(id);
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS"); //ERROR
		return "welcomepage";
	}

	@RequestMapping("/delete-user1") //dodane///////////////////
	public String deleteUser1(@RequestParam int id, HttpServletRequest request) {
		wordService.deleteMyWord(id);
		request.setAttribute("words", wordService.showAllWords());
		request.setAttribute("mode", "ALL_USERS1"); //ERROR
		return "homepage";
	}
	
	@RequestMapping("/edit-user") //wzor
	public String editUser(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("user", userService.editUser(id));
		request.setAttribute("mode", "MODE_UPDATE"); //ERROR
		return "welcomepage";
	}

	@RequestMapping("/edit-user1") //dodane///////////////////
	public String editUser1(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("word", wordService.editWord(id));
		request.setAttribute("mode", "MODE_UPDATE1"); //ERROR
		return "homepage";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN"); //UName, password
		return "welcomepage";
	}
	
	@RequestMapping ("/login-user")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
			return "homepage"; //strona z filmami
		}
		else {
			request.setAttribute("error", "Invalid Username or Password"); //invalid
			request.setAttribute("mode", "MODE_LOGIN"); //UName, password
			return "welcomepage";
			
		}
	}
}
