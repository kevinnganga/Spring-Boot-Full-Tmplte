package com.example.demo;

import java.util.List;

import javax.servlet.jsp.JspWriter;

import org.apache.coyote.http11.OutputFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class LoginController  {

	@Autowired
	LoginService logService;
	
	
//----------------------------------------------------------------------------------------------
//  INSERTING RECORDS FROM THE FORM                                      
//----------------------------------------------------------------------------------------------
	@RequestMapping("/login")
	public String ShowLoginPage(@ModelAttribute("posting") Login log) {

		return "Login";
	}
	
	
	@RequestMapping("/authenticate")
	public String Authenticate(@ModelAttribute("posting") Login thelogin) {
		//SAVING FORM FIELDS TO DB
		logService.SaveRecords(thelogin);
		return "AddingNewRecordsConfirmation";
	}
	
	
//----------------------------------------------------------------------------------------------
//  FETCHING A SINGLE RECORD BY ID(PRIMARY KEY)                                      
//----------------------------------------------------------------------------------------------
	
	@RequestMapping("/one")
	public String Show(@ModelAttribute("loginClass") Login thelogin) {
		
		return "Login3";
	}
	

	@RequestMapping("/geting")
	public String getUser(@RequestParam int id,Model model ) {
		
		Login login = logService.getOneRecord(id);
		System.out.println(logService.getOneRecord(id).toString());
		model.addAttribute("login",login);
		return "model";
	}
	
	
//----------------------------------------------------------------------------------------------
//  CUSTOM METHOD TO SEARCH BY USERNAME                                      
//----------------------------------------------------------------------------------------------
	
	
	
	@RequestMapping("/custom")
	public String Custom(@ModelAttribute("custom") Login login) {
		
		return "customForm";
	}
	
	@RequestMapping("/customprocessing")
	public String SearchByName(@RequestParam String userName,Model model) {
		List<Login> findByName = logService.FindByName(userName);
		System.out.println(logService.FindByName(userName).toString());
		
		model.addAttribute("kev" , findByName);
		
		
		return "custom";
	}
	
	
//----------------------------------------------------------------------------------------------
//  DELETING A RECORD BY ID                                      
//----------------------------------------------------------------------------------------------	
	
	@RequestMapping("/delete")
	public String ShowDeleteForm(@ModelAttribute("deletes") Login login) {
		
		return "delete";
	}
	
	
	
	@RequestMapping("/deleteProcessing")
	public String Delete(@RequestParam int id) {
		  logService.Deleting(id);
		 
		return "HomePage";
		
	}
	
//----------------------------------------------------------------------------------------------
//  UPDATING A RECORD BY ID                                      
//----------------------------------------------------------------------------------------------	
	@RequestMapping("/update")
	
	public String ShowUpdateForm(@ModelAttribute("update") Login login) {
		
		return "updateForm";
	}
	@RequestMapping("/updateProcessing")
	public String Update(@RequestParam int id ,Login login ,Model model) {
		Login updating = logService.Updating(id, login);
		 System.out.println(updating);
		 model.addAttribute("updates", updating);
		System.out.println(model.addAttribute("updates", updating));
		return "updateConfirmation";
	}
	
//----------------------------------------------------------------------------------------------
//  GETTING EVERYTHING from the database                                     
//----------------------------------------------------------------------------------------------	
	
	
	
	@RequestMapping("/everything")
	public String Everything(Login log,Model model) {
		Iterable<Login> all = logService.All();
		 model.addAttribute("yes",all);
	
		return "everything";
	}
	
	
//----------------------------------------------------------------------------------------------
//  GETTING EVERYTHING from the database with the UPDATE LINK                                      
//----------------------------------------------------------------------------------------------	
	
	@RequestMapping("/everythingV2")
	public String EverythingV2(Login log,Model model) {
		Iterable<Login> all = logService.All();
		 model.addAttribute("yesV2",all);
	
		return "everythingV2";
	}
	
	//SETTING THE URL TO MATCH THE ONE SPECIFIED IN THE everythinV2 I.E <c:url var="updateLink" value="/link">
	//SO THAT WHEN THE UPDATE LINK IS CLICKED IT WILL ROUTE TO THE BELOW URL /link
	//NB customerid in the request param below is the same name given in the everythinV2.jsp I.E <c:param name="customerId"
	@RequestMapping("/link")
	public String UpdateLinks(@RequestParam("customerId") int id ,Login login ,Model model) {
		Login oneRecord = logService.getOneRecord(id);
		 model.addAttribute("linksupdates", oneRecord);
		System.out.println(model.addAttribute("linksupdates", oneRecord));
		return "updateLogin";
	}
	
	@RequestMapping("/updateprocessing")
	public String LinksUpdating(@RequestParam int id,Login login,Model model) {
		Login updating = logService.Updating(id, login);
		System.out.println("......."+updating);
		model.addAttribute("okk",updating);
		return "redirect:/everythingV2";//USE REDIRECT TO REDIRECT THE USER TO THE REFRESHED PAGE
										//IF U OMIT REDIRECT IT WILL NOT REFRESH THE PAGE TO 
										//CUPTURE THE NEW RECORDS IN THE DB
	}
	
	
	
	@RequestMapping("/Linkdelete")
	public String deleteLink(@RequestParam("customerId") int id) {
		
		logService.Deleting(id);
		return "redirect:/everythingV2";
	}
	
//----------------------------------------------------------------------------------------------
//  ADDING A LOGIN FROM THE FORM WHICH LISTS ALL THE DATABASE CONTENTS WITH THE UPDATE & DELETE LINKS                                      
//----------------------------------------------------------------------------------------------	
	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(@ModelAttribute("units") Login login) {
		
		return "unitsForm";
	}
	
	@RequestMapping("/saveLogin")
	public String Addlogin(@ModelAttribute("units") Login login) {
		
		logService.SaveRecords(login);
		return "redirect:/everythingV2";
	}
	
	
	 
	
}
