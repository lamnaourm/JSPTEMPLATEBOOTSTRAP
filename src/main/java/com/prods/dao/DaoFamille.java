package com.prods.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.prods.models.Famille;
import com.prods.utils.HibernateUtils;

public class DaoFamille implements IDao<Famille> {

	@Override
	public List<Famille> getAll() {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		List<Famille> familles;
		Transaction t = session.beginTransaction();
		familles = session.createQuery("from Famille").getResultList();
		t.commit();
		session.close();
		return familles;
	}

	@Override
	public boolean save(Famille obj) {
		// TODO Auto-generated method stub
		return false;
	}

}
