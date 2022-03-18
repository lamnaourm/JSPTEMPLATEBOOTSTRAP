package com.prods.metier;

import java.util.List;

import com.prods.dao.DaoProduit;
import com.prods.dao.IDao;
import com.prods.models.Produit;

public class MetierProduit implements IMetier<Produit> {

	IDao<Produit> dao = new DaoProduit();
	
	@Override
	public List<Produit> getAll() {
		return dao.getAll();
	}

	@Override
	public boolean save(Produit obj) {
		// TODO Auto-generated method stub
		return dao.save(obj);
	}

}
