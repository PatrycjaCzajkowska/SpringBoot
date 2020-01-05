<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>English learning | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">English learning</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/register">New Registration</a></li>
					<li><a href="/show-users">All Users</a></li>
					<li><a href="/new-word">New word</a></li>
					<li><a href="/list">List </a></li>
				</ul>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_REGISTER1' }">
			<div class="container text-center">
				<h3>New word</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-word">
					<input type="hidden" name="id" value="${word.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Polish version</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								   value="${word.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">English version</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="firstname"
								   value="${word.firstname }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>

		<c:when test="${mode=='ALL_USERS1' }">
			<div class="container text-center" id="tasksDiv">
				<h3>List</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
						<tr>
							<th>Id</th>
							<th>Polish version</th>
							<th>English version</th>
							<th>Delete</th>
							<th>Edit</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach var="word" items="${words }">
							<tr>
								<td>${word.id}</td>
								<td>${word.username}</td>
								<td>${word.firstname}</td>
								<td><a href="/delete-user1?id=${word.id }"><span
										class="glyphicon glyphicon-trash"></span></a></td>
								<td><a href="/edit-user1?id=${word.id }"><span
										class="glyphicon glyphicon-pencil"></span></a></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATE1' }">
			<div class="container text-center">
				<h3>Update word</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-word">
					<input type="hidden" name="id" value="${word.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Polish version</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								   value="${word.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">English version</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="firstname"
								   value="${word.firstname }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>
	</c:choose>

	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Welcome in English world!</h1>
			<h3>We present you videos with the most important English vocabulary:</h3>
		</div>
	</div>

	<div class="container text-centered">
		<div class="alert alert-success">
			<h4>Session 1: English learning</h4>
		</div>
		<iframe width="400" height="200"
			src="https://www.youtube.com/embed/wjNG_RcDqcY" frameborder="0"
			allow="autoplay; encrypted-media" allowfullscreen></iframe>
			<p> In this video you will learn 1000 most commonly used English words.</p>
			<p>	1. Watch this video and go to tab: "New word" to add a new word to the your learning list.</p>
		    <p> 2. Go to tab: "List" to see all words that you learned.</p>
		<div class="alert alert-success">
			<h4>Session 2: English learning</h4>
		</div>
		<iframe width="400" height="200"
			src="https://www.youtube.com/embed/ut0ufVd_BXE" frameborder="0"
			allow="autoplay; encrypted-media" allowfullscreen></iframe>
			<p> In this video you will learn 150 most commonly used English verbs.</p>
			<p>	1. Please watch this video and go to tab: "New word" to add a new word to the your learning list.</p>
			<p> 2. Go to tab: "List" to see all words that you learned.</p>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>