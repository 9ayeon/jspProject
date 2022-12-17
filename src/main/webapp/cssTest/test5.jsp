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
      html, body {
        position: relative;
        height: 100%;
    		}
   		body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color:#fff;
        margin: 0;
        padding: 0;
    	}
    	.swiper-container {
        width: 100%;
        height: 100%;
        margin-left: auto;
        margin-right: auto;
   	 	}
    	.swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;
        /* Center slide text vertically */
        display: -webkit-box;
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
			.swiper-pagination-bullet-active{
			  background-color:#fff;
			}
			
			.color-1{
			  background-color:#f44336;
			}
			.color-2{
			  background-color:#E91E63;
			}
			.color-3{
			  background-color:#9C27B0;
			}
			.color-4{
			  background-color:#673AB7;
			}
			.color-5{
			  background-color:#3F51B5;
			}
			.color-6{
			  background-color:#2196F3;
			}
    </style>
  </head>
  <body>
    <!-- Swiper -->
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide color-1">
	            <video muted autoplay loop>
	        			<source src="../video/iu.mp4" type="video/mp4">
	      			</video>
            </div>
            <div class="swiper-slide color-2">
							<video muted autoplay loop>
        				<source src="../video/iubb.mp4" type="video/mp4">
      				</video>
						</div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>
      	<div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-vertical">
      		<span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="go to slide 1" aria-current="true"></span>
      		<span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="go to slide 2"></span>
      	</div>
      	<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
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
    	var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        direction: 'vertical',
        slidesPerView: 1,
        paginationClickable: true,
        spaceBetween: 30,
        mousewheelControl: true,
        parallax: true,
        speed: 600,
        observer: true,
        observeParents: true,

    });
    </script>
  </body>
</html>
