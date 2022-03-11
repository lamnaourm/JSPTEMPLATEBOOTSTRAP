<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Gestion des produits</title>
<!-- Bootstrap Styles-->
<link href="pages/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="pages/assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="pages/assets/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />
<!-- Custom Styles-->
<link href="pages/assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href="http://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="wrapper">
		<jsp:include page="../pages/template/header.jsp"></jsp:include>
		
		<!--/. NAV TOP  -->
		<jsp:include page="../pages/template/menu.jsp"></jsp:include>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<jsp:include page="${page}"></jsp:include>
				
				<jsp:include page="../pages/template/footer.jsp"></jsp:include>
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="pages/assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="pages/assets/js/bootstrap.min.js"></script>
	<!-- Metis Menu Js -->
	<script src="pages/assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="pages/assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="pages/assets/js/morris/morris.js"></script>
	<!-- Custom Js -->
	<script src="pages/assets/js/custom-scripts.js"></script>
</body>
</html>
