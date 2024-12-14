package com.bean;

public class Booking {
	private int uid; //User ID
	private int bid; // Booking ID
	private String recName;
	private String recAddress;
	private String recPin;
	private String recMobile;
	private double parWeight;
	private String contentDescription;
	private String deliveryType;
	private String packingPref;
	private String pickupDate;
	private String pickupTime;
	private String dropoffDate;
	private String dropoffTime;
	private double serviceCost;
	private String bookingDate;
	private String parStatus;
	public Booking(int uid, String recName, String recAddress, String recPin, String recMobile, 
			double parWeight, String contentDescription, String deliveryType, String packingPref, 
			String pickupTime, String dropoffTime, double serviceCost, String bookingDate, String parStatus) {
		super();
		this.uid = uid;
		this.recName = recName;
		this.recAddress = recAddress;
		this.recPin = recPin;
		this.recMobile = recMobile;
		this.parWeight = parWeight;
		this.contentDescription = contentDescription;
		this.deliveryType = deliveryType;
		this.packingPref = packingPref;
		this.pickupTime = pickupTime;
		this.dropoffTime = dropoffTime;
		this.serviceCost = serviceCost;
		this.bookingDate = bookingDate;
		this.parStatus = parStatus;
	}
	public int getUserId() {
		return uid;
	}
	public void setUserId(int userId) {
		this.uid = userId;
	}
	public int getBookingId() {
		return bid;
	}
	public void setBookingId(int bookingId) {
		this.bid = bookingId;
	}
	public String getRecName() {
		return recName;
	}
	public void setRecName(String recName) {
		this.recName = recName;
	}
	public String getRecAddress() {
		return recAddress;
	}
	public void setRecAddress(String recAddress) {
		this.recAddress = recAddress;
	}
	public String getRecPin() {
		return recPin;
	}
	public void setRecPin(String recPin) {
		this.recPin = recPin;
	}
	public String getRecMobile() {
		return recMobile;
	}
	public void setRecMobile(String recMobile) {
		this.recMobile = recMobile;
	}
	public double getParWeight() {
		return parWeight;
	}
	public void setParWeight(double parWeight) {
		this.parWeight = parWeight;
	}
	public String getContentDescription() {
		return contentDescription;
	}
	public void setContentDescription(String contentDescription) {
		this.contentDescription = contentDescription;
	}
	public String getDeliveryType() {
		return deliveryType;
	}
	public void setDeliveryType(String deliveryType) {
		this.deliveryType = deliveryType;
	}
	public String getPackingPref() {
		return packingPref;
	}
	public void setPackingPref(String packingPref) {
		this.packingPref = packingPref;
	}
	public String getPickupTime() {
		return pickupTime;
	}
	public void setPickupTime(String pickupTime) {
		this.pickupTime = pickupTime;
	}
	public String getDropoffTime() {
		return dropoffTime;
	}
	public void setDropoffTime(String dropoffTime) {
		this.dropoffTime = dropoffTime;
	}
	public double getServiceCost() {
		return serviceCost;
	}
	public void setServiceCost(double serviceCost) {
		this.serviceCost = serviceCost;
	}
	public String getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(String paymentTime) {
		this.bookingDate = paymentTime;
	}
	public String getParStatus() {
		return parStatus;
	}
	public void setParStatus(String parStatus) {
		this.parStatus = parStatus;
	}
	public String getPickupDate() {
		return pickupDate;
	}
	public void setPickupDate(String pickupDate) {
		this.pickupDate = pickupDate;
	}
	public String getDropoffDate() {
		return dropoffDate;
	}
	public void setDropoffDate(String dropoffDate) {
		this.dropoffDate = dropoffDate;
	}
	
}