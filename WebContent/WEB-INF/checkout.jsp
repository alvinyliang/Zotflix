
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	    <link href="${pageContext.request.contextPath}/CSS/narrow-jumbotron.css" rel="stylesheet">
		<title>Fabflix</title>
	</head>
	<body>
		<div class="container">
			<%@ include file="../navbar.jsp" %>
				<c:if test="${not empty message}">
					<div class="alert alert-warning alert-dismissible fade show" role="alert">
					  
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>
					  ${message}
					</div>		
				</c:if>
				<c:remove var="message" scope="session" />
			<div class="jumbotron">
		     	<form class="form-group" action="/Fabflix/SaveOrder" method="POST">
					<div class="row">
						<div class="col-3">
							<p>Name: </p>
						</div>
						<div class="col-4" style="padding-right:5; padding-left:5;">
						 	<input type="text" class="form-control" placeholder="First Name" name="lastName">
						</div>
						<div class="col-4" style="padding-right:5; padding-left:5;">
						 	<input type="text" class="form-control" placeholder="Last Name" name="firstName">
						</div>
					</div>
					<div class="row">
						<div class="col-3">
							<p>Credit Card #: </p>
						</div>
						<div class="col-8" style="padding-right:5; padding-left:5;">
						 	<input type="text" class="form-control" placeholder="Credit Card Number" name="cardNumber">
						</div>
					</div>
					<div class="row">
						<div class="col-3">
							<p>Expiration Dates:</p>
						</div>
						<div class="col-2" style="padding-right:5; padding-left:5;">
						 	<input type="text" maxlength="2" class="form-control" placeholder="Day" name="day">
						</div>
						<div class="col-3" style="padding-right:5; padding-left:5;">
						 	      <select class="form-control" name="month">
					 	          	<option disabled selected value hidden> Month </option>
						 	      
							        <option>1</option>
							        <option>2</option>
							        <option>3</option>
							        <option>4</option>
							        <option>5</option>
							        <option>6</option>
							        <option>7</option>
							        <option>8</option>
							        <option>9</option>
							        <option>10</option>
							        <option>11</option>
							        <option>12</option>
							      </select>
						</div>
						<div class="col-3"  style="padding-right:5; padding-left:5;">
							<input type="text" maxlength="4" class="form-control" placeholder="Year" name="year">
						</div>
					</div>

 				<button type="submit" class="btn btn-primary">Purchase</button>
			</form>
		    </div>
		</div>
		<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
	</body>
</html>