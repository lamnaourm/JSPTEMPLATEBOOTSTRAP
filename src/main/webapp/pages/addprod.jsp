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

						<c:if test="${not empty success}">
							<c:choose>
								<c:when test="${success}">
									<div class="alert alert-success">
										<strong>Insere avec succes</strong>
									</div>
								</c:when>
								<c:when test="${not success}">
									<div class="alert alert-danger">
										<strong>Echec d'insertion</strong>
									</div>
								</c:when>
							</c:choose>
						</c:if>
						
						<form role="form" action="Controller">
							<input type="hidden" name="mode" value="4">
							<div class="form-group">
								<label>Libelle produit : </label> <input class="form-control"
									placeholder="Enter libelle produit" type="text" name="libelle"
									required>
							</div>
							<div class="form-group">
								<label>Famille Produit : </label> <select class="form-control"
									name="famille">
									<c:forEach items="${familles}" var="fa">
										<option value="${fa.id}">${fa.id}- ${fa.name}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label>Prix achat : </label> <input class="form-control"
									placeholder="Enter text" type="number" name="pachat" required>
							</div>
							<div class="form-group">
								<label>Prix vente : </label> <input class="form-control"
									placeholder="Enter text" type="number" name="pvente" required>
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
