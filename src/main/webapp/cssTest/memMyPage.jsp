<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>IU - jigeum jieun - MY PAGE</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <link rel="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/0.7.4/tailwind.min.css">
  <link rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css">
  <style>
  	@import url(https://fonts.googleapis.com/css?family=Lato|Nunito|Roboto|Source+Sans+Pro&display=swap);
		* {
		  font-family: 'Arial', sans-serif;
		}
		
		.back {
		  width: 100vw;
		  height: 100vh;
		  background: linear-gradient(to bottom left, #efeafe, #fdeef7);
		}
		
		.locate-center {
			position: absolute;
		 	border-radius: 40px 80px / 80px 40px;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		  background: #fafafc;
		  width: 400px;
		}
		
		.header {
		  width: 100%;
		  background: linear-gradient(to bottom right, #c5abef, #f5b5dd);
		  position: relative;
		}
		
		.user-icon img {
		  width: 80px;
		  height: 80px;
		  object-fit: cover;
		  border-radius: 50%;
		}
		
		.assets {
		  position: absolute;
		  bottom: -8px;
		  left: 50%;
		  transform: translateX(-50%);
		}
		
		.main {
		  width: 100%;
		  background: #fafafc;
		  padding-left: auto;
		  padding-right: auto;
		}
		
		button {
		  width: 45%;
		  height: 140px;
		  transition: all 0.2s;
		  font-weight: 700;
		  color: #555;
		}
		
		button:hover {
		  background: #f7f7f7;
		}
		
		.icon {
		  width: 64px;
		  height: 64px;
		}
		
		.icon1 {
		  background: #d8f3ff;
		}
		
		.icon2 {
		  background: #ffe2f1;
		}
		
		.icon3 {
		  background: #fef4de;
		}
		
		.icon3 i {
		  color: #eeb486;
		}
		
		.icon4 {
		  background: #d8ffee;
		}
  </style>
</head>
<body>
<div class="back">
	<div class="locate-center w-auto shadow rounded-lg">
    <div class="header rounded-t-lg pt-8 pb-10">
      <div class="user">
        <div class="user-icon text-center"><img src="https://www.fcbarcelonanoticias.com/uploads/s1/11/59/75/6/neymar-psg-sonriente.jpeg" alt=""/></div>
        <p class="user-name text-white text-center text-2xl my-2">Neymar Silva</p>
        <p class="type text-center opacity-25">Personal</p>
      </div>
      <div class="assets"><span class="amount bg-white font-bold text-lg px-10 py-3 rounded-full shadow-lg">$ 40,469,880</span></div>
    </div>
    <div class="main rounded-b-lg px-8 py-12">
      <div class="flex justify-center">
        <button class="button1 rounded-lg shadow bg-white m-2">
          <div class="icon icon1 mx-auto mb-2 rounded-full flex justify-center items-center"><i class="far fa-share-square fa-lg text-blue"></i></div>Send Money
        </button>
        <button class="button2 rounded-lg shadow bg-white m-2">
          <div class="icon icon2 mx-auto mb-2 rounded-full flex justify-center items-center"><i class="fas fa-shopping-bag fa-lg text-pink"></i></div>Buy Airtime
        </button>
      </div>
      <div class="flex justify-center">
        <button class="button3 rounded-lg shadow bg-white m-2">
          <div class="icon icon3 mx-auto mb-2 rounded-full flex justify-center items-center"><i class="far fa-money-bill-alt fa-lg"></i></div>Cash Out
        </button>
        <button class="button4 rounded-lg shadow bg-white m-2">
          <div class="icon icon4 mx-auto mb-2 rounded-full flex justify-center items-center"><i class="far fa-credit-card fa-lg text-green"></i></div>Make Payment
        </button>
      </div>
    </div>
  </div>
</div>
</body>
</html>