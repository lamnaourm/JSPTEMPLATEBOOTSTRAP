<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="row">
	<div class="col-md-12">
		<h1 class="page-header">
			Acceuil <small>Gestion des produits</small>
		</h1>
	</div>
</div>
<!-- /. ROW  -->

<div class="row">
	<div class="col-md-3 col-sm-12 col-xs-12">
		<div class="panel panel-primary text-center no-boder bg-color-green">
			<div class="panel-body">
				<i class="fa fa-bar-chart-o fa-5x"></i>
				<h3>${nbproduit}</h3>
			</div>
			<div class="panel-footer back-footer-green">Produits</div>
		</div>
	</div>
	<div class="col-md-3 col-sm-12 col-xs-12">
		<div class="panel panel-primary text-center no-boder bg-color-blue">
			<div class="panel-body">
				<i class="fa fa-shopping-cart fa-5x"></i>
				<h3>${nbproduit}</h3>
			</div>
			<div class="panel-footer back-footer-blue">Famille</div>
		</div>
	</div>


</div>