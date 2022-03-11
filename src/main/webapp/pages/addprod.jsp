<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="row">
	<div class="col-md-12">
		<h1 class="page-header">Ajouter un nouveau produit</h1>
	</div>
</div>
<!-- /. ROW  -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-6">
						<form role="form">
							<div class="form-group">
								<label>Libelle produit : </label> <input class="form-control"
									placeholder="Enter text" type="text">
							</div>
							<div class="form-group">
								<label>Famille Produit : </label> <select class="form-control">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
							<div class="form-group">
								<label>Prix achat : </label> <input class="form-control"
									placeholder="Enter text" type="number">
							</div>
							<div class="form-group">
								<label>Prix vente : </label> <input class="form-control"
									placeholder="Enter text" type="number">
							</div>
							<button type="submit" class="btn btn-default">Ajouter
								produit</button>
							<button type="reset" class="btn btn-default">Reset</button>
						</form>
					</div>
					<!-- /.col-lg-6 (nested) -->
					<!-- /.col-lg-6 (nested) -->
				</div>
				<!-- /.row (nested) -->
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
