<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel="stylesheet" href="<spring:url value="/resource/css/style.css"/>"/>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript"
	src="<spring:url value="/resource/js/appointment.js"/>"></script>


<title><spring:message code="message.addApptMng" /></title>
</head>
<body>


	<div class="container">
		<div class="row justify-content-md-center">

			<div class="col-12 col-md-8">
				<h1><spring:message code="message.addApptMng" /></h1>

				<div id="errorDiv" >

					<form:errors path="appt.*" />
				</div>



				<button class="btn btn-success" id="newBtn"><spring:message code="message.new" /></button>
				<br /> <br />


				<!-- 	Start of Create form -->
				<div id="newDiv">
					<h3><spring:message code="message.addAppt" /></h3>
					<form:form modelAttribute="appt" method="POST" id="apptForm"
						action="/Apointment/createAppt">

						<div class="form-group">
							<label for="date"> <spring:message code="message.date" /></label>
							<input type="datetime-local" class="form-control" id="date"
								name="date" required>
							<form:errors path="date" />
						</div>

						<div class="form-group">
							<label for="description"><spring:message code="message.description" /></label>
							<textarea class="form-control" id="description" rows="3"
								name="description" required></textarea>
							<form:errors path="description" />
						</div>

						<input type="submit" class="btn btn-success" value="Submit" />
					</form:form>
				</div>

				<!-- End of Create form -->


				<hr>
				<!-- 	Start of Search -->
				<div id="searchDiv">
					<h3 style="margin: 40px 0px;"><spring:message code="message.aptList" /></h3>
					<input type="text" id="searchQuery" placeholder="Search" />
					<button class="btn btn-primary" id="search" href="#"><spring:message code="message.search" /></button>
				</div>
				<!-- 	End of Search -->


				<table class="table table-striped" id="table">
					<col width="130">
					<col width="130">
					<thead>

						<tr>
							<th scope="col"><spring:message code="message.date" /></th>
							<th scope="col"><spring:message code="message.time" /></th>
							<th scope="col"><spring:message code="message.description" /></th>
						</tr>

					</thead>
					<tbody>

					</tbody>
				</table>



			</div>

		</div>

	</div>

</body>
</html>