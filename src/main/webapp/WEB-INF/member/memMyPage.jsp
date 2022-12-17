<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>IU - jigeum jieun - MY PAGE</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
	<script src="//cdnjs.cloudflare.com/ajax/libs/animejs/2.2.0/anime.js"></script>
</head>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Stylish&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Hahmlet&display=swap');		
		* {
		  box-sizing: border-box;
		  padding: 0;
		  margin: 0;
		  -webkit-background-size : cover;
			-moz-background-size : cover;
			-o-background-size: cover;
			background-size: cover;
			font-family: 'Stylish', sans-serif;
		  font-size: 20px;
		}
		body {
			height: 799px;
		  color: #333;
		  /* min-height: 100vh; */
		  /* add a circle with a linear gradient in the center of the screen, above another linear gradient */
		  /* background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><linearGradient id="gradient" x1="0" y1="1" x2="1" y2="0"><stop offset="0" stop-color="%23FBDBE3"></stop><stop offset="1" stop-color="%23F39BAE"></stop></linearGradient><circle cx="50" cy="50" r="50" fill="url(%23gradient)"></circle></svg>'),
		    linear-gradient(45deg, #ffecf0, #f5c3cf); */
		  /* background-image:url('./images/iusujung.png'); */
		 /*  background-position: 50%, 0%; */
		  /* background-size: 25%, 100%; */
		  background-repeat: no-repeat;
		  background-color: #c4dadd;
		}
		
		/* for the phone UI specify a tall, thin, rounded rectangle */
		div.phone {
		  max-width: 280px;
		  margin:63px 130px auto;
		  border-radius: 15px;
		  background: #fffffd;
		  /* display the content in a column */
		  display: flex;
		  flex-direction: column;
		  /* add multiple shadows to make a solid rounded border with a small blue-ish overlay and a softer shadow */
      box-shadow: 0 0 0 0.02rem #ddf, 0 0 1rem 0.1rem #f4f4ff, 
      0 0 0 0.8rem #fcfcff, 0 0 0.8rem 0.5rem #f00;
      background-image:url('./images/iu2.jpg');
		}
		
		/* display the navigation's items in a row */
		.phone__nav {
		  display: flex;
		  align-items: center;
		  padding: 0.5rem 1rem;
		  margin-bottom: 0.5rem;
		}
		.phone__nav span {
		  flex-grow: 1;
		  font-weight: 600;
		  font-size: 0.7rem;
		}
		.phone__nav svg {
		  margin: 0 0.1rem;
		  width: 0.8rem;
		  height: 0.8rem;
		}
		
		.phone__state {
		  padding: 0 1rem;
		  height: 300px;
		}
		.phone__state h2 {
		  color: #333;
		  font-family: 'Hahmlet', serif;
		  font-size: 1.8rem;
		}
		.phone__state p {
		  font-size: 1.4rem;
		  margin-top: -14px;
		}
		.phone__state a {
		  color:white;
		  font-size: 12px;
		  float: right;
		  margin-top: 243px;
		  font-family: 'Hahmlet', serif;
		}
		.phone__state a:hover {
		  color:#6a6a6a;
		  text-decoration:none;
		}
		
		/* display the drink in the center of the phone */
		.phone__drink {
		  align-self: center;
		  width: 70%;
		  height: auto;
		  margin: 1.5rem 0 0;
		}
		
		/* display the ingredients in a non-wrapping row */
		.phone__ingredients {
		  display: flex;
		  align-items: center;
		  margin: 0 0.5rem;
		  /* allow for horizontal scroll */
		  overflow-x: auto;
		}
		/* visually hide the scrollbar */
		.phone__ingredients::-webkit-scrollbar {
		  opacity: 0;
		}
		/* prevent the buttons from shrinking */
		.phone__ingredients button {
		  margin: 0.5rem;
		  flex-shrink: 0;
		  border: none;
		  background: none;
		  position: relative;
		  font-family: inherit;
		  /* display the svg and span atop one another */
		  display: flex;
		  flex-direction: column;
		  align-items: center;
		}
		.phone__ingredients button svg {
		  width: 78px;
		  height: 78px;
		  display: block;
		  filter: drop-shadow(0 0 10px hsla(0, 0%, 0%, 0.05));
		}
		/* have the span overlap on the svg */
		.phone__ingredients button span {
		  position: relative;
		  border-radius: 20px;
		  background: #ff4966;
		  color: #fff;
		  padding: 0.25rem 0.75rem;
		  font-size: 0.9rem;
		  margin-top: -0.5rem;
		}
		/* on click darken the background color of the span element through an overlapping pseudo element */
		.phone__ingredients button span:before {
		  position: absolute;
		  content: "";
		  top: 50%;
		  left: 50%;
		  width: 100%;
		  height: 100%;
		  border-radius: inherit;
		  background: #000;
		  opacity: 0;
		  transform: translate(-50%, -50%) scale(0);
		  transition-property: opacity, transform;
		  transition-duration: 0.1s;
		  transition-timing-function: ease-out;
		}
		.phone__ingredients button:active span:before {
		  opacity: 0.2;
		  transform: translate(-50%, -50%) scale(1);
		}
		
		/* display the receipt on a completely white background */
		.phone__order {
		  display: flex;
		  background: #fff;
		  margin: 0.5rem 0.75rem 0.75rem;
		  padding: 0.75rem 1rem;
		  border-radius: 15px;
		  box-shadow: 0 1px 15px -2px #f5c3cf;
		  min-height: 75px;
		}
		/* have the heading and list stretch to occupy the available width */
		.phone__order .order--list {
		  flex-grow: 1;
		}
		.phone__order .order--list h3 {
		  font-size: 0.9rem;
		  color: #6d8e92;
		  text-transform: uppercase;
		  margin-bottom: 0.1rem;
		  font-family: 'Hahmlet', serif;
		}
		/* remove the bullet point from the unordered list */
		.phone__order .order--list ul {
		  list-style: none;
		  text-transform: capitalize;
		  line-height: 1.5;
		  
		}
		.phone__order .order--list li {
		  font-family: 'Hahmlet', serif;
		  font-size: 1.3rem;
		  margin-top: 5px;
		}
		.phone__order .order--list li a{
		  font-family: 'Hahmlet', serif;
		  font-size: 1.3rem;
		  margin-top: 5px;
		}
		
		/* highlight the button with the accent color
		replicate the active state created for the ingredients' span
		! enable this state alongside full opacity only when a class is added
		this to highlight when the button is clickable
		*/
		.phone__order button {
		  align-self: center;
		  background: #6d8e92;
		  border: none;
		  color: #fff;
		  width: 30px;
		  height: 30px;
		  padding: 0.3rem;
		  border-radius: 50%;
		  opacity: 0.5;
		  cursor: grab;
		  transition: opacity 0.15s ease-out;
		}
		.phone__order button svg {
		  display: block;
		  width: 100%;
		  height: 100%;
		}
		.phone__order.complete button {
		  opacity: 1;
		  cursor: pointer;
		}
		b, strong {
		    font-weight: bolder;
		    position: relative;
		    top: -11px;
		}
		
		
html.modal-active,
body.modal-active {
  overflow: hidden;
}

#modal-container {
  position: fixed;
  display: table;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  transform: scale(0);
  z-index: 1;
}
#modal-container.one {
  transform: scaleY(0.01) scaleX(0);
  animation: unfoldIn 1s cubic-bezier(0.165, 0.84, 0.44, 1) forwards;
}
#modal-container.one .modal-background .modal {
  transform: scale(0);
  animation: zoomIn 0.5s 0.8s cubic-bezier(0.165, 0.84, 0.44, 1) forwards;
}
#modal-container.one.out {
  transform: scale(1);
  animation: unfoldOut 1s 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) forwards;
}
#modal-container.one.out .modal-background .modal {
  animation: zoomOut 0.5s cubic-bezier(0.165, 0.84, 0.44, 1) forwards;
}
</style>
<script>
'use strict';

function dCheck() {
		let ans = confirm("회원을 탈퇴하시겠습니까?");
		if(!ans) return false; 
		let ans2 = confirm("회원을 정말로 탈퇴하시겠습니까?\n탈퇴 후 1개월간 같은 아이디로 가입하실 수 없습니다.");
		if(!ans2) return false; 
		let ans3 = confirm("회원을 정말정말정말정말로 삭제하시겠습니까?\n진짜요?????");
		if(ans3)location.href="${ctp}/memDelete.mem";
		self.close();
		opener.location.href="${ctp}/memLogout.mem";
		//opener.location.reload(true); 이건 그냥리로드,로그아웃이안됨.
		//location.reload(true);
		//loaction.assign("${ctp}/index.jsp");
		//location.reload();
		
/* 	 	$.ajax({
			type : "post",
			url  : "${ctp}/memDelete.mem", 
			data : {mid : mid}, 
			success:function(res) {
				if(res == "1") {
					alert("회원 탈퇴 되었습니다.");
					location.href="${ctp}/memLogin.mem";
				}
				else {
					alert("회원 탈퇴에 실패했습니다~!!!!");
				}
			},
			error : function() {
				alert("전송오류");
			}
		}); */
	}

/*-------------*/
	//카운트다운할 날짜를 설정합니다.
	var countDownDate = new Date("September 18, 2008 00:00:00").getTime();

	// 1초마다 카운트 다운 업데이트
	var x = setInterval(function() {

  // 오늘 날짜와 시간 가져오기
  var now = new Date().getTime();
    
  // 현재 날짜와 카운트 다운 날짜 -
  var distance = now - countDownDate;
    
  // 일, 시, 분, 초에 대한 시간 계산
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // id="strongg"인 요소에 결과 출력
  document.getElementById("strongg").innerHTML = days + "일 " + hours + "시간 "
  + minutes + "분 " + seconds + "초 ";
    
  // 카운트다운이 끝나면 남길 텍스트
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("strongg").innerHTML = "x";
	  }
	}, 1000);
	
	// 모달
	function modalView() {
		$("#myModal").on("show.bs.modal", function(e){
		});
	}
	
	function editProfile() {
		window.open('${ctp}/memUpdate.mem', 'update', 'width=600, height=950, left=650, top=22').opener.parent.close();
		//opener.window.close();
	}
	
</script>
<body>
<input type="BUTTON" class="btn btn-light" style="border: none;
background: fixed;" value="❌" onclick="self.close()">
<%-- <jsp:include page="/include/nav.jsp"></jsp:include> --%>
<!-- graphics used in the project -->
<svg style="display: none;" viewBox="0 0 100 100" width="50" height="50">
  <!-- icons for the navigation bar -->
  <symbol id="signal" viewBox="0 0 100 100">
    <g transform="translate(2.5 0)">
      <rect x="0" y="80" width="20" height="20" fill="currentColor">
      </rect>
      <g transform="translate(25 0)">
        <rect x="0" y="60" width="20" height="40" fill="currentColor">
        </rect>
      </g>
      <g transform="translate(50 0)">
        <rect x="0" y="40" width="20" height="60" fill="currentColor">
        </rect>
      </g>
      <g transform="translate(75 0)">
        <rect x="0" y="20" width="20" height="80" fill="currentColor">
        </rect>
        <rect x="0" y="20" width="20" height="80" fill="currentColor">
        </rect>
      </g>
    </g>
  </symbol>

  <symbol id="wifi" viewBox="0 0 100 100">
    <circle cx="50" cy="90" r="10" fill="currentColor">
    </circle>

    <g stroke="currentColor" stroke-width="20" fill="none">
      <path d="M 25 70 a 35 35 0 0 1 50 0">
      </path>

      <path d="M 10 45 a 65 65 0 0 1 80 0">
      </path>
    </g>
  </symbol>

  <symbol id="battery" viewBox="0 0 100 100">
    <rect x="5" y="35" width="80" height="50" fill="currentColor">
    </rect>
    <rect x="85" y="45" width="15" height="30" fill="currentColor">
    </rect>
  </symbol>

  <!-- icon for the order button -->
  <symbol id="arrow" viewBox="0 0 100 100">
    <path d="M 20 50 h 65 l -25 -25 l 25 25 l -25 25" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" stroke="currentColor" fill="none">
    </path>
  </symbol>

</svg>


<div class="phone" style="width:1250px; align:center;">
  <nav class="phone__nav">
    <span style="font-size: 20px;">5:16</span>
    <svg viewBox="0 0 100 100" width="20" height="20">
      <use href="#signal"></use>
    </svg>
    <svg viewBox="0 0 100 100" width="20" height="20">
      <use href="#wifi"></use>
    </svg>
    <svg viewBox="0 0 100 100" width="20" height="20">
      <use href="#battery"></use>
    </svg>
  </nav>

  <header class="phone__state" style="margin-top: -10px; height: 310px;">
    <h2>${name}님의 PHONE</h2>
    <a href="javascript:dCheck()">회원탈퇴</a>
    <p style="font-family: 'Hahmlet', serif; "> debut day +<br />
      <strong id="strongg">
      </strong>
    </p>
  </header>

  <div class="phone__order">
    <div class="order--list">
      <h3>MY ACCOUNT</h3>
      <ul>
        <li>내 정보 보기</li>
        <li></li>
      </ul>
    </div>
    <button>
      <svg width="20" height="20" onclick="modalView()" data-toggle="modal" data-target="#myModal">
        <use href="#arrow"></use>
      </svg>
    </button>
  </div>
  <div class="phone__order">
    <div class="order--list">
      <h3>EDIT PROFILE</h3>
      <ul>
        <li>내 정보 수정하기</li>
        <li></li>
      </ul>
    </div>
    <button onclick="editProfile()">
      <svg width="20" height="20">
        <use href="#arrow"></use>
      </svg>
    </button>
  </div>
</div>

<!--  modal 이거안되니까 내일와서 수정하셈.모달창은 스케쥴참고해서 하고 모달창 정보보기에 띄울거임.  -->
<!-- The Modal (모달창 클릭시 자료실의 내용을 모달창에 출력한다.) -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
    
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title"><b>${name}님의 정보</b></h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      
      <!-- Modal body -->
      <div class="modal-body">
        <table class="table">
        	<tr><th>ID : </th><td>${sMid}</td></tr>
        	<tr><th>NAME : </th><td>${name}</td></tr>
        	<tr><th>GENDER:</th><td>${gender}</td></tr>
        	<tr><th>EMAIL : </th><td>${email}</td></tr>
<%--         	<tr><th>BIRTH : </th><td>${fn:substring(birthday,0,fn:length(birthday)-10)}</td></tr> --%>
        	<tr><th>BIRTH : </th><td>${birthday}</td></tr>
        	<tr><th>TEL : </th><td>${tel}</td></tr>
        	<tr><th>ABODE : </th><td>${address}</td></tr>
        	<tr><th>JOB : </th><td>${job}</td></tr>
        	<tr><th>GRADE : </th><td>${strLevel}</td></tr>
        </table>
      </div>
      
      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
      
 		</div>
	</div>
</div>
</body>
</html>