package com.Radzov2.model;

public class ConsumablesModel {
	
	private int idConsumables;
	private String name;
	private Double cost;
	private String description;
	private String image;
	private String consumables_type;
	
	public int getIdConsumables() {
		return this.idConsumables;
	}
	
	public String getName() {
		return this.name;
	}
	
	public Double getCost() {
		return this.cost;
	}
	
	public String getDescription() {
		return this.description;
	}
	
	public String getImage() {
		return this.image;
	}
	
	public String getConsumablesType() {
		return this.consumables_type;
	}
	
	public void setIdConsumables(int idConsumables) {
		this.idConsumables = idConsumables;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setCost(Double cost) {
		this.cost = cost;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
	
	public void setConsumablesType(String consumables_type) {
		this.consumables_type = consumables_type;
	}
}
