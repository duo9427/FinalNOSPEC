<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="SHIELD - Free Bootstrap 3 Theme">
<meta name="author" content="Carlos Alvarez - Alvarez.is - blacktie.co">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>새로운 면접을 만나다 NO:SPEC</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css"
	href="sdsdsd/bootstrap/css/bootstrap.min.css" />

<!-- Custom styles for this template -->
<link href="sdsdsd/css/main.css" rel="stylesheet">
<link href="sdsdsd/css/icomoon.css" rel="stylesheet">
<link href="sdsdsd/css/animate-custom.css" rel="stylesheet">

<link
	href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700'
	rel='stylesheet' type='text/css'>

<script type="text/javascript" src="sdsdsd/js/jquery.min.js"></script>
<script type="text/javascript" src="sdsdsd/js/modernizr.custom.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<jsp:include page="include/top.jsp" flush="true" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->


<style>
.container {
	padding: 80px 120px;
}

.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #f1f1f1;
}
</style>

</head>

<%
	String result = (String) request.getAttribute("result");
	if (result != null) {
%>
<script type="text/javascript">
     alert("회원가입을 환영합니다~~~");
  </script>
<%
	}
%>
<%
	String logout = (String) request.getAttribute("logout");
	System.out.println(">>" + logout);
	if (logout != null) {
%>
<script type="text/javascript">
      var str = "<%=logout%>";
      alert("<%=logout%>");
  </script>
<%
	}
%>
<%
	String update = (String) request.getAttribute("update");
	System.out.println(">>" + update);
	if (update != null) {
%>
<script type="text/javascript">
      var str = "<%=update%>";
      alert("<%=update%>");
  </script>
<%
	}
%>
<%
	String delete = (String) request.getAttribute("delete");
	System.out.println(">>" + delete);
	if (delete != null) {
%>
<script type="text/javascript">
      var str = "<%=delete%>";
      alert("<%=delete%>
	");
</script>
<%
	}
%>

<body data-spy="scroll" data-offset="0" data-target="#navbar-main">

	<!-- <div id="navbar-main">
      Fixed navbar
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon icon-shield" style="font-size:30px; color:#3498db;"></span>
          </button>
          <a class="navbar-brand hidden-xs hidden-sm" href="#home"><span class="icon icon-shield" style="font-size:18px; color:#3498db;"></span></a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="#home" class="smoothScroll">Home</a></li>
			<li> <a href="#about" class="smoothScroll"> About</a></li>
			<li> <a href="#services" class="smoothScroll"> Services</a></li>
			<li> <a href="#team" class="smoothScroll"> Team</a></li>
			<li> <a href="#portfolio" class="smoothScroll"> Portfolio</a></li>
			<li> <a href="#blog" class="smoothScroll"> Blog</a></li>
			<li> <a href="#contact" class="smoothScroll"> Contact</a></li>
        </div>/.nav-collapse
      </div>
    </div>
    </div> -->



	<!-- ==== HEADERWRAP ==== -->
<!-- Sidenav -->

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<div class="carousel-inner" role="listbox">
		<div class="item active">
			<div id="headerwrap" id="home" name="home"
				style="background: url('sdsdsd/images/office.jpg') no-repeat center top; background-size: cover; ">
				<header class="clearfix">
				<h1>NO:SPEC</span></h1>
					<p>Aim Higher. </p>
					<p>Reach Farther. </p>
					<p>Dream Bigger.</p>
				</header>
			</div>
			</div>
			<!-- /headerwrap -->
			
			<div class="item">
			<div id="headerwrap" id="home" name="home"
				style="background: url('sdsdsd/images/office2.jpg') no-repeat center top; background-size: cover;">
				<header class="clearfix">
					<h1>NO:SPEC</span></h1>
					<p>Aim Higher. </p>
					<p>Reach Farther. </p>
					<p>Dream Bigger.</p>
				</header>
			</div>
			</div>
			<!-- /headerwrap -->
			
			<div class="item">
			<div id="headerwrap" id="home" name="home"
				style="background: url('sdsdsd/images/office3.jpg') no-repeat center top; background-size: cover;">
				<header class="clearfix">
					<h1>NO:SPEC</span></h1>
					<p>Aim Higher. </p>
					<p>Reach Farther. </p>
					<p>Dream Bigger.</p>
				</header>
			</div>
			</div>
			
			<!-- /headerwrap -->




		
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
	</div>




		<!-- ==== GREYWRAP ==== -->
		<div id="greywrap">
			<div class="row">
				<div class="col-lg-4 callout">
					<span class="icon icon-stack"></span>
					<h2>Bootstrap 3</h2>
					<p>Shield Theme is powered by Bootstrap 3. The incredible
						Mobile First Framework is the best option to run your website.</p>
				</div>
				<!-- col-lg-4 -->

				<div class="col-lg-4 callout">
					<span class="icon icon-eye"></span>
					<h2>Retina Ready</h2>
					<p>You can use this theme with your iPhone, iPad or MacBook
						Pro. This theme is retina ready and that is awesome.</p>
				</div>
				<!-- col-lg-4 -->

				<div class="col-lg-4 callout">
					<span class="icon icon-heart"></span>
					<h2>Crafted with Love</h2>
					<p>We don't make sites, we craft themes with love & passion.
						That is our most valued secret. We only do thing that we love.</p>
				</div>
				<!-- col-lg-4 -->
			</div>
			<!-- row -->
		</div>
		<!-- greywrap -->



		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->

		<script type="text/javascript" src="sdsdsd/js/retina.js"></script>
		<script type="text/javascript" src="sdsdsd/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="sdsdsd/js/smoothscroll.js"></script>
		<script type="text/javascript" src="sdsdsd/js/jquery-func.js"></script>
</body>
</html>