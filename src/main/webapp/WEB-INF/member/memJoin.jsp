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
  <script>
	  'use strict';
	  // 아이디와 닉네임 중복버튼을 클릭했는지를 확인하기위한 전역변수를 정의한다.(버튼클릭후에도 내용을 수정했다면 초기값은 0으로 셋팅해서 버튼을 누를수 있도록해야한다.)
	  let idCheckSw = 0;
	  
    function fCheck() {
    	// 폼 유효성 검사
    	let regMid = /^[a-z0-9_]{4,20}$/;
      let regPwd = /(?=.*[0-9a-zA-Z]).{4,24}/;
      let regName = /^[가-힣a-zA-Z]+$/;
      let regEmail =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
      let regTel = /\d{2,3}-\d{3,4}-\d{4}$/g;
      
      let submitFlag = 0;		// 전송체크버튼으로 값이 1이면 체크완료되어 전송처리한다.
	  
      // 유효성검사를 위해 폼안의 내용들을 모두 변수에 담는다.
	  	let mid = myform.mid.value;
	  	let pwd = myform.pwd.value;
	  	let name = myform.name.value;
	  	let email1 = myform.email1.value;
	  	let email2 = myform.email2.value;
	    let email = email1 + '@' + email2;
	    let tel1 = myform.tel1.value;
	    let tel2 = myform.tel2.value;
	    let tel3 = myform.tel3.value;
	  	let tel = tel1 + "-" + tel2 + "-" + tel3;
	  	
	  	
    	// 유효성 검사체크처리한다.(필수 입력필드는 꼭 처리해야 한다.)
    	if(!regMid.test(mid)) {
        alert("아이디는 영문 소문자와 숫자, 언더바(_)만 사용가능합니다.(길이는 4~20자리까지 허용)");
        myform.mid.focus();
        return false;
      }
      else if(!regName.test(name)) {
        alert("성명은 한글과 영문대소문자만 사용가능합니다.");
        myform.name.focus();
        return false;
      }
      else if(!regPwd.test(pwd)) {
        alert("비밀번호는 1개이상의 문자와 특수문자 조합의 6~24 자리로 작성해주세요.");
        myform.pwd.focus();
        return false;
      }
      else if(!regEmail.test(email)) {
        alert("이메일 형식에 맞지않습니다.");
        myform.email1.focus();
        return false;
      }
      else {
    	  submitFlag = 1;
      }
  
    	// 선택사항인 전화번호가 입력되어서 전송되었다면 전화번호형식을 체크해 준다.
      if(tel2 != "" || tel3 != "") {
	      if(!regTel.test(tel)) {
	        alert("전화번호 형식에 맞지않습니다.(000-0000-0000)");
	        myform.tel2.focus();
	        return false;
	      }
	      else {
	    	  submitFlag = 1;
	      }
      }
      else {	// 전화번호를 입력하지 않을시 DB에는 '010- - '의 형태로 저장하고자 한다.
    	  tel2 = " ";
    	  tel3 = " ";
    	  tel = tel1 + '-' + tel2 + '-' + tel3;
    	  submitFlag = 1;
      }
    	
    	// 전송전에 '주소'를 하나로 묶어서 전송처리 준비한다.
  		let postcode = myform.postcode.value + " ";
  		let roadAddress = myform.roadAddress.value + " ";
  		let detailAddress = myform.detailAddress.value + " ";
  		let extraAddress = myform.extraAddress.value + " ";
  		myform.address.value = postcode + "/" + roadAddress + "/" + detailAddress + "/" + extraAddress + "/";
    	
  		// 전송전에 모든 체크가 끝나서 submitFlag가 1이되면 서버로 전송한다.
    	if(submitFlag == 1) {
  			if(idCheckSw == 0) {
    			alert("아이디 중복체크버튼을 눌러주세요!");
    			document.getElementById("midBtn").focus();
    		}
    		else {
	  			// 묶여진 필드(email/tel)를 폼태그안에 hidden태그의 값으로 저장시켜준다.
	  			myform.email.value = email;
	  			myform.tel.value = tel;
	  			myform.hMid.value = myform.mid.value;
	  			alert("mid(:) : " + myform.mid.value);
	  			myform.submit();
    		}
    	}
    	else {
    		alert("회원가입에 실패했습니다.");
    	}
    }
    
 		// id 중복체크
    function idCheck() {
    	let mid = myform.mid.value;
    	let url = "${ctp}/memIdCheck.mem?mid="+mid;
    	
    	if(mid.trim() == "") {
    		alert("아이디를 입력하세요!");
    		myform.mid.focus();
    	}
    	else {
    		idCheckSw = 1;
    		window.open(url,"nWin","width=580px,height=250px");
    	}
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
	    overflow-y: auto;
		    
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
  </style>
</head>
<div class="hero">
<header id="masthead" role="banner">
  <div class="container">
   <div id="masthead-logo">
   	<p><a href="${ctp}/index.jsp"><img src="./images/logo.png" title="HOME"/></a></p>
   </div>
 </div>
</header>
</div>
<div class="form-body">
	<div class="row">
    <div class="form-holder">
      <div class="form-content">
        <div class="form-items">
          <h3>Sign Up</h3>
          <form name="myform" method="post" action="${ctp}/memJoinOk.mem" class="was-validated">
	        	<div class="col-md-12">
	             <input type="text" class="form-control" id="mid" name="mid" placeholder="ID" autofocus required>
	             <p><a style="text-decoration:none;" id="midBtn" href="javascript:idCheck()">ID Check✔</a></p>
	             <!-- <input type="text" name="mid" id="mid" /> -->
	          </div>
	        	<div class="col-md-12">
	             <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
	          </div>
	         	<div class="col-md-12">
	            <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password" required>
	         	</div>
	         	<div class="col-md-12 mt-3">
		          <label class="mb-3 mr-1" for="gender">Gender: </label>
		
		          <input type="radio" class="btn-check" name="gender" value="남자" checked>&nbsp;
		          <label class="btn btn-sm btn-outline-secondary" for="male" >Male</label>&nbsp;
		
		          <input type="radio" class="btn-check" name="gender" value="여자">&nbsp;
		          <label class="btn btn-sm btn-outline-secondary" for="female">Female</label>&nbsp;
	          </div>
          	<div class="col-md-12">
              <div class="input-group-append">
              <input type="text" id="email1" name="email1" placeholder="E-mail Address" class="form-control" required>
          		<div class="input-group mb-3">&nbsp;
              	<select name="email2" class="custom-select form-control">
							    <option value="naver.com" selected>naver.com</option>
							    <option value="daum.net">daum.net</option>
							    <option value="gmail.com">gmail.com</option>
							    <option value="hotmail.com">hotmail.com</option>
							    <option value="nate.com">nate.com</option>
							    <option value="yahoo.com">yahoo.com</option>
					  		</select>
              </div>
         		</div>
          </div>
					<div class="col-md-12">
			      <p style="color:white; font-height:10px; margin:0 0 10px;">birthday</p>
			      <input type="date" name="birthday" value="<%=java.time.LocalDate.now()%>" class="form-control"/>
			    </div>
			    <div class="col-md-12">
			      <div class="input-group mb-3">
				      <div class="input-group-prepend">
						      <select name="tel1" class="custom-select form-control">
								    <option value="010" selected>010</option>
								    <option value="02">서울</option>
								    <option value="031">경기</option>
								    <option value="032">인천</option>
								    <option value="033">강원</option>
								    <option value="041">충남</option>
								    <option value="042">대전</option>
								    <option value="043">충북</option>
								    <option value="044">세종</option>
						        <option value="051">부산</option>
						        <option value="052">울산</option>
						        <option value="053">대구</option>
						        <option value="054">경북</option>
						        <option value="055">경남</option>
						        <option value="061">전북</option>
						        <option value="062">광주</option>
						        <option value="063">전북</option>
						        <option value="064">제주</option>
								  </select>&nbsp;
					      <input type="text" name="tel2" maxlength=4 class="form-control" />&nbsp;
					      <input type="text" name="tel3" maxlength=4 class="form-control"/>&nbsp;
				      </div>
				      <p style="color:white; margin:5px 0 -20px;">number check</p>
				    </div> 
			    </div>
			    <div class="col-md-12">
						<input type="hidden" name="address" id="address">
						<div class="input-group mb-1">
							<div class="input-group-append">
								<input type="text" name="postcode" id="sample6_postcode" placeholder="우편번호" class="form-control">&nbsp;
								<input type="button" onclick="sample6_execDaumPostcode()" class="btn btn-light btn-sm" value="내 주소 찾기">
							</div>
						</div>
						<input type="text" name="roadAddress" id="sample6_address" size="50" placeholder="주소" class="form-control">
						<div class="input-group">
							<div class="input-group-append">
							  <input type="text" name="detailAddress" id="sample6_detailAddress" placeholder="상세주소" class="form-control"> &nbsp;&nbsp;
								<input type="text" name="extraAddress" id="sample6_extraAddress" placeholder="참고항목" class="form-control">
							</div>
						</div>
			    </div>
         	<div class="col-md-12">
          	<select class="form-select mt-3 form-control" id="job" name="job">
	            <option selected disabled value="">직업</option>
	            <option>학생</option>
	            <option>직장인</option>
	            <option>공무원</option>
	            <option>자영업</option>
	            <option>주부</option>
	            <option>군인</option>
	            <option>기타</option>
           </select>
         	</div>
					<br/>
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
            <label class="form-check-label"> 개인정보 수집 및 이용, 개인정보 제3자 제공 동의에 모두 동의합니다.</label>
           <div class="invalid-feedback">Please confirm that the entered data are all correct!</div>
          </div>
    

          <div class="form-button mt-3">
          
              <button type="button" class="btn btn-primary" onclick="fCheck()">Register</button>
              <!-- <button type="submit" class="btn btn-primary">Register</button> -->
              <!-- <input type="submit" value="Register"/> -->
              <button type="reset" style="float:right;" class="btn btn-primary">Reset</button>
              <!-- <input type="text" class="form-control" id="mid" name="mid" placeholder="ID" autofocus required> -->
              <input type="hidden" name="tel"/>
    					<input type="hidden" name="email"/>
    					<input type="hidden" name="hMid"/>
          </div>
    		</form>
      </div>
    </div>
  </div>
  </div>
  </div>
</body>
</html>