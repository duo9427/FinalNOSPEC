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
  <title>Insert title here</title>
</head>

<body>
<nav class="navbar navbar-inverse fixed navbar-fixed-top">
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
<ul class="nav navbar-nav">
      <li><a href="login/loginForm.jsp">로그인</a></li>
      <li><a href="joinmain.jsp">회원가입</a></li>
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
 
 
 
 
 