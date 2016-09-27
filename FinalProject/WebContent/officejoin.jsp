<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="js/daum.js"></script>
<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    
<head>
    <meta charset="utf-8" />
    <title>기업 회원가입</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="mainCSS/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="mainCSS/font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="mainCSS/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="mainCSS/bootstrap/js/bootstrap.min.js"></script>
</head>

<div class="container">

<div class="page-header">
    <h1>기업회원가입 <small>새로운 면접을 만나다</small></h1>
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
                        <form role="form" action="CompanyAddServlet">

                            <div class="form-group">
                                <b>아이디</b><input type="text" name="cid" id="cid" class="form-control input-sm" placeholder="아이디">
                                <span id="result"></span>
                            </div>

                            <div class="form-group">
                                <b>비밀번호</b><input type="password" name="cpasswd" id="cpasswd" class="form-control input-sm" placeholder="비밀번호">
                            </div>
                            
                            <div class="form-group">
                                <b>비밀번호 확인</b><input type="password" name="cpasswd2" id="cpasswd2" class="form-control input-sm" placeholder="비밀번호 확인">
                           <span id="result2"></span>
                            </div>
                            
                             <div class="form-group">
                                <b>회사명</b><input type="text" name="cname" id="cname" class="form-control input-sm" placeholder="회사명">
                            </div>
                            
                            <div class="form-group">
                                <b>이메일</b><input type="email" name="cemail" id="cemail" class="form-control input-sm" placeholder="이메일">
                            </div>
                            
                            <b>사업자 등록번호</b>
                            <div class="row">
                          
                                <div class="col-xs-4 col-sm-4 col-md-4">
                        
                                    <div class="form-group">
                                          <input type="text" name="cno1" id="cno1" class="form-control input-sm" placeholder="">
                                    </div>
                                </div>
                                
                                <div class="col-xs-4 col-sm-4 col-md-4">
               
                                    <div class="form-group">
                                        <input type="text" name="cno2" id="cno2" class="form-control input-sm" placeholder="">
                                    </div>
                                </div>
                               
                                 <div class="col-xs-4 col-sm-4 col-md-4">
                                 
                                    <div class="form-group">
                                        <input type="text" name="cno3" id="cno3" class="form-control input-sm" placeholder="">
                                    </div>
                            </div>
                         </div> 
                         
                         <div class="form-group">
                                <b>대표자명</b><input type="text" name="cmaster" id="cmaster" class="form-control input-sm" placeholder="대표자명">
                            </div>
                         
                            
                             <div class="form-group">
                                <b>회사분류</b><select name="ccategory" id="ccategory" class="form-control input-sm" placeholder="회사명">
                                <option value="대기업">대기업</option>
                                 <option value="중견기업">중견기업</option>
                                 <option value="중소기업">중소기업</option>
                                  <option value="소기업">소기업</option>
                                  </select>
                            </div>
                            
                            <!-- 다음주소 -->
                            <b>회사 주소</b>
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
                        
                        <b>회사 번호</b>
                        <div class="row">
                           <div class="col-xs col-sm col-md-4">
                              <div class="form-group">
                                 <select name="cphone1" id="cphone1" class="form-control input-sm">
                                    <option value="02">02</option>
                                    <option value="031">031</option>
                                    <option value="032">032</option>
                                    <option value="033">033</option>
                                    <option value="041">041</option>
                                    <option value="042">042</option>
                                    <option value="043">043</option>
                                    <option value="044">044</option>
                                    <option value="049">049</option>
                                    <option value="051">051</option>
                                    <option value="052">052</option>
                                    <option value="053">053</option>
                                    <option value="054">054</option>
                                    <option value="055">055</option>
                                    <option value="061">061</option>
                                    <option value="062">062</option>
                                    <option value="063">063</option>
                                    <option value="064">064</option>
                                 </select>
                              </div>
                           </div>
                           <div class="col-xs col-sm col-md-4">
                              <div class="form-group">
                                 <input type="text" name="cphone2" id="cphone2"
                                    class="form-control input-sm" placeholder="phone">
                              </div>
                           </div>
                           <div class="col-xs col-sm col-md-4">
                              <div class="form-group">
                                 <input type="text" name="cphone3"
                                    id="cphone3" class="form-control input-sm"
                                    placeholder="phone">
                              </div>
                           </div>
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
      $("#cid").on("keyup", function(event){
         
         //Ajax 연동 
       //ajax통신
         jQuery.ajax({
            type:"GET",
            url:"cidCheck.jsp",
            dataType:"text",
            data:{
            	cid:$("#cid").val()
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
         
          var cid = $("#cid").val();
          if(cid == ''){
             alert("아이디를 입력하세요");
             return false;
          }else if($("#passwd").val() == ''){
             alert("비밀번호를 입력하세요");
             return false;
          }else if($("#cname").val() == ''){
             alert("이름을 입력하세요");
             return false;
          }else if($("#cemail").val() == ''){
             alert("이메일을 입력하세요");
             return false;
          }else if($("#cno1").val() == ''){
             alert("사업자 등록 번호를 입력하세요");
             return false;
          }else if($("#cno2").val() == ''){
             alert("사업자 등록 번호를 입력하세요");
             return false;
          }else if($("#cno3").val() == ''){
             alert("사업자 등록 번호를 입력하세요");
             return false;
          }else if($("#cmaster").val() == ''){
             alert("대표자명을 입력하세요");
             return false;
          }else if($("#ccategory").val() == ''){
             alert("회사분류를 선택하세요");
             return false;
          }else if($("#cpost1").val() == ''){
             alert("우편번호를 입력하세요");
             return false;
          }else if($("#cpost2").val() == ''){
             alert("우편번호를 입력하세요");
             return false;
          }else if($("#caddr1").val() == ''){
             alert("주소를 입력하세요");
             return false;
          }else if($("#caddr2").val() == ''){
             alert("주소를 입력하세요");
             return false;
          }else if($("#cphone1").val() == ''){
             alert("전화번호를  입력하세요");
             return false;
          }else if($("#cphone2").val() == ''){
             alert("전화번호를 입력하세요");
             return false;
          }else if($("#cphone3").val() == ''){
             alert("전화번호를 입력하세요");
             return false;
          }else{
             //성공
             //alert("회원가입을 환영합니다");
          }
         
      });
      
   });
</script>