package com.john.dojos_and_ninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.john.dojos_and_ninjas.models.Dojo;
import com.john.dojos_and_ninjas.repositories.DojoRepo;

@Service
public class DojoService {
	
	@Autowired
	private DojoRepo dojoRepo;

//	READ ALL
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
//	CREATE
	public Dojo createDojo(Dojo d) {
		return dojoRepo.save(d);
	}
//	UPDATE
	public Dojo updateDojo(Dojo d) {
		return dojoRepo.save(d);
	}
//	READ ONE
	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if (optionalDojo.isPresent()) {
			return optionalDojo.get();
		}
		return null;
	}
//	DELETE
	public void deleteDojo(Long id) {
		dojoRepo.deleteById(id);
	}
}
