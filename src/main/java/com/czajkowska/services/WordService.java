package com.czajkowska.services;

import com.czajkowska.modal.User;
import com.czajkowska.modal.Word;
import com.czajkowska.repository.UserRepository;
import com.czajkowska.repository.WordRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class WordService {

	private final WordRepository wordRepository; //tworzenie instancji WordRepository

	public WordService(WordRepository wordRepository) {
		this.wordRepository=wordRepository;
	} //konstruktor
	
	public void saveMyWord(Word word ) {
		wordRepository.save(word);
	}
	
	public List<Word> showAllWords(){
		List<Word> words = new ArrayList<Word>();
		for(Word word : wordRepository.findAll()) {
			words.add(word);
		}
		
		return words;
	}
	
	public void deleteMyWord(int id) {
		wordRepository.delete(id);
	}
	
	public Word editWord(int id) {
		return wordRepository.findOne(id);
	}
	
	public Word findByUsername(String username) {  //zmienic na word
		return wordRepository.findByUsername(username);
	}
	}

	