<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<div class="row">
	<div class="col-md-12">
		<h1 class="page-header">Liste des produits</h1>
	</div>
</div>
<!-- /. ROW  -->

<div class="row">
	<div class="col-md-12">
		<!-- Advanced Tables -->
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover"
						id="dataTables-example">
						<thead>
							<tr>
								<th>Code Produit</th>
								<th>Designation</th>
								<th>Prix achat</th>
								<th>Prix vente</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="p" items="${listprod}">
								<tr class="odd gradeX">
									<td>${p.id}</td>
									<td>${p.description}</td>
									<td>${p.prix_achat}</td>
									<td class="center">${p.prix_vente}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
		</div>
		<!--End Advanced Tables -->
	</div>
</div>
