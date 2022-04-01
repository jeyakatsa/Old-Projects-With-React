package com.bitruism.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitruism.models.Charity;
import com.bitruism.repositories.CharityRepository;

@Service
public class CharityService {
	@Autowired
	private CharityRepository cRepo;
	
	public Charity create(Charity charity) {
		return this.cRepo.save(charity);
		}
}
