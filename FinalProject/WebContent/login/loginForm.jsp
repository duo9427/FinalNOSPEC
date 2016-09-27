<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="LoginServlet">
아이디<input type="text" name="userid" id="userid">
비밀번호<input type="text" name="passwd" id="passwd"><br>
<input type="submit" value="회원가입">
      <input type="reset" value="취소">
</form> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="nospecLogin/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="nospecLogin/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="nospecLogin/css/form-elements.css">
        <link rel="stylesheet" href="nospecLogin/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="nospecLogin/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="nospecLogin/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="nospecLogin/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="nospecLogin/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="nospecLogin/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong><a href="../home.jsp">NO:SPEC</a></strong> <br>새로운 면접을 만나다.</h1>
                            <div class="description">
                            	<p>
	                            	<strong>NO:SPCE</strong>을 통해 당신의 가치를 높혀 드립니다.
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>NO:SPEC 서비스를 이용하시려면 <br>로그인 하세요.</h3>
                            		<p>NO:SPEC 서비스를 이용하시려면 로그인 하세요.</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="../LoginServlet" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="userid" placeholder="Username..." class="form-username form-control" id="userid">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="passwd" placeholder="Password..." class="form-password form-control" id="passwd">
			                        </div>
			                        <button type="submit" class="btn">로그인</button>
			                        <!-- <a class="btn btn-link-1 btn-link-1-twitter" href="#" type="submit"> 로그인  </a> -->
			                        <a class="btn btn-link-1 btn-link-1-facebook" href="../joinmain.jsp"> 회원가입 </a>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>...or login with:</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-1 btn-link-1-facebook" href="#">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-twitter" href="#">
	                        		<i class="fa fa-twitter"></i> Twitter
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-google-plus" href="#">
	                        		<i class="fa fa-google-plus"></i> Google Plus
	                        	</a>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="nospecLogin/js/jquery-1.11.1.min.js"></script>
        <script src="nospecLogin/bootstrap/js/bootstrap.min.js"></script>
        <script src="nospecLogin/js/jquery.backstretch.min.js"></script>
        <script src="nospecLogin/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="nospecLogin/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>