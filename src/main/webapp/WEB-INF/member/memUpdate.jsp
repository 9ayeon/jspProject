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
	  
    function fCheck() {
    	// 폼 유효성 검사
      let regName = /^[가-힣a-zA-Z]+$/;
      let regEmail =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
      let regTel = /\d{2,3}-\d{3,4}-\d{4}$/g;
      
      let submitFlag = 0;		// 전송체크버튼으로 값이 1이면 체크완료되어 전송처리한다.
	  
      // 유효성검사를 위해 폼안의 내용들을 모두 변수에 담는다.
	  	let name = myform.name.value;
	  	let email1 = myform.email1.value;
	  	let email2 = myform.email2.value;
	    let email = email1 + '@' + email2;
	    let tel1 = myform.tel1.value;
	    let tel2 = myform.tel2.value;
	    let tel3 = myform.tel3.value;
	  	let tel = tel1 + "-" + tel2 + "-" + tel3;
	  	
	  	
    	// 유효성 검사체크처리한다.(필수 입력필드는 꼭 처리해야 한다.)
      if(!regName.test(name)) {
        alert("성명은 한글과 영문대소문자만 사용가능합니다.");
        myform.name.focus();
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
    	
			myform.email.value = email;
			myform.tel.value = tel;
			
			/* document.myform.action = '${pageContext.request.contextPath}';
			document.myform.submit();
			myform.submit();
			window.open(" *///about:blank","_self").close();
			/* let address = myform.address.value;
			let tel = myform.tel.value;
			let email = myform.email.value; */
			let query = {
	  				name  : '${vo.name}',
	  				gender  : '${vo.gender}',
	  				email  : '${email}',
	  				birthday  : '${birthday}',
	  				tel  : '${tel}',
	  				address  : '${address}',
	  				job  : '${vo.job}'
			}
  			
  		
  		$.ajax({
  			type : "post",
  			url  : "${ctp}/memUpdateOk.mem",
  			data : query,
  			success:function(submitFlag) {
  				if(submitFlag == 1) {
  					alert('정보 수정이 완료되었습니다.');
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
    function fCheck2() { window.open("${ctp}/memMyPage.mem", "mypage", "width=550, height=800, left=650, top=100").opener.parent.close();
    
    }
/*   		// 전송전에 모든 체크가 끝나서 submitFlag가 1이되면 서버로 전송한다.
    	if(submitFlag == 1) {
  			// 묶여진 필드(email/tel)를 폼태그안에 hidden태그의 값으로 저장시켜준다.
  			
    	}
    	else {
    		alert("정보수정에 실패했습니다.");
    	}
    }
    // 팝업오픈하여 폼데이터 Post 전송
		function openPop(){
			
			
			var pop_title = "popupOpener" ;
			
			window.open("", pop_title) ;
			
			var frmData = document.frmData ;
			frmData.target = pop_title ;
			frmData.action = "popup.jsp" ;
			
			frmData.submit() ;
			
			
			
		} */
/*     $(function() {

        $("#send").click( function() {

             $('#send_form').submit();
             setTimeout(function() {   
                 window.close();

              }, 100);

          });

    }); */
    
   // function memUpdatePwd() { window.open("${ctp}/memUpdatePwd.mem","a","width=700, height=1000, left=650, top=100").opener.parent.close(); }
    
	function editPwd() {
		window.open('${ctp}/memUpdatePwd.mem', 'updatepwd', 'width=600, height=388, left=650, top=314').opener.parent.close();
		//opener.window.close();
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
	    height: 880px;

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
          <h3>EDIT PROFILE</h3>
          <form name="myform" id="send_form" method="post" action="${ctp}/memUpdateOk.mem" class="was-validated">
	        	<div class="col-md-12">
	             <input type="text" class="form-control" value="${sMid}" id="mid" name="mid" placeholder="ID" autofocus required>
	          </div>
	        	<div class="col-md-12">
	             <input type="text" value="${vo.name}" class="form-control" id="name" name="name" placeholder="Name" required>
	          </div>
	         	<div class="col-md-12">
	            <input type="button" class="btn btn-light" style="width: 424px;" value="Edit pwd" onclick="editPwd()">
	         	</div>
	         	<div class="col-md-12 mt-3">
		          <label class="mb-3 mr-1" for="gender">Gender: </label>
		
		          <input type="radio" class="btn-check" name="gender" value="남자" <c:if test="${vo.gender=='남자'}">checked</c:if>>&nbsp;
		          <label class="btn btn-sm btn-outline-secondary" for="male" >Male</label>&nbsp;
		
		          <input type="radio" class="btn-check" name="gender" value="여자" <c:if test="${vo.gender=='여자'}">checked</c:if>>&nbsp;
		          <label class="btn btn-sm btn-outline-secondary" for="female">Female</label>&nbsp;
	          </div>
          	<div class="col-md-12">
              <div class="input-group-append">
              <input type="text" value="${email1}" id="email1" name="email1" placeholder="E-mail Address" class="form-control" required>
          		<div class="input-group mb-3">&nbsp;
              	<select name="email2" class="custom-select form-control">
							    <option value="naver.com" <c:if test="${email2=='naver.com'}">selected</c:if>>naver.com</option>
							    <option value="daum.net" <c:if test="${email2=='daum.net'}">selected</c:if>>daum.net</option>
							    <option value="gmail.com" <c:if test="${email2=='gmail.com'}">selected</c:if>>gmail.com</option>
							    <option value="hotmail.com" <c:if test="${email2=='hotmail.com'}">selected</c:if>>hotmail.com</option>
							    <option value="nate.com" <c:if test="${email2=='nate.com'}">selected</c:if>>nate.com</option>
							    <option value="yahoo.com" <c:if test="${email2=='yahoo.com'}">selected</c:if>>yahoo.com</option>
					  		</select>
              </div>
         		</div>
          </div>
					<div class="col-md-12">
			      <p style="color:white; font-height:10px; margin:0 0 10px;">birthday</p>
			      <input type="date" name="birthday" value="${birthday}" class="form-control"/>
			    </div>
			    <div class="col-md-12">
			      <div class="input-group mb-3">
				      <div class="input-group-prepend">
						      <select name="tel1" class="custom-select form-control">
								    <option value="010" ${tel1=="010" ? "selected" : ""}>010</option>
								    <option value="02" ${tel1=="02" ? "selected" : ""}>서울</option>
								    <option value="031" ${tel1=="031" ? "selected" : ""}>경기</option>
								    <option value="032" ${tel1=="032" ? "selected" : ""}>인천</option>
								    <option value="033" ${tel1=="033" ? "selected" : ""}>강원</option>
								    <option value="041" ${tel1=="041" ? "selected" : ""}>충남</option>
								    <option value="042" ${tel1=="042" ? "selected" : ""}>대전</option>
								    <option value="043" ${tel1=="043" ? "selected" : ""}>충북</option>
								    <option value="044" ${tel1=="044" ? "selected" : ""}>세종</option>
						        <option value="051" ${tel1=="051" ? "selected" : ""}>부산</option>
						        <option value="052" ${tel1=="052" ? "selected" : ""}>울산</option>
						        <option value="053" ${tel1=="053" ? "selected" : ""}>대구</option>
						        <option value="054" ${tel1=="054" ? "selected" : ""}>경북</option>
						        <option value="055" ${tel1=="055" ? "selected" : ""}>경남</option>
						        <option value="061" ${tel1=="061" ? "selected" : ""}>전북</option>
						        <option value="062" ${tel1=="062" ? "selected" : ""}>광주</option>
						        <option value="063" ${tel1=="063" ? "selected" : ""}>전북</option>
						        <option value="064" ${tel1=="064" ? "selected" : ""}>제주</option>
								  </select>&nbsp;
					      <input type="text" name="tel2" value="${tel2}" maxlength=4 class="form-control" />&nbsp;
					      <input type="text" name="tel3" value="${tel3}" maxlength=4 class="form-control"/>&nbsp;
				      </div>
				      <p style="color:white; margin:5px 0 -20px;">number check</p>
				    </div> 
			    </div>
			    <div class="col-md-12">
						<input type="hidden" name="address" id="address">
						<div class="input-group mb-1">
							<div class="input-group-append">
								<input type="text" name="postcode" value="${postcode}" id="sample6_postcode" placeholder="우편번호" class="form-control">&nbsp;
								<input type="button" onclick="sample6_execDaumPostcode()" class="btn btn-light btn-sm" value="내 주소 찾기">
							</div>
						</div>
						<input type="text" name="roadAddress" value="${roadAddress}" id="sample6_address" size="50" placeholder="주소" class="form-control">
						<div class="input-group">
							<div class="input-group-append">
							  <input type="text" name="detailAddress" value="${detailAddress}" id="sample6_detailAddress" placeholder="상세주소" class="form-control"> &nbsp;&nbsp;
								<input type="text" name="extraAddress" value="${extraAddress}" id="sample6_extraAddress" placeholder="참고항목" class="form-control">
							</div>
						</div>
			    </div>
         	<div class="col-md-12">
          	<select class="form-select mt-3 form-control" id="job" name="job">
	            <option selected disabled value="">직업</option>
	            <option ${vo.job=="학생" ? "selected" : ""}>학생</option>
	            <option ${vo.job=="직장인" ? "selected" : ""}>직장인</option>
	            <option ${vo.job=="공무원" ? "selected" : ""}>공무원</option>
	            <option ${vo.job=="자영업" ? "selected" : ""}>자영업</option>
	            <option ${vo.job=="주부" ? "selected" : ""}>주부</option>
	            <option ${vo.job=="군인" ? "selected" : ""}>군인</option>
	            <option ${vo.job=="기타" ? "selected" : ""}>기타</option>
           </select>
         	</div>
					<br/>
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
            <label class="form-check-label"> 정보 수정에 동의합니다.</label>
           <div class="invalid-feedback">Please confirm that the entered data are all correct!</div>
          </div>
    

          <div class="form-button mt-3">
          
              <button type="submit" id="send" class="btn btn-primary" onclick="fCheck()">Edit</button>
              <button type="button"  class="btn btn-primary" style="float:right;"onclick="fCheck2()">Close</button>
              <!-- <button type="submit" class="btn btn-primary">Register</button> -->
              <!-- <input type="submit" value="Register"/> -->
              <!-- <button type="button" style="float:right;" class="btn btn-primary" onclick="self.close();">Close</button> -->
              <!-- <input type="text" class="form-control" id="mid" name="mid" placeholder="ID" autofocus required> -->
              <input type="hidden" name="tel"/>
    					<input type="hidden" name="email"/>
          </div>
    		</form>
      </div>
    </div>
  </div>
  </div>
  </div>
  
  
</body>
</html>