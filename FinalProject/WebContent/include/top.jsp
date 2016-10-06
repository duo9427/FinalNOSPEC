<%@ page import="com.dto.MemberDTO"%>
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
  
  <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
.w3-sidenav a,.w3-sidenav h4 {padding: 12px;}
.w3-navbar li a {
    padding-top: 12px;
    padding-bottom: 12px;
}


</style>
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
<ul class="nav navbar-nav navbar-right">
      <li><a href="login/loginForm.jsp"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
      <li><a href="joinmain.jsp"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
      <li><a href="BoardListServlet">게시판</a></li>
    </ul>
  </div>
</nav>


<%
  }else{
%>
<ul class="nav navbar-nav navbar-right"">
  <li><a href="LogOutServlet">로그아웃</a></li>
  <li><a href="MyPageServlet">마이페이지</a></li>
  <li><a href="BoardListServlet">게시판</a></li>
   안녕하세요&nbsp;<%= dto.getUsername() %>
    <nav class="w3-sidenav w3-collapse w3-theme-l5 w3-animate-left" style="z-index:3;width:250px;margin-top:51px;" id="mySidenav">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="close menu">
    <i class="fa fa-remove"></i>
  </a>
  <h4><b>Menu</b></h4>
  <a href="#" class="w3-hover-black">마이페이지</a>
  <a href="#" class="w3-hover-black">이력서관리</a>
  <a href="#" class="w3-hover-black">지원현황</a>
  <a href="#" class="w3-hover-black">채용정보</a>
</nav>
<%
  }//end if

 %>
 
 </ul>
 </nav>

</body>
 
 
 
 
 