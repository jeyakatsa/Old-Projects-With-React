package com.cryptodea.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cryptodea.models.Idea;
import com.cryptodea.repositories.IdeaRepository;

@Service
public class IdeaService {
	@Autowired 
	private IdeaRepository ideaRepository ;

	public IdeaService(IdeaRepository ideaRepository) {
		this.ideaRepository = ideaRepository;
	}
	
	public List<Idea> getIdeas(){
		return ideaRepository.findAll();
	}
	
	public Idea findById(Long id) {
		return this.ideaRepository.findById(id).orElse(null);
	}
	
	public Idea saveIdea(Idea idea) {
		return ideaRepository.save(idea);
	}
	
	public void deleteIdea(Long id) {
		ideaRepository.deleteById(id);
	}
}
