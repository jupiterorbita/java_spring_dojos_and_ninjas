package com.john.dojos_and_ninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.john.dojos_and_ninjas.models.Ninja;
import com.john.dojos_and_ninjas.repositories.NinjaRepo;

@Service
public class NinjaService {
	
	@Autowired
	private NinjaRepo ninjaRepo;

//	READ ALL
	public List<Ninja> allNinjas(){
		return ninjaRepo.findAll();
	}
//	CREATE
	public Ninja createNinja(Ninja d) {
		return ninjaRepo.save(d);
	}
//	UPDATE
	public Ninja updateNinja(Ninja d) {
		return ninjaRepo.save(d);
	}
//	READ ONE
	public Ninja findNinja(Long id) {
		Optional<Ninja> optionalninja = ninjaRepo.findById(id);
		if (optionalninja.isPresent()) {
			return optionalninja.get();
		}
		return null;
	}
//	DELETE
	public void deleteNinja(Long id) {
		ninjaRepo.deleteById(id);
	}
}