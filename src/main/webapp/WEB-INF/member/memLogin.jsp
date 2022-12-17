<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>IU - jigeum jieun - LOGIN</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <style>
  
	body{
	  padding:0;
	  margin:0;
	  
	}
	.vid-container{
	  position:relative;
	  height:100vh;
	  overflow:hidden;
	}
	.bgvid{
	  position:absolute;
	  left:0;
	  top:0;
	  width:100vw;
	}
	.inner-container{
	  width:400px;
	  height:500px;
	  position:absolute;
	  top:calc(50vh - 200px);
	  left:calc(50vw - 200px);
	  overflow:hidden;
	}
	.bgvid.inner{
	  top:calc(-50vh + 200px);
	  left:calc(-50vw + 200px);
	  filter: url("data:image/svg+xml;utf9,<svg%20version='1.1'%20xmlns='http://www.w3.org/2000/svg'><filter%20id='blur'><feGaussianBlur%20stdDeviation='10'%20/></filter></svg>#blur");
	  -webkit-filter:blur(10px);
	  -ms-filter: blur(10px);
	  -o-filter: blur(10px);
	  filter:blur(10px);
	}
	.box{
	  position:absolute;
	  height:100%;
	  width:100%;
	  font-family:Helvetica;
	  color:#fff;
	  background:rgba(0,0,0,0.13);
	  padding:30px 0px;
	}
	.box h1{
	  text-align:center;
	  margin:30px 0;
	  font-size:30px;
	}
	.box input{
	  display:block;
	  width:300px;
	  margin:20px auto;
	  padding:15px;
	  background:rgba(0,0,0,0.2);
	  color:#fff;
	  border:0;
	}
	.box input:focus,.box input:active,.box button:focus,.box button:active{
	  outline:none;
	}
	.box button{
	  background:#ccc;
	  border:0;
	  color:#fff;
	  padding:10px;
	  font-size:20px;
	  width:330px;
	  margin:20px auto;
	  display:block;
	  cursor:pointer;
	}
	.box button:active{
	  background:#fff;
	  color:#aaa;
	}
	.box p{
	  font-size:14px;
	  text-align:center;
	}
	.box p a:hover{
	  color:white;
	  text-decoration:none;
	}
	/* .box p span{
	  cursor:pointer;
	  color:#666;
	} */
 
  </style>
</head>
<body>
<jsp:include page="/include/nav.jsp"></jsp:include>
<div class="vid-container">
  <video class="bgvid" autoplay="autoplay" muted="muted" preload="auto" loop>
      <source src="./video/iulet.mp4" type="video/mp4">
  </video>
  <div class="inner-container">
    <video class="bgvid inner" autoplay="autoplay" muted="muted" preload="auto" loop>
      <source src="./video/iulet.mp4" type="video/mp4">
    </video>
    <div class="box">
    <form name="myform" method="post" action="${ctp}/memLoginOk.mem" class="was-validated">
	      <h1>Login</h1>
	      <input type="text" value="${mid}" id="mid" name="mid" placeholder="ID" autofocus required/>
	      <input type="password" id="pwd" name="pwd" placeholder="Password" required/>
			  <p><label style="margin-top:-20px;"><input type="checkbox" id="idCheck" name="idCheck"/>아이디 저장</label></p>
	      <button type="submit">Login</button>
	      <p><a href="#" onclick="location.href='${ctp}/memJoin.mem';">회원이 아니신가요?</a></p>
      </form>
    </div>
  </div>
</div>
</body>
</html>