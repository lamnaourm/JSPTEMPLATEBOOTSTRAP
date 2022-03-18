package com.ismo.prod.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prods.metier.IMetier;
import com.prods.metier.MetierFamille;
import com.prods.metier.MetierProduit;
import com.prods.models.Famille;
import com.prods.models.Produit;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
      IMetier<Produit> metierProduit = new MetierProduit();
      IMetier<Famille> metierFamille = new MetierFamille();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		String page = "";
		
		switch (mode) {
		case "1": 	
			request.setAttribute("page", "../pages/acceuil.jsp");
			request.setAttribute("nbproduit", metierProduit.getAll().size());
			break;
		case "2": 	
			request.setAttribute("page", "../pages/listprod.jsp");
			request.setAttribute("listprod", metierProduit.getAll());
			break;
		case "3": 	
			request.setAttribute("page", "../pages/addprod.jsp");
			request.setAttribute("familles", metierFamille.getAll());
			break;
		case "4": 	
			Produit p = new Produit();
			Famille f = new Famille();
			p.setDescription(request.getParameter("libelle"));
			p.setPrix_achat(Double.valueOf(request.getParameter("pachat")));
			p.setPrix_vente(Double.valueOf(request.getParameter("pvente")));
			f.setId(Integer.valueOf(request.getParameter("famille")));
			p.setFamille(f);
			request.setAttribute("page", "../pages/addprod.jsp");
			request.setAttribute("success", metierProduit.save(p));
			break;
		}
		
		request.getRequestDispatcher("pages/template.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
