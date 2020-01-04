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
				</ul>
			</div>
		</div>
	</div>

	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Welcome in English world!</h1>
			<h1>Witaj w swiecie jezyka angielskiego! </h1>
			<h3>We present you videos with the most important English vocabulary:</h3>
			<h3>Zaprezentujemy Ci filmy z najczesciej uzywanym angielskim slownictwem:</h3>
		</div>
	</div>

	<div class="container text-centered">
		<div class="alert alert-success">
			<h4>Session 1: English learning</h4>
			<h4>Sesja 1: Nauka jezyka angelskiego</h4>
		</div>
		<iframe width="400" height="200"
			src="https://www.youtube.com/embed/wjNG_RcDqcY" frameborder="0"
			allow="autoplay; encrypted-media" allowfullscreen></iframe>
			
			<p> In this video you will learn 1000 most commonly used English words. Please watch this video and add a new word to the your learning list.</p>
			<p>	W tym filmie nauczysz sie 1000 najczesciej uzywanych angielskich slow. Obejrzyj ten film i dodaj nowe slowo do Twojej listy uczenia sie.</p>
			<div class="alert alert-success">
			<h4>Session 2: English learning</h4>
		</div>
		<iframe width="400" height="200"
			src="https://www.youtube.com/embed/ut0ufVd_BXE" frameborder="0"
			allow="autoplay; encrypted-media" allowfullscreen></iframe>
			
			<p> In this video you will learn 150 most commonly used English verbs. Please watch this video and add a new word to the your learning list.</p>
			<p>	W tym filmie nauczysz sie 150 najczesciej uzywanych angielskich czasownikow. Obejrzyj ten film i dodaj nowe slowo do Twojej listy uczenia sie.</p>
<%--			<div class="alert alert-success">--%>
<%--			<h4>Session 1: Spring Boot Tutorial</h4>--%>
<%--		</div>--%>
<%--		<iframe width="400" height="200"--%>
<%--			src="https://www.youtube.com/embed/m0Xf6Bf6KFU" frameborder="0"--%>
<%--			allow="autoplay; encrypted-media" allowfullscreen></iframe>--%>
<%--			--%>
<%--			<p> This is 1st Session of the tutorial..... </p>--%>
<%--			<div class="alert alert-success">--%>
<%--			<h4>Session 1: Spring Boot Tutorial</h4>--%>
<%--		</div>--%>
<%--		<iframe width="400" height="200"--%>
<%--			src="https://www.youtube.com/embed/m0Xf6Bf6KFU" frameborder="0"--%>
<%--			allow="autoplay; encrypted-media" allowfullscreen></iframe>--%>
<%--			--%>
<%--			<p> This is 1st Session of the tutorial..... </p>--%>
<%--	</div>--%>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>