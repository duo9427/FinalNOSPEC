<%@page import="com.dto.MemberDTO"%>
<%@page import="com.dto.PageDTO"%>
<%@page import="com.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table border="1">
 <tr>
  <td colspan="5">
   <form action="BoardSearchServlet" method="get">
    <select name="searchName">
     <option value="title">제목</option>
     <option value="author">작성자</option>
    </select>
    <input type="text" name="searchValue">
    <button>검색</button>
    </form>
  </td>
 </tr>
 <tr>
   <th>글번호</th>
   <th>제목</th>
   <th>작성자</th>
   <th>작성일</th>
   <th>조회수</th>
 </tr>
<%
    PageDTO pageDTO =
        (PageDTO) request.getAttribute("page");

    List<BoardDTO> list = pageDTO.getList(); 
       
    for(BoardDTO dto : list){
    	int num = dto.getNum();
    	String title = dto.getTitle();
    	String author = dto.getAuthor();
    	String writday = dto.getWriteday();
    	int readcnt = dto.getReadcnt();
%>
 <tr>
   <td><%= num%></td>
  <%
     MemberDTO memberDTO = (MemberDTO)session.getAttribute("login");
     if(memberDTO != null){
  %> 
   <td><a href="BoardRetrieveServlet?num=<%= num%>"><%= title%></a></td>
   <%
     }else{
   %>
   <td><%= title%></td>
   <%
     }//end if
   %>
   <td><%= author%></td>
   <td><%= writday%></td>
   <td><%= readcnt%></td>
 </tr>
 <%
    }//end for
 %>
  <tr>
    <td colspan="5">
      <jsp:include page="page.jsp" flush="true" />
    </td>
  </tr>
 
 
 
 
 
</table>
 <%
     MemberDTO memberDTO = (MemberDTO)session.getAttribute("login");
     if(memberDTO != null){
  %> 
<a href="BoardWriteUIServlet">글쓰기 화면</a>
<%
     }
%>





