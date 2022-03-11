package com.prods.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class Famille {

	@Id
	@GeneratedValue
	@Column(name="id_famille")
	private int id;
	
	@Column
	private String name;
	
	@OneToMany(mappedBy="famille", fetch=FetchType.EAGER)
	private List<Produit> produits;
	
	public Famille() {
		
	}
	public Famille(String name) {
		this.name = name;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Produit> getProduits() {
		return produits;
	}
	public void setProduits(List<Produit> produits) {
		this.produits = produits;
	}
}
