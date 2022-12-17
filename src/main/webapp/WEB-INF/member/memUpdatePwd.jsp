<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>IU - jigeum jieun - SIGN UP</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="${ctp}/js/woo.js"></script>
  <link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script type="text/javascript">
  'use strict';
  
	function pCheck() {
		let regPwd = /(?=.*[0-9a-zA-Z]).{4,24}/;
		
		let oldPwd = document.getElementById("oldPwd").value;
		let newPwd = document.getElementById("newPwd").value;
		let rePwd = document.getElementById("rePwd").value;
		
		if(oldPwd.trim() == "") {
			alert("기존 비밀번호를 입력하세요.");
			document.getElementById("oldPwd").focus();
		}
		else if(newPwd.trim() == "") {
			alert("새 비밀번호를 입력하세요.");
			document.getElementById("newPwd").focus();
		}
		else if(rePwd.trim() == "") {
			alert("새 비밀번호를 한번 더 입력하세요.");
			document.getElementById("rePwd").focus();
		}
		else if(!regPwd.test(newPwd)) {
      alert("비밀번호는 6~20 자리로 작성해주세요.");
      myform.newPwd.focus();
	  }
		else if(newPwd != rePwd) {
			alert("새 비밀번호와 동일한 비밀번호를 입력해주세요.")
			myform.rePwd.focus();
		}
		else if(newPwd == oldPwd) {
			alert("기존 비밀번호와 새 비밀번호가 동일합니다.")
			myform.newPwd.focus();
		}
		else {
			/* myform.submit(); */
			res = 1;
		}
			myform.oldPwd.value = oldPwd;
			myform.newPwd.value = newPwd;
		
			let query = {
					oldPwd : '${oldPwd}',
					newPwd : '${newPwd}'
			}
  			
  		
  		$.ajax({
  			type : "post",
  			url  : "${ctp}/memUpdatePwdOk.mem",
  			data : query,
  			success:function(res) {
  				if(res == 1) {
  					alert('비밀번호 수정이 완료되었습니다.');
  					/* self.opener = self;
  					window.close();
  					window.open('${ctp}/memMyPage.mem', 'update', 'width=550, height=800, left=650, top=100'); */
  					//window.open('${ctp}/memMyPage.mem', 'update', 'width=550, height=800, left=650, top=100').opener.parent.close();
  				}
  			},
  			error : function() {
  				alert("전송오류");
  			}
  		});
    }
	
    function fCheck3() { window.open("${ctp}/memMyPage.mem", "mypage", "width=550, height=800, left=650, top=100").opener.parent.close();
    
    }
  </script>
  <style>
  	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700;900&display=swap');
		*, body {
	    font-family: 'Poppins', sans-serif;
	    font-weight: 400;
	    -webkit-font-smoothing: antialiased;
	    text-rendering: optimizeLegibility;
	    -moz-osx-font-smoothing: grayscale;
		    
		}
		
		html, body {
	    height: 100%;
	    background-color: #152733;
	    overflow: hidden;
		    
		}
		
		html, body::before {
			content: "";
      background: url(https://cdn.pixabay.com/photo/2020/06/28/00/04/chicago-5347435_960_720.jpg);
      background-size: cover;
      opacity: 0.5;
      position: absolute;
      top: 0px;
      left: 0px;
      right: 0px;
      bottom: 0px;
	    background-image:url('./images/iuiuiu.jpg');
		}
		
		
		.form-holder {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      min-height: 100vh;
		      
		}
		
		.form-holder .form-content {
	    position: relative;
	    text-align: center;
	    display: -webkit-box;
	    display: -moz-box;
	    display: -ms-flexbox;
	    display: -webkit-flex;
	    display: flex;
	    -webkit-justify-content: center;
	    justify-content: center;
	    -webkit-align-items: center;
	    align-items: center;
	    padding: 60px;
		    
		}
		
		.form-content .form-items {
	    border: 3px solid #fff;
	    padding: 40px;
	    display: inline-block;
	    width: 100%;
	    min-width: 540px;
	    -webkit-border-radius: 10px;
	    -moz-border-radius: 10px;
	    border-radius: 10px;
	    text-align: left;
	    -webkit-transition: all 0.4s ease;
	    transition: all 0.4s ease;
      margin-left: 565px;
	    margin-top: -190px;
	    height: 350px;

		}
		
		.form-content h3 {
	    color: #fff;
	    text-align: center;
	    font-size: 28px;
	    font-weight: 600;
	    margin-bottom: 5px;
		}
		
		.form-content h3.form-title {
	    margin-bottom: 30px;
		}
		
		.form-content p {
	    color: #fff;
	    text-align: right;
	    font-weight: 300;
	    line-height: 20px;
	    margin-top: 3px;
		}
		
		.form-content label, .was-validated .form-check-input:invalid~.form-check-label, .was-validated .form-check-input:valid~.form-check-label{
	    color: #fff;
		}
		
		.form-content input[type=text], .form-content input[type=password], .form-content input[type=email], .form-content select {
	    padding: 9px 20px;
	    text-align: left;
	    border: 0;
	    outline: 0;
	    border-radius: 6px;
	    background-color: #fff;
	    font-size: 15px;
	    font-weight: 300;
	    color: #333333;
	    -webkit-transition: all 0.3s ease;
	    transition: all 0.3s ease;
	    margin-top: 16px;
		}
		
		
		.btn-primary{
	    background-color: #003399;
	    outline: none;
	    border: 0px;
     	box-shadow: none;
		}
		.btn-light{
	    height:35px;
	    width:295px;
	    margin-top: 16px;
	    border-radius: 6px;
		}
		
		.btn-primary:hover, .btn-primary:focus, .btn-primary:active{
	    background-color: #495056;
	    outline: none !important;
	    border: none !important;
     box-shadow: none;
		}
		
		.form-content textarea {
	    position: static !important;
	    width: 100%;
	    padding: 8px 20px;
	    border-radius: 6px;
	    text-align: left;
	    background-color: #fff;
	    border: 0;
	    font-size: 15px;
	    font-weight: 300;
	    color: #8D8D8D;
	    outline: none;
	    resize: none;
	    height: 120px;
	    -webkit-transition: none;
	    transition: none;
	    margin-bottom: 14px;
		}
		
		.form-content textarea:hover, .form-content textarea:focus {
	    border: 0;
	    background-color: #ebeff8;
	    color: #8D8D8D;
		}
		
		.mv-up{
	    margin-top: -9px !important;
	    margin-bottom: 8px !important;
		}
		a {
			text-decoration:none;
			position: relative;
		}
		a:hover {
			color:gray;
		}
		/* 네비 */
		#masthead-logo{
			display: block;
			margin: 30px auto 10px auto;
			width: 142px;
			height: 47px;
			background-size: cover;
		}
		#masthead.is-active #masthead-logo img {
			display: none;
			
		}
		.input-group {
	    position: relative;
	    display: -ms-flexbox;
	    display: block;
	    -ms-flex-wrap: wrap;
	    flex-wrap: wrap;
	    -ms-flex-align: stretch;
	    align-items: stretch;
	    width: 100%;
		}
		.input-group>.custom-file, .input-group>.custom-select, .input-group>.form-control, .input-group>.form-control-plaintext {
	    position: relative;
	    -ms-flex: 1 1 auto;
	    flex: 1 1 auto;
	    width: 96%;
	    min-width: 0;
	    margin-bottom: 0;
		}
		
		.input-group>.input-group-append>.btn, .input-group>.input-group-append>.input-group-text, .input-group>.input-group-prepend:first-child>.btn:not(:first-child), .input-group>.input-group-prepend:first-child>.input-group-text:not(:first-child), .input-group>.input-group-prepend:not(:first-child)>.btn, .input-group>.input-group-prepend:not(:first-child)>.input-group-text {
	    border-radius: 6px;
	    color:#aaa;
		}
		/* .input-group-append {
    	margin
		} */
		.form-control.is-valid, .was-validated .form-control:valid {
	    border-color: #28a745;
	    padding-right: calc(1em + 0.75rem);
	    background-image: url(data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8' viewBox='0 0 8 8'%3e%3cpath fill='%2328a745' d='M2.3 6.73L.6 4.53c-.4-1.04.46-1.4 1.1-.8l1.1 1.4 3.4-3.8c.6-.63 1.6-.27 1.2.7l-4 4.6c-.43.5-.8.4-1.1.1z'/%3e%3c/svg%3e);
	    background-repeat: no-repeat;
	    background-position: right calc(0.375em + 0.1875rem) center;
	    background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
    }
  </style>
</head>
<div class="hero">
<header id="masthead" role="banner">
  <div class="container">
   <div id="masthead-logo">
   </div>
 </div>
</header>
</div>
<div class="form-body">
	<div class="row">
    <div class="form-holder">
      <div class="form-content">
        <div class="form-items">
          <h3>EDIT PASSWORD</h3>
          <form name="myform" method="post" action="${ctp}/memUpdatePwdOk.mem" class="was-validated">
	        	<div class="col-md-12">
	             <input type="password" class="form-control" id="oldPwd" name="oldPwd" placeholder="oldPwd" autofocus required>
	          </div>
	        	<div class="col-md-12">
	             <input type="password" class="form-control" id="newPwd" name="newPwd" placeholder="newPwd"  required>
	          </div>
	        	<div class="col-md-12">
	             <input type="password" class="form-control" id="rePwd" name="rePwd" placeholder="rePwd"  required>
	          </div>

          <div class="form-button mt-3">
          
              <button type="submit" id="send" class="btn btn-primary" onclick="pCheck()">Edit</button>
              <button type="button"  class="btn btn-primary" style="float:right;"onclick="fCheck3()">Close</button>
          </div>
    		</form>
      </div>
    </div>
  </div>
  </div>
  </div>
</body>
</html>