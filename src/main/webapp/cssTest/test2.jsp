<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
		<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Demo styles -->
    <style>
      /* html,
      body {
        position: relative;
        height: 100%;
      }

      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      }

      .swiper {
        width: 100%;
        height: 100%;
      }
      .back {
      	
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        /*display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover; */
        .html-tag {
    			color: -internal-light-dark(rgb(136, 18, 128), rgb(93, 176, 215));
				}
				table {
			    border-collapse: separate;
			    text-indent: initial;
			    white-space: pre;
			    font-size: initial;
			    font-family: monospace;
			    tab-size: 4;
			    border-spacing: 0px;
				}
				
				.swiper-pointer-events.swiper-vertical {
			    touch-action: pan-x;
				}
				.mainContent.swiper-container, .mainContent.swiper-container .swiper-wrapper {
			    z-index: 1;
				}
				.swiper-pointer-events {
			    touch-action: pan-y;
				}
				.swiper {
			    margin-left: auto;
			    margin-right: auto;
			    position: relative;
			    overflow: hidden;
			    list-style: none;
			    padding: 0;
			    z-index: 1;
				}
				.mainContent {
				    position: relative;
				}
				.mainContent {
			    width: 100%;
			    height: 100%;
				}  
				input, div {
				 	box-sizing: border-box;
				}
				div {
			    display: block;
				}
				body {
			    font-size: 13px;
			    color: #191919;
			    font-family: 'SMTOWN','Noto Sans KR',sans-serif,"sans-serif","AppleGothic","applegothic";
			    font-weight: 400;
			    line-height: 1;
				}
				.mainContent.swiper-container, .mainContent.swiper-container .swiper-wrapper {
			    z-index: 1;
				}
				.swiper-vertical>.swiper-wrapper {
			    flex-direction: column;
				}
				.swiper-wrapper {
			    position: relative;
			    width: 100%;
			    height: 100%;
			    z-index: 1;
			    display: flex;
			    transition-property: transform;
			    box-sizing: content-box;
				}
				element.style {
			    height: 810px;
				}
				element.style {
			    transition-duration: 0ms;
			    transform: translate3d(0px, 0px, 0px);
				}
				.swiper-backface-hidden .swiper-slide {
			    transform: translateZ(0);
			    -webkit-backface-visibility: hidden;
			    backface-visibility: hidden;
				}
				.mainContent .swiper-slide {
			    overflow: hidden;
			    display: flex;
			    align-items: stretch;
			    justify-content: center;
			    align-content: center;
				}
				.swiper-slide {
			    flex-shrink: 0;
			    width: 100%;
			    height: 100%;
			    position: relative;
			    transition-property: transform;
				}	
				video {
			    width: 100vw;
			    height: 100vh;
			    object-fit: cover;
			    position: absolute;
			    left: 0;
			    right: 0;
			    top: 0;
			    bottom: 0;
			    z-index: 0;
			    -webkit-transform: translate3d(0,0,0);
			    transform: translate3d(0,0,0);
				}	
				.mainContent .swiper-slide.swiper-slide-active div.sns {
			    display: block;
				}
				.mainContent .swiper-slide div.sns {
				  display: none;
				}
				.mainContent div.sns {
			    position: absolute;
			    bottom: 92px;
			    text-align: center;
			    width: 100%;
			    z-index: 50;
			    -webkit-transform: translate3d(0,0,10px);
			    transform: translate3d(0,0,10px);
				}
				@media (max-width: 1024px)
					.mainContent div.sns ul {
					    width: 100%;
				}
				ul, ol, dl, dt, dd, li {
			    list-style: none;
				}
				.mainContent div.sns ul li a.instaram {
			    background-image: url(../images/svg/btn_instagram.svg);
				}
				.mainContent .swiper-slide:after {
			    position: absolute;
			    content: "";
			    display: block;
			    background: url(../images/shadow.png) no-repeat;
			    background-size: 100% 100%;
			    width: 100%;
			    height: 100%;
				}
				
					
    </style>
  </head>
  <body>
    <!-- Swiper -->
    <div class="mainContent swiper swiper-container swiper-initialized swiper-vertical swiper-pointer-events swiper-backface-hidden">
      <div class="swiper-wrapper ">
        <div class="swiper-slide swiper-slide-active" video-index="0" role="group" aria-label="1 / 2" style="height: 862px;">
        	<video muted autoplay loop>
        		<source src="../video/iu.mp4" type="video/mp4">
      		</video>
      		<div class="sns">
      			<ul>
      				<li>
      					<a href="https://www.instagram.com/dlwlrma/" class="instagram" target="_blank">instagram</a>
      				</li>
      				<li>
      					<a href="https://twitter.com/_iuofficial" class="twitter" target="_blank">twitter</a>
      				</li>
      				<li>
      					<a href="https://www.youtube.com/channel/UC3SyT4_WLHzN7JmHQwKQZww" class="youtube" target="_blank">youtube</a>
      				</li>
      				<li>
      					<a href="https://ko-kr.facebook.com/iu.loen/" class="facebook" target="_blank">facebook</a>
      				</li>
      			</ul>
      		</div>
      		</div>
	        <div class="swiper-slide swiper-slide-next" video-index="1" role="group" aria-label="2 / 2" style="height: 862px;">
	        	<video muted autoplay loop>
        			<source src="../video/iubb.mp4" type="video/mp4">
      			</video>
      		</div>
      	</div>
      	<div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-vertical">
      		<span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="go to slide 1" aria-current="true"></span>
      		<span class="swiper-pagination-bullet" tabindex="1" role="button" aria-label="go to slide 2"></span>
      	</div>
      	<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
      </div>
        <!-- </div>
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
    </div> -->

    

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        direction: "vertical",
        slidesPerView: 1,
        spaceBetween: 30,
        mousewheel: true,
        observer: true,
        observeParents: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
      });
    </script>
  </body>
</html>
