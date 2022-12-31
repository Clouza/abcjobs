package com.abcjobs.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.abcjobs.repository.EducationsRepository;
import com.abcjobs.model.Educations;

@Service
@Transactional
public class EducationsService {
	@Autowired
	EducationsRepository repo;
	
	public Educations addEducations(Educations ed) {
		return repo.save(ed);
	}

	public List<Educations> getEducationsByUserDetailsId(String udID) {
		return repo.getEducationsByUserDetailsId(udID);
	}
	
	public boolean deleteEducation(Long id) {
		try {
			repo.deleteById(id);
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	
	public Educations updateEducations(Long id, Educations ed) {
		Educations educations = repo.findById(id).get();
		
		// update
		educations.setIntitutionName(ed.getIntitutionName());
		educations.setEducationName(ed.getEducationName());
		educations.setStartDate(ed.getStartDate());
		educations.setEndDate(ed.getEndDate());
		
		// save
		return repo.save(educations);
	}
}
