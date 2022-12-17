<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
  <meta charset="utf-8">
    <title>CSS</title>
    <style>
      body { padding: 0px; margin: 0px; }
      .jb-box { width: 100%; height: 500px; margin: 0px auto; position: relative; }
      video { width: 100%; }
      .jb-text { position: absolute; top: 0%; width: 100%; text-align: center;}
      .jb-text a { margin-bottom: 60px; text-align: center; font-size: 48px; color: #ffffff; }
    </style>
  </head>
  <body>
    <div class="jb-box">
      <video muted autoplay loop>
        <source src="video/boa.mp4" type="video/mp4">
        <strong>zzzz</strong>
      </video>
      <div class="jb-text">
        <a href="https://www.naver.com">왜밑줄이생겼을까</a>
      </div>
    </div>
  </body>
</html>