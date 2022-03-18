package com.prods.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.prods.models.Produit;
import com.prods.utils.HibernateUtils;

public class DaoProduit implements IDao<Produit> {

	@Override
	public List<Produit> getAll() {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		List<Produit> prods;
		Transaction t = session.beginTransaction();
		prods = session.createQuery("from Produit").getResultList();
		t.commit();
		session.close();
		return prods;
	}

	@Override
	public boolean save(Produit obj) {
		try {
			Session session = HibernateUtils.getSessionFactory().getCurrentSession();
			Transaction t = session.beginTransaction();
			session.save(obj);
			t.commit();
			session.close();
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

}
