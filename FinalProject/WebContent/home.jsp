<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="SHIELD - Free Bootstrap 3 Theme">
<meta name="author" content="Carlos Alvarez - Alvarez.is - blacktie.co">

<title>새로운 면접을 만나다 NO:SPEC</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"   href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"   href="font-awesome/css/font-awesome.min.css" />
<!-- Custom styles for this template -->
<link href="css/main.css" rel="stylesheet">
<link href="css/icomoon.css" rel="stylesheet">
<link href="css/animate-custom.css" rel="stylesheet">

<link
   href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic'   rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700'   rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"   href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"   href="font-awesome/css/font-awesome.min.css" />

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/modernizr.custom.js"></script>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

 <jsp:include page="include/top.jsp" flush="true" />
</head>



 <%
    String result = (String)request.getAttribute("result");
   if(result!=null){
 %>
 <script type="text/javascript">
     alert("회원가입을 환영합니다~~~");
  </script>
 <%
   }
 %>
  <%
    String logout = (String)request.getAttribute("logout");
    System.out.println(">>" + logout);
   if(logout!=null){
 %>
 <script type="text/javascript">
      var str = "<%=logout%>";
      alert("<%=logout%>");
  </script>
 <%
   }
 %>
 <%
    String update = (String)request.getAttribute("update");
    System.out.println(">>" + update);
   if(update!=null){
 %>
 <script type="text/javascript">
      var str = "<%=update%>";
      alert("<%=update%>");
  </script>
 <%
   }
 %>
 <%
    String delete = (String)request.getAttribute("delete");
    System.out.println(">>" + delete);
   if(delete!=null){
 %>
 <script type="text/javascript">
      var str = "<%=delete%>";
      alert("<%=delete%>");
  </script>
 <%
   }
 %>



   <!-- ==== HEADERWRAP ==== -->
   <div id="headerwrap" id="home" name="home"
      style="background: url('image/main2.jpg') no-repeat center top; background-size: cover;">
      <header class="clearfix">
      


      </header>


   </div>
   <!-- /headerwrap -->

   <!-- ==== GREYWRAP ==== -->
   <%-- <div id="greywrap">
      <div class="row">

         <div class="col-lg-12 callout">

            <h4><b>진행중인 채용공고</b></h4>
            
            
            <jsp:include page="board.jsp" flush="true" /><br>
         </div>
         <!-- row -->
      </div>
      <!-- greywrap -->
</div>

 --%>



      <!-- Bootstrap core JavaScript
    ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->

      <script type="text/javascript" src="mainCSS/js/retina.js"></script>
      <script type="text/javascript" src="mainCSS/js/jquery.easing.1.3.js"></script>
      <script type="text/javascript" src="mainCSS/js/smoothscroll.js"></script>
      <script type="text/javascript" src="mainCSS/js/jquery-func.js"></script>
</body>
</html>

