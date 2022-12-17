<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Swiper demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
    <jsp:include page="/include/bs4.jsp"></jsp:include>
    <script>
    
    </script>
    <!-- Demo styles -->
    <style>
		
    </style>
  </head>
  <body>
  	<div class="back"><p>이걸봤어?</div>
    <!-- Swiper -->
    <div class="mainContent swiper swiper-container swiper-initialized swiper-vertical swiper-pointer-events swiper-backface-hidden">
      <div class="swiper-wrapper" id="swiper-wrapper" aria-live="polite" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
        <div class="swiper-slide swiper-slide-active" video-index="0" role="group" aria-label="1 / 10" style="height: 862px;">
        	<video playsinline muted autoplay loop preload="metadata">
        		<source src="../video/iu.mp4" type="video/mp4">
      		</video>
        </div>
        <div class="swiper-slide">
        	<video id="video" muted autoplay loop>
        		<source src="../video/iubb.mp4" type="video/mp4">
      		</video>
        </div>
        <div class="swiper-slide">Slide 3</div>
        <div class="swiper-slide">Slide 4</div>
        <div class="swiper-slide">Slide 5</div>
        <div class="swiper-slide">Slide 6</div>
        <div class="swiper-slide">Slide 7</div>
        <div class="swiper-slide">Slide 8</div>
        <div class="swiper-slide">Slide 9</div>
      </div>
      <div class="swiper-pagination"></div>
    </div>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    
  </body>
</html>
