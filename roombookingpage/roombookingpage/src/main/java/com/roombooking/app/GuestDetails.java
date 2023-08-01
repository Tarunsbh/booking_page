package com.roombooking.app;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;




@Entity
@Table(name="guestdetails")

public class GuestDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int reservation_id;
	@Column
	private String CheckInDate;
	@Column
	private String checkOutDate;
	@Column
	private String Adults;
	@Column
	private String Child;
	@Column
	private String RoomCategory;
	@Column
	private String RatePlan;
	@Column
	private String firstName;
	@Column
	private String lastName;
	@Column
	private String emailId;
	@Column
	private String phoneNumber;
	@Column
	private String city;
	@Column
	private String state; // Changed variable name to follow Java naming conventions
	@Column
	private String country;
	@Column
	private String expectedArrivalTime; // Changed variable name to follow Java naming conventions
	
	
	public GuestDetails() {
		
	}


	public GuestDetails(int reservation_id, String checkInDate, String checkOutDate, String adults, String child,
			String roomCategory, String ratePlan, String firstName, String lastName, String emailId, String phoneNumber,
			String city, String state, String country, String expectedArrivalTime) {
		super();
		this.reservation_id = reservation_id;
		CheckInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		Adults = adults;
		Child = child;
		RoomCategory = roomCategory;
		RatePlan = ratePlan;
		this.firstName = firstName;
		this.lastName = lastName;
		this.emailId = emailId;
		this.phoneNumber = phoneNumber;
		this.city = city;
		this.state = state;
		this.country = country;
		this.expectedArrivalTime = expectedArrivalTime;
	}


	public int getReservation_id() {
		return reservation_id;
	}


	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}


	public String getCheckInDate() {
		return CheckInDate;
	}


	public void setCheckInDate(String checkInDate) {
		CheckInDate = checkInDate;
	}


	public String getCheckOutDate() {
		return checkOutDate;
	}


	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}


	public String getAdults() {
		return Adults;
	}


	public void setAdults(String adults) {
		Adults = adults;
	}


	public String getChild() {
		return Child;
	}


	public void setChild(String child) {
		Child = child;
	}


	public String getRoomCategory() {
		return RoomCategory;
	}


	public void setRoomCategory(String roomCategory) {
		RoomCategory = roomCategory;
	}


	public String getRatePlan() {
		return RatePlan;
	}


	public void setRatePlan(String ratePlan) {
		RatePlan = ratePlan;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmailId() {
		return emailId;
	}


	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getExpectedArrivalTime() {
		return expectedArrivalTime;
	}


	public void setExpectedArrivalTime(String expectedArrivalTime) {
		this.expectedArrivalTime = expectedArrivalTime;
	}
	
	

	
}