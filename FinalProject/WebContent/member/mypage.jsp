<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet" type="text/css"
   href="http://snipplicious.com/css/bootstrap-3.2.0.min.css">
<link rel="stylesheet" type="text/css"
   href="http://snipplicious.com/css/font-awesome-4.1.0.min.css">

<script src="http://snipplicious.com/js/jquery.js"></script>
<script src="http://snipplicious.com/js/bootstrap.min.js"></script>

<!-- DAUM 주소 라이브러리 시작 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="js/daum.js"></script>
<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
<!-- DAUM 주소 라이브러리 끝 -->
<title>MyPage</title>
</head>
<%
   MemberDTO dto = (MemberDTO) request.getAttribute("mypage");
   String userid = dto.getUserid();
   String passwd = dto.getPasswd();
   String username = dto.getUsername();
   String post1 = dto.getPost1();
   String post2 = dto.getPost2();
   String addr1 = dto.getAddr1();
   String addr2 = dto.getAddr2();
   String phone1 = dto.getPhone1();
   String phone2 = dto.getPhone2();
   String phone3 = dto.getPhone3();
   String email1 = dto.getEmail1();
%>

<body>
   <div class="container" style="padding-top: 60px;">
      <h1 class="page-header">개인정보 수정</h1>
      <div class="row">
         <%-- <!-- left column -->
    <div class="col-md-4 col-sm-6 col-xs-12">
      <div class="text-center">
        <img src="<%=  %>" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>다른사진 선택</h6>
        <input type="file" class="text-center center-block well well-sm">
      </div>
    </div> --%>

         <!-- edit form column -->
         <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
            <div class="alert alert-info alert-dismissable">
               <a class="panel-close close" data-dismiss="alert">×</a> <i
                  class="fa fa-coffee"></i> This is an <strong>.alert</strong>. Use
               this to show important messages to the user.
            </div>
            <h3>Personal info</h3>
            <form class="form-horizontal" role="form" name="users">
               <div class="form-group">
                  <label class="col-lg-3 control-label">아이디 :</label>
                  <div class="col-lg-8">
                     <input class="form-control" value="<%=userid%>" type="text"
                        readonly="" placeholder="" name="userid" id="userid">
                  </div>
               </div>
               <div class="form-group">
                  <label class="col-md-3 control-label">비밀번호:</label>
                  <div class="col-md-8">
                     <input class="form-control" value="" type="password"
                        placeholder="password" name="passwd" id="passwd">
                  </div>
               </div>
               <div class="form-group">
                  <label class="col-md-3 control-label">비밀번호 확인:</label>
                  <div class="col-md-8">
                     <input class="form-control" value="" type="password"
                        name="passwd2" id="passwd2"> <span id="result"></span>
                  </div>
               </div>

               <div class="form-group">
                  <label class="col-md-3 control-label">이름:</label>
                  <div class="col-md-8">
                     <input class="form-control" value="<%=username%>" type="text"
                        readonly="" placeholder="" name="username" id="username">
                  </div>
               </div>

               <!-- 다음주소 시작-->
               <div class="form-group">
                  <label class="col-md-3 control-label">우편번호:</label>
                  <div class="col-md-2">
                     <input name="post1" id="post1" readonly="" value="<%=post1%>"
                        class="form-control">
                  </div>

                  <div class="col-md-2">
                     <input name="post2" id="post2" readonly="" value="<%=post2%>"
                        class="form-control">
                  </div>
                  <div class="col-md-2 ">
                     <input onclick="openDaumPostcode()" type="button"
                        class="btn btn-info btn-primary" value="우편번호찾기">
                  </div>
               </div>

               <div class="form-group">
                  <label class="col-md-3 control-label">도로명주소:</label>
                  <div class="col-lg-8">
                     <input name="addr1" id="addr1" size="40" value="<%=addr1%>"
                        class="form-control" placeholder="도로명주소">
                  </div>
               </div>
               <div class="form-group">
                  <label class="col-md-3 control-label">지번주소:</label>
                  <div class="col-lg-8">
                     <input name="addr2" id="addr2" size="40" value="<%=addr2%>"
                        class="form-control" placeholder="지번주소">
                  </div>
               </div>
               <!-- 다음주소 끝 -->

               <div class="form-group">
                  <label class="col-lg-3 control-label">핸드폰:</label>
                  <div class="col-md-2">
                     <input class="form-control" value="<%=phone1%>" type="text"
                        placeholder="" name="phone1" id="phone1">
                  </div>
                  <div class="col-md-2">
                     <input class="form-control" value="<%=phone2%>" type="text"
                        placeholder="" name="phone2" id="phone2">
                  </div>
                  <div class="col-md-2">
                     <input class="form-control" value="<%=phone3%>" type="text"
                        placeholder="" name="phone3" id="phone3">
                  </div>
                  <input class="btn btn-primary" value="sms인증" type="button">
               </div>

               <div class="form-group">
                  <label class="col-lg-3 control-label">Email:</label>
                  <div class="col-lg-8">
                     <input class="form-control" value="<%=email1%>" type="text"
                        placeholder="" name="email1" id="email1">
                  </div>
               </div>

               <div class="form-group">
                  <label class="col-md-3 control-label"></label>
                  <div class="col-md-8">
                     <button class="btn btn-primary" onclick="memberUpdate(users)"
                        value="저장">수정</button>
                     <span></span>
                     <button class="btn btn-red" onclick="memberDelete(users)"
                        value="탈퇴">탈퇴</button>
                     <span></span>
                     <button class="btn btn-default" onclick="home.jsp" value="취소">취소</button>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>
</body>

<script type="text/javascript">
   function memberUpdate(f) {
      f.action = "MemberUpdateServlet";
   }

   function memberDelete(f) {
      f.action = "MemberDeleteServlet";
   }

   $(document).ready(function() {

      $("#passwd2").on("keyup", function(event) {
         $("#result2").removeClass();
         var p = $("#passwd").val();
         var p2 = $("#passwd2").val();
         if (p == p2) {
            $("#result2").text("일치").addClass("blue");
         } else {
            $("#result2").text("불일치").addClass("red");
            ;
         }
      });

      $(document).ready(function() {

         $("form").on("submit", function(event) {

            var userid = $("#userid").val();
            if (userid == '') {
               alert("아이디를 입력하세요");
               return false;
            } else if ($("#passwd").val() == '') {
               alert("비밀번호를 입력하세요");
               return false;
            } else if ($("#username").val() == '') {
               alert("이름을 입력하세요");
               return false;
            } else if ($("#post1").val() == '') {
               alert("우편번호를 입력하세요");
               return false;
            } else if ($("#post2").val() == '') {
               alert("우편번호를 입력하세요");
               return false;
            } else if ($("#post2").val() == '') {
               alert("우편번호를 입력하세요");
               return false;
            } else if ($("#addr1").val() == '') {
               alert("주소를 입력하세요");
               return false;
            } else if ($("#phone1").val() == '') {
               alert("전화번호1 입력하세요");
               return false;
            } else if ($("#phone2").val() == '') {
               alert("전화번호2 입력하세요");
               return false;
            } else if ($("#phone3").val() == '') {
               alert("전화번호3 입력하세요");
               return false;
            } else if ($("#email1").val() == '') {
               alert("이메일1를 입력하세요");
               return false;
            } else {
               //성공
               //alert("회원가입을 환영합니다");
            }
         });
      });
   });
</script>