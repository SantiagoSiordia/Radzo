package com.Radzov2.model;

public class PersonModel {
	
	private int idPerson;
	private String name;
	private String lastname;
	private String phone;
	private String user_type;
	
	public int getIdPerson() {
		return this.idPerson;
	}
	
	public String getName() {
		return this.name;
	}
	
	public String getLastName() {
		return this.lastname;
	}
	
	public String getPhone() {
		return this.phone;
	}
	
	public String getUserType() {
		return this.user_type;
	}
	
	public void setIdPerson(int idPerson) {
		this.idPerson = idPerson;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setLastName(String lastname) {
		this.lastname = lastname;
	} 
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public void setUserType(String user_type) {
		this.user_type = user_type;
	}
}
