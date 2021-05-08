<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<spring:url var="css" value="/resources/css" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>B2C_Commerce - ${title}</title>
<script>
	window.menu = '${title}';
	window.id = '${category.id}';
</script>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${css}/styles.css" rel="stylesheet" />
<link href="${css}/bootstrap-theme.min.css" rel="stylesheet" />
<link href="${css}/myApp.css" rel="stylesheet" />
</head>

<body>
	<div class="wrapper">
		<!-- Navigation-->
		<%@include file="./shared/navbar.jsp"%>

		<div class="content">
			<!-- Page Content Home-->
			<c:if test="${userClickHome == true }">
				<%@include file="homePage.jsp"%>
			</c:if>

			<!-- Page Content About-->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Page Content Contact-->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>
			
			<!-- Page Content Product-->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>
			
		
		</div>

		<!-- Footer-->
		<%@include file="./shared/footer.jsp"%>
		<!-- Bootstrap core JS-->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
		<!-- myApp JS-->
		<script src="${js}/scripts.js"></script>
		<!-- Core theme JS-->
		<script src="${js}/myApp.js"></script>
	</div>
</body>
</html>
