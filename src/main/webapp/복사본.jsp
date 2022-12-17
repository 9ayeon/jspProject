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
      video { min-width: 100%; min-height: 100%; z-index:1;}
      .mainText { position: absolute; top: 10%; width: 100%; text-align: center;}
      .mainText a { margin-bottom: 60px; text-align: center; font-size: 48px; color: #ffffff; }
      .mainText a:hover { text-decoration: none; }
    </style>
  </head>
  <body>
    <div class="mainBox">
      <video id="video" muted autoplay loop>
        <source src="video/boa.mp4" type="video/mp4">
      </video>
      <div class="mainText">
        <jsp:include page="./include/nav.jsp"></jsp:include>
      </div>
    </div>
  </body>
</html>