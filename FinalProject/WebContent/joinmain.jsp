<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
background-image : url("image/1@2x.jpg")
}


</style>
    <title>NO:SPEC</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="mainCSS/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="mainCSS/font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="mainCSS/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="mainCSS/bootstrap/js/bootstrap.min.js"></script>
</head>



<body>

<div class="container1">

<div class="page-header">
<p align="center">
<img src="image/nospec_1.png" alt="" width="200" />
<h4 align="center"><font color="white">새로운 면접을 만나다</font></h4>
    <h1 align="center"><font color="white">회원가입</font></h1>

</div>

<!-- Featured Items - START -->


  <div class="container">
        <div class="row style_featured">
            <div class="col-md-6">
                <div>
                <img src="mainCSS/image/user_1.png" alt="" class="img-rounded "  width="335"/>
                    <h2><font color="white">개인회원</font></h2>
                    
                    <a href="userjoin.jsp" class="btn btn-success" title="More">가입하기</a>
                </div>
            </div>
            <div class="col-md-6">
                <div>
                    <img src="mainCSS/image/office_1.png" alt="" class="img-rounded " width="200"/>
                    <h2><font color="white">기업회원</font></h2>
                    
                    <a href="officejoin.jsp" class="btn btn-success" title="More">가입하기</a>
                </div>
            </div>
           
            </div>
        </div>
        
    </div>

</body>

<style>
.container {
	text-align: center;
}

.style_featured{
    padding: 20px 0;
    text-align: center;
}
.style_featured > div > div{
    padding: 10px;
    border: 1px solid transparent;
    border-radius: 4px;
    transition: 0.5s;
}
.style_featured > div:hover > div{
    margin-top: +19px;
    border: 1px solid rgb(153, 200, 250);
    box-shadow: rgba(0, 0, 0, 0.1) 0px 9px 9px 9px;
    background: rgba(153, 200, 250, 0.1);
    transition: 0.99s;
}
</style>
</html>