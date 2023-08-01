package com.roombooking.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.roombooking.app.GuestDetails;
import com.roombooking.app.GuestDetailsRepo;

@Controller

public class HomeController {
	
	@Autowired
	GuestDetailsRepo repo;
	
	
	@GetMapping("/")
	public String home() {
		return "reservationpage.jsp";

	}

	@RequestMapping("/addbooking")
	public String addBooking(GuestDetails guestdetails) {
		repo.save(guestdetails);
		return "reservationpage.jsp";

	}

}
