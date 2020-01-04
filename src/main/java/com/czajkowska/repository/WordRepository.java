package com.czajkowska.repository;

import com.czajkowska.modal.Word;
import org.springframework.data.repository.CrudRepository;

public interface WordRepository extends CrudRepository<Word, Integer> {
	
	public Word findByUsername(String username);
}

