<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
 
<head>
<meta charset="utf-8" />
<title>개인 회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css"
   href="mainCSS/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
   href="mainCSS/font-awesome/css/font-awesome.min.css" />

<script type="text/javascript" src="mainCSS/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="mainCSS/bootstrap/js/bootstrap.min.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="js/daum.js"></script>
<script src="js/jquery-3.1.0.js"></script>
</head>

   <div class="container">
      <div class="page-header">
         <h1>
            개인회원가입 <small>새로운 면접을 만나다</small>
         </h1>
      </div>

      <!-- Registration Form - START -->
      <div class="container" id="container1">
         <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h3 class="panel-title text-center">회원가입 해주세요</h3>
                  </div>
                  <div class="panel-body">
                     <form role="form" action="MemberAddServlet">
                     <b>아이디</b>
                        <div class="form-group">
                           <input type="text" name="userid" id="userid"
                              class="form-control input-sm" placeholder="아이디">
                              <span id="result"></span>
                        </div>
                        <b>비밀번호</b>
                        <div class="form-group">
                           <input type="password" name="passwd" id="passwd"
                              class="form-control input-sm" placeholder="비밀번호">
                        </div>
                        <b>비밀번호 확인</b>
                        <div class="form-group">
                           <input type="password" name="passwd2" id="passwd2"
                              class="form-control input-sm" placeholder="비밀번호확인">
                              <span id="result2"></span>
                        </div>
                        <b>이름</b>
                        <div class="form-group">
                           <input type="text" name="username" id="username"
                              class="form-control input-sm" placeholder="이름">
                        </div>
                        
                        <!-- 다음주소 시작-->
                        <b>주소</b>
                        <div class="row">
                           <div class="col-xs-3 col-sm-3 col-md-3">
                              <div class="form-group">
                                 <input name="post1" id="post1" readonly="" size="4"
                                    class="form-control input-sm">
                              </div>
                           </div>
                           <div class="col-xs-3 col-sm-3 col-md-3">
                              <div class="form-group">
                                 <input name="post2" id="post2" readonly="" size="4"
                                    class="form-control input-sm">
                              </div>
                           </div>
                           <div class="col-xs-5 col-sm-5 col-md-5">
                              <div class="form-group">
                                 <input onclick="openDaumPostcode()" type="button"
                                    class="btn btn-info btn-block" value="우편번호찾기">
                              </div>
                           </div>
                        </div>
                        
                        <div class="form-group">
                           <input name="addr1" id="addr1" size="40"
                              class="form-control input-sm" placeholder="도로명주소">
                        </div>
                        <div class="form-group">
                           <input name="addr2" id="addr2" size="40"
                              class="form-control input-sm" placeholder="지번주소">
                        </div>
                        <!-- 다음주소 끝 -->

                        <b>핸드폰</b>
                        <div class="row">
                           <div class="col-xs col-sm col-md-4">
                              <div class="form-group">
                                 <select name="phone1" id="phone1" class="form-control input-sm">
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="017">017</option>
                                 </select>
                              </div>
                           </div>
                           <div class="col-xs col-sm col-md-4">
                              <div class="form-group">
                                 <input type="text" name="phone2" id="phone2"
                                    class="form-control input-sm" placeholder="phone">
                              </div>
                           </div>
                           <div class="col-xs col-sm col-md-4">
                              <div class="form-group">
                                 <input type="text" name="phone3"
                                    id="phone3" class="form-control input-sm"
                                    placeholder="phone">
                              </div>
                           </div>
                        </div>
                        
                        <b>이메일</b>
                        <div class="form-group">
                           <input type="email" name="email1" id="email1"
                              class="form-control input-sm" placeholder="example@email.com">
                        </div>
                        
                        
                        
                        <input type="submit" value="등록하기" class="btn btn-info btn-block">
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      
         
<style>

.centered-form {
   margin-top: 120px;
   margin-bottom: 120px;
}

.centered-form .panel {
   background: rgba(255, 255, 255, 0.8);
   box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}

body {
	background-image: url("image/1@2x.jpg")
}
</style>
      <!-- Registration Form - END -->

   </div>


<script type="text/javascript">

   $(document).ready(function(){
     
      $("#passwd2").on("keyup", function(event){
       $("#result2").removeClass();
         var p = $("#passwd").val();
         var p2 = $("#passwd2").val();
         if(p == p2){
            $("#result2").text("일치").addClass("blue");
         }else{
            $("#result2").text("불일치").addClass("red");;
         }
      });
      
      
      
      
      
      
      
      // 아이디 중복체크 Ajax 연동
      $("#userid").on("keyup", function(event){
         
         //Ajax 연동 
       //ajax통신
         jQuery.ajax({
            type:"GET",
            url:"idCheck.jsp",
            dataType:"text",
            data:{
                  userid:$("#userid").val()
               },
            success:function(responseData,status,xhr){
               console.log(responseData);
               $("#result").text(responseData);
            },
            error:function(xhr,status,error){
               console.log("error");
            }
         });
      });
      
      
      
      
      
      
      
      $("form").on("submit", function(event){
         
          var userid = $("#userid").val();
          if(userid == ''){
             alert("아이디를 입력하세요");
             return false;
          }else if($("#passwd").val() == ''){
             alert("비밀번호를 입력하세요");
             return false;
          }else if($("#username").val() == ''){
             alert("이름을 입력하세요");
             return false;
          }else if($("#post1").val() == ''){
             alert("우편번호를 입력하세요");
             return false;
          }else if($("#post2").val() == ''){
             alert("우편번호를 입력하세요");
             return false;
          }else if($("#post2").val() == ''){
             alert("우편번호를 입력하세요");
             return false;
          }else if($("#addr1").val() == ''){
             alert("주소를 입력하세요");
             return false;
          }else if($("#phone1").val() == ''){
             alert("전화번호를  입력하세요");
             return false;
          }else if($("#phone2").val() == ''){
             alert("전화번호를 입력하세요");
             return false;
          }else if($("#phone3").val() == ''){
             alert("전화번호를 입력하세요");
             return false;
          }else if($("#email1").val() == ''){
             alert("이메일을 입력하세요");
             return false;
          }else{
             //성공
             //alert("회원가입을 환영합니다");
          }
         
      });
      
   });
</script>