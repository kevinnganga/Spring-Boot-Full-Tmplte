package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class LoginService {
	
	@Autowired
	LoginDAO loginRepo;
	
//----------------------------------------------------------------------------------------------
//  FETCHING A SINGLE RECORD BY ID(PRIMARY KEY)                                      
//----------------------------------------------------------------------------------------------
	public Login getOneRecord(int id) {
		
		return loginRepo.findById(id).orElse(new Login());
		
	}
	
	
//----------------------------------------------------------------------------------------------
//  INSERTING RECORDS FROM THE FORM                                      
//----------------------------------------------------------------------------------------------
	
	public Login SaveRecords(Login thelogin) {
		return loginRepo.save(thelogin);
	}
	

//----------------------------------------------------------------------------------------------
//  CUSTOM METHOD TO SEARCH BY USERNAME                                      
//----------------------------------------------------------------------------------------------
	public List<Login> FindByName(String userName) {
		return loginRepo.findByuserName(userName);
						     //userName is the property i the LoginClass should be exact
	}


//----------------------------------------------------------------------------------------------
//  DELETING A RECORD BY ID                                      
//----------------------------------------------------------------------------------------------	
	
	public void Deleting(int id) {
		
		loginRepo.deleteById(id);
		
		
	}
	
//----------------------------------------------------------------------------------------------
//  UPDATING A RECORD BY ID                                      
//----------------------------------------------------------------------------------------------	

	
	public Login Updating(int id,Login login) {
		Login save = loginRepo.save(login);
		System.out.println("updating..........");
		return save;
		//IF YOU RETURN NULL TO ANY METHOD NOTHING WILL PRINT IN THE JSP 
		//EVEN IF YOU ADD THE DATA TO THE MODEL
	}
	
	
	public Iterable<Login> All(){
		Iterable<Login> findAll = loginRepo.findAll();
		return findAll;
	}
}
