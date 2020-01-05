package com.czajkowska.modal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="word")
public class Word {

	@Id
	private int id;
	private String polish;
	private String english;

	public Word() {
	}

		public Word(String username, String firstname) {
		super();
		this.polish = username;
		this.english = firstname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return polish;
	}
	public void setUsername(String username) {
		this.polish = username;
	}
	public String getFirstname() {
		return english;
	}
	public void setFirstname(String firstname) {
		this.english = firstname;
	}

	@Override
	public String toString() {
		return "Word [id=" + id + ", username=" + polish + ", firstname=" + english + "]";
	}
}
