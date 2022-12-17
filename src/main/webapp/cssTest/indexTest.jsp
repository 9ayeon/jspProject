<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <jsp:include page="navTest.jsp"></jsp:include>
    <title>IU</title>
  </head>
  <body>
  <!-- Swiper -->
    <div class="swiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
        	<video playsinline muted autoplay loop preload="metadata">
        		<source src="./video/iu.mp4" type="video/mp4">
      		</video>
        </div>
        <div class="swiper-slide">
        	<video playsinline muted autoplay loop preload="metadata">
        		<source src="video/iubb.mp4" type="video/mp4">
      		</video>
        </div>
        <div class="swiper-slide">
        	<video playsinline muted autoplay loop preload="metadata">
        		<source src="video/iucel.mp4" type="video/mp4">
      		</video>
				</div>
        <div class="swiper-slide">
        	<video playsinline muted autoplay loop preload="metadata">
        		<source src="video/iublue.mp4" type="video/mp4">
      		</video>
        </div>
        <div class="swiper-slide">
        	<video playsinline muted autoplay loop preload="metadata">
        		<source src="video/iulet.mp4" type="video/mp4">
      		</video>
        </div>
      </div>
      <!-- Add Pagination -->
       <div class="swiper-pagination"></div>
       <div class="logo">
       	<a href="http://192.168.50.216:9090/zavawjsp/"><img src="../images/sub-logo.png"/></a>
       </div>
    </div>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper('.swiper', {
        direction: 'vertical',
        slidesPerView: 1,
        spaceBetween: 30,
        mousewheel: true,
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
      });
      document.body.style.overflow = "hidden";
    </script>

    <!-- Demo styles -->
    <style>
      html,
      body {
        position: relative;
        height: 101%;
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
        margin-left: auto;
        margin-right: auto;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;
        

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
      .swiper-pagination-bullet {
      	
       	width: 12px;
        height: 12px;
        background: transparent;
        border: 1px solid white;
        opacity: 1;
      }
			.swiper-pagination-bullet-active {
				width: 12px;
			  transition: width .5s;
			  background: white;
	      border: 1px solid transparent;
      }
    </style>
  </body>
</html>