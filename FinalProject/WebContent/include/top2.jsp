<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
  <title>새로운 면접을 만나다 NO:SPEC</title>
</head>



<body>
<nav class="navbar navbar-inverse  navbar-fixed-top">
<div class="container-fluid">
 <div class="navbar-header">
 <a class="navbar-brand" href="home.jsp">NO:SPEC</a>
 </div>
<%
   MemberDTO dto = (MemberDTO)session.getAttribute("login");
%>
<%
  if(dto==null){
%>

<div id="navbar-main">
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
            <li> <a href="#home" class="smoothScroll">Home</a></li>
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
<ul class="nav navbar-nav navbar-left">
      <li><a href="login/loginForm.jsp"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
      <li><a href="joinmain.jsp"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
      <li><a href="BoardListServlet">게시판</a></li>
    </ul>
  </div>
  
  
</nav>


<%
  }else{
%>
<ul class="nav navbar-nav">
  <li><a href="LogOutServlet">로그아웃</a></li>
  <li><a href="MyPageServlet">마이페이지</a></li>
  <li><a href="BoardListServlet">게시판</a></li>
   안녕하세요&nbsp;<%= dto.getUsername() %>
<%
  }//end if

 %>
 
 </ul>
 </nav>
</body>
 
 
 
 
 