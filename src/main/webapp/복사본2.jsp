<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <jsp:include page="./include/bs4.jsp"></jsp:include>
    <title>CSS</title>
    <style>
      body { padding: 0px; margin: 0px;  }
      .mainBox { width: 100%; height: 300px; margin: 0px auto; position: relative;  }
      video { 
	      min-width: 50%;
	      min-height: 50%;
	      width: auto;
	      height: auto;
	      z-index: -100;
	      position: fixed;
	      right: 0;
	      bottom: 0;
	      background-size: auto;
       }
      .mainText { position: absolute; top: 10%; width: 100%; text-align: center;}
      .mainText a { margin-bottom: 60px; text-align: center; font-size: 48px; color: #ffffff; }
      .mainText a:hover { text-decoration: none; }
    </style>
  </head>
  <body>
   
        <jsp:include page="./include/nav.jsp"></jsp:include>
     
  </body>
</html>