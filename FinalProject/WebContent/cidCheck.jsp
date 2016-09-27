<%@page import="com.config.MySqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
   String id = request.getParameter("cid");
   SqlSession sess = MySqlSessionFactory.getSession();
   String cid = null;
   try{
      cid = sess.selectOne("cidCheck", id);
   }finally{
      sess.close();
   }

   if(cid == null){
      out.print("사용가능");
   }else{
      out.print("사용불가");
   }

%>