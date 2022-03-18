package com.prods.metier;

import java.util.List;

import com.prods.dao.DaoFamille;
import com.prods.dao.IDao;
import com.prods.models.Famille;

public class MetierFamille implements IMetier<Famille> {

	IDao<Famille> dao = new DaoFamille();
	
	@Override
	public List<Famille> getAll() {
		return dao.getAll();
	}

	@Override
	public boolean save(Famille obj) {
		// TODO Auto-generated method stub
		return dao.save(obj);
	}

}
