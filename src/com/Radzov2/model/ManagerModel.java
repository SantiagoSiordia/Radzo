package com.Radzov2.model;

public class ManagerModel {
	
	private int idManager;
	private String password;
	private int Person_idPerson;
	private int Consumables_idConsumables;
	
	public int getIdManager() {
		return this.idManager;
	}
	
	public String getPassword() {
		return this.password;
	} 
	
	public int getPersonIdPerson() {
		return this.Person_idPerson;
	}
	
	public int getConsumablesIdConsumables() {
		return this.Consumables_idConsumables;
	}
	
	public void setIdManager(int idManager) {
		this.idManager = idManager;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setPersonIdPerson(int Person_idPerson) {
		this.Person_idPerson = Person_idPerson;
	}
	
	public void setConsumablesIdConsumables(int Consumables_idConsumables) {
		this.Consumables_idConsumables = Consumables_idConsumables;
	}
}
