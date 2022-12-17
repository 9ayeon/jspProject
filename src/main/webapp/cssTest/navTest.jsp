<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<div class="wrapper">
  <ul>
    <li class="facebook"><a href="#"><i class="fa fa-facebook fa-2x" aria-hidden="true"></i></a></li>
    <li class="twitter"><a href="#"><i class="fa fa-twitter fa-2x" aria-hidden="true"></i></a></li>
    <li class="instagram"><a href="#"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></a></li>
    <li class="google"><a href="#"><i class="fa fa-google fa-2x" aria-hidden="true"></i></a></li>
    <li class="whatsapp"><a href="#"><i class="fa fa-whatsapp fa-2x" aria-hidden="true"></i></a></li>
  </ul>
</div>
<div class="hero">
    <header id="masthead" role="banner">
      <div class="container">
      
        <button class="hamburger hamburger--boring" type="button">
          <span class="hamburger-box">
            <span class="hamburger-inner"></span>
          </span>
          <span class="hamburger-label">Menu</span>
        </button>
      <div id="masthead-search">
        <button type="button">login</button>
        </div>        
        <nav id="site-nav" role="navigation">
          <div class="col">
            <h4>NOTICE</h4>
            <ul>
              <li><a href="#">NOTICE</a></li>
            </ul>            
          </div>
          <div class="col">
            <h4>ARTIST</h4>
            <ul>
              <li><a href="#">MUSICIAN</a></li>
              <li><a href="#">ACTOR</a></li>
              <li><a href="#">ENTERTAINER</a></li>
              <li><a href="#">MODEL</a></li>
            </ul> 
          </div>
          <div class="col">
            <h4>PRODUCTION</h4>
            <ul>
              <li><a href="#">ALBUM</a></li>
              <li><a href="#">MUSIC VIDEO</a></li>
              <li><a href="#">MOVIE</a></li>
              <li><a href="#">iScreaM</a></li>
              <li><a href="#">VARIETY</a></li>
            </ul>             
          </div>
          <div class="col">
            <h4>GUEST</h4>
            <ul>
              <li><a href="#">REVIEW</a></li>
              <li><a href="#">REPORT</a></li>
              <li><a href="#">CONTACT US</a></li>
            </ul>               
          </div>
          <div class="col">
            <h4>SHOP</h4>
            <ul>
              <li><a href="#">GOODS</a></li>
            </ul>               
          </div>
          <div class="col">
            <h4>AUDITION</h4>
            <ul>
              <li><a href="#">AUDITON</a></li>
            </ul>               
          </div>
          <div class="col">
          </div>
      </nav>
    </div>
  </header>
</div>
<style>
	
	@import 'https://fonts.googleapis.com/css?family=Roboto:400,500';
	
	html {
	  box-sizing: border-box;
	}
	
	*, *:before, *:after {
	  box-sizing: inherit;
	}
	
	html,
	body {
	  height: 100%;
	  top-margin:0;
	  
	}
	
	html, body, div, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, ol, ul, li, form, legend, label, table, header, footer, nav, section, figure {
	  margin: 0;
	  padding: 0;
	}
	
	header, footer, nav, section, article, hgroup, figure {
	  display: block;
	}
	
	body {
	  font-family: 'Roboto', sans-serif;
	  font-size: 100%;
	  line-height: 1.5;
	}
	
	.container {
	  width: 90%;
	  margin-left: auto;
	  margin-right: auto;
	  max-width: 1200px;
	  top: 0;
	}
	
	.container a{
		font-family: 'Roboto', sans-serif;
	  font-size: 30px;
	}
	
	.container img{
		display: block;
		margin: 30px auto auto auto; 
		width: 142px;
		height: 47px;
		background-size: cover;
	}
	
	.container:after { /* 여기 height 수정 해줘 네비바길이 근데 주의해 배경도길어져*/
	  content: "";
	  display: table;
	  clear: both;
	  height: 100%;
	}
	
	/* .container {
	  margin-left: auto;
	  margin-right: auto;
	  width: 90%;
	  max-width: 1200px;
	} */
	
	/* 
	Full screen background image
	*/
	.hero {/* // 메뉴바 아래부분,제일아래 */
	  /* background-image:url(../); */
	  /* background-size: cover; */
	  width: 100%;
	  height: 0%;
	  position: absolute;
	}
	
	/*
	Blueish tint overlay
	*/
	.hero:after {
	  /* content: ''; */
	  /* background: rgba(0, 0, 64, 0.5); */
	  position: absolute;
	  top: 50;
	  width: 100%;
	  height: 50%;
	}
	
	/* 
	Making sure everything in .hero sits above our :after elements 
	*/
	.hero * { /* <!-- 메뉴 있는부분 --> */
	  position: relative;
	  z-index: 2;
	  top: 0;
	  background-color: transparent;
	  opacity: 1;
	  
	}
	
	#masthead {/* 메뉴 겉부분. */
	  padding: 0em 0;
	  position: relative;
	  
	}
	
	#masthead.is-active {/* 네비 열었을때 네비아래부분 */
	  box-shadow: 0 100px 4px rgba(0, 0, 0, 0.15);
	  opacity: 1;
	  background-color: white;
	  height: 500px;
	}
	
	/*
	Using this method because browsers can transition opacity very cheaply as opposed to using background: rgba
	https://www.html5rocks.com/en/tutorials/speed/high-performance-animations/
	*/
	#masthead:after {/* 네비 열었을때 윗부분. 아래는 이즈액티브. */
	  content: '';
	  position: absolute;
	  top: 50;
	  width: 100%;
	  height: 50%;
	  /* background-color: #fff;*/
	  opacity: 1;
	  transition: opacity 0.3s ease;
	  
	}
	
	#masthead.is-active:after {
	  opacity: 1;/* 네비 열었을때 윗부분. 아래는 이즈액티브. 닫을때 살짝 애프터보임. 이게덮어쓰네*/
		}
	/*!
	 * Hamburgers
	 * @description Tasty CSS-animated hamburgers
	 * @author Jonathan Suh @jonsuh
	 * @site https://jonsuh.com/hamburgers
	 * @link https://github.com/jonsuh/hamburgers
	 */
	.hamburger {
	  background-color: transparent;
	  border: 0;
	  color: inherit;
	  cursor: pointer;
	  display: inline-block;
	  float: left;
	  font: inherit;
	  /*margin: 0.8125em 0 0;*/
	  margin: 1em 0 0 10px;
	  overflow: visible; 
	  outline: none;
	  padding: 0;
	  text-transform: none;
	  transition: opacity 0.15s;
	  -webkit-appearance: none;
	  
	}
	
	.hamburger:hover {
	  opacity: 0.7; 
	  color: black;
	}
	
	.hamburger-box {
	  width: 30px;
	  height: 40px;
	  display: inline-block;
	  position: relative; 
	  color: black;
	}
	
	.hamburger-inner {
	  display: block;
	  top: 50%;
	  margin-top: -2px; 
	}
	
	.hamburger-inner, 
	.hamburger-inner::before, 
	.hamburger-inner::after {
		color: black;
	  width: 30px;
	  height: 2px;
	  background-color: #fff;
	  border-radius: 4px;
	  position: absolute;
	  transition-property: -webkit-transform;
	  transition-property: transform;
	  transition-property: transform, -webkit-transform;
	  transition-duration: 0.15s;
	  transition-timing-function: ease; 
	}
	
	#masthead.is-active .hamburger-inner, 
	#masthead.is-active .hamburger-inner::before, 
	#masthead.is-active .hamburger-inner::after {
	    background-color: #000;
	    color: black;
	}
	
	.hamburger-inner::before, 
	.hamburger-inner::after {
	  content: "";
	  display: block; 
	}
	
	.hamburger-inner::before {
	  top: -6px; 
	}
	
	.hamburger-inner::after {
	  bottom: -6px; 
	}
	
	/*
	 * Boring
	 */
	.hamburger--boring .hamburger-inner, 
	.hamburger--boring .hamburger-inner::before, 
	.hamburger--boring .hamburger-inner::after {
	  transition-property: none; 
	}
	
	.hamburger--boring.is-active .hamburger-inner {
	  -webkit-transform: rotate(45deg);
	  transform: rotate(45deg); 
	}
	
	.hamburger--boring.is-active .hamburger-inner::before {
	  top: 0;
	  opacity: 0; 
	}
	
	.hamburger--boring.is-active .hamburger-inner::after {
	  bottom: 0;
	  -webkit-transform: rotate(-90deg);
	  transform: rotate(-90deg); 
	}
	
	.hamburger-label {
	  color: #fff;
	  display: inline-block;
	  font-weight: 700;
	  letter-spacing: 0.08em;
	  line-height: 1;
	  margin-left: 0.3125em;
	  text-transform: uppercase;
	}
	
	#masthead.is-active .hamburger-label {
	  color: #000;
	}
	
	.hamburger-box,
	.hamburger-label {
	  display: inline-block;
	  vertical-align: middle;
	}
	
	#site-nav {
	  clear: both;
	  display: flex;
	  flex-direction: column; 
	  height: 0;
	  overflow: hidden;
	  padding-top: 2.5em;
	}
	
	#site-nav.is-active {
	  height: auto;
	  overflow: visible;
	}
	
	#site-nav .col { 
	  padding-bottom: 2.5em;
	} 
	
	@media screen and (min-width: 550px) {
	  #site-nav {
	    flex-direction: row;
	    flex-wrap: wrap;
	  }
	  
	  #site-nav .col {
	    flex: 0 0 50%;
	  } 
	}
	
	@media screen and (min-width: 768px) {
	  #site-nav .col {
	    flex: 0 0 33.333333333%;
	  } 
	}
	
	@media screen and (min-width: 960px) {
	  #site-nav {
	    flex-wrap: nowrap;
	  }
	  
	  #site-nav .col {
	    flex: 0 0 20%;
	  } 
	  
	  #site-nav .col:last-child {
	    display: flex;
	    justify-content: flex-end;
	  }  
	}
	
	#site-nav h4 {
	  letter-spacing: 0.05em;
	  text-transform: uppercase;
	}
	
	#site-nav ul {
	  list-style-type: none;
	  margin-top: 1em;
	}
	
	#site-nav li {
	  margin-bottom: 0.3125em;
	}
	
	#site-nav li a {
	  color: #b4b9ba;
	  text-decoration: none;
	  transition: color 0.3s ease;
	}
	
	#site-nav li a:hover,
	#site-nav li a:focus {
	  color: #686d6e;
	}
	
/* 	#site-nav .social {
	  margin: 0;
	  overflow: hidden;
	}
	
	#site-nav .social li {
	  float: left;
	  margin: 0 0.3125em;
	  width: 32px;
	  height: 32px;
	}
	
	#site-nav .social li svg {
	  display: block;
	  fill: #b4b9ba;
	  width: 100%;
	  height: 100%;
	  transition: fill 0.3s ease;
	}
	
	#site-nav .social li:hover svg {
	  fill: #686d6e;
	} */
	
	/* 로그인 */
	
	 #masthead-search {
	  float: right;
	  margin-top: 0.625em;
	  width: 100%;
	  max-width: 14em;
	  position: relative;
	  -webkit-appearance: none;
	  display : block;
	}
	
	#masthead-search button {
	  background: transparent;
	  border: none;
	  color: #fff;
	  font-size: 1em;
	  border-color: #fff;
	  border-style: solid;
	  border-width: 1px;
	  border-radius: 50px;
	  outline: none;
	  width: 50%;
	  padding: 0.5em 1em;
	  transition: border-color 0.3s ease;
	  -webkit-appearance: none;
	  top: 15px;
	  float: right;
	  display : block;
	  
	} 
	
	/* #masthead-search button {
	  background: none;
	  border: none;
	  color: #fff;
	  font-size: 1em;
	  padding: 0;
	  position: absolute;
	  top: 50%;
	  right: 0.75em;
	  transform: translateY(-50%);
	  -webkit-appearance: none;
	} */
	
	#masthead.is-active #masthead-search button {
	  /* color: #b4b9ba;
	  border-color: #b4b9ba; */
	  display : none;
	}
	
/* 	#masthead.is-active #masthead-search input {
	  border-color: #b4b9ba;
	} */
	
	/* #masthead-search ::-webkit-input-placeholder {
	    color:    #fff;
	}
	
	#masthead-search :-moz-placeholder {
	   color:    #fff;
	   opacity:  1;
	}
	
	#masthead-search ::-moz-placeholder {
	   color:    #fff;
	   opacity:  1;
	}
	
	#masthead-search :-ms-input-placeholder {
	   color:    #fff;
	}
	
	#masthead.is-active #masthead-search ::-webkit-input-placeholder {
	    color:    #b4b9ba;
	}
	
	#masthead.is-active #masthead-search :-moz-placeholder {
	   color:    #b4b9ba;
	   opacity:  1;
	}
	
	#masthead.is-active #masthead-search ::-moz-placeholder {
	   color:    #b4b9ba;
	   opacity:  1;
	}
	
	#masthead.is-active #masthead-search :-ms-input-placeholder {
	   color: #b4b9ba
	} */
	
	#masthead .col {
	  opacity: 0;
	}
	
	#masthead.is-active .col {
	  transform: translateY(40px);
	  transition: opacity 0.3s ease;
	  animation: fade-in-stagger 0.8s ease forwards;
	}
	
	#masthead.is-active .col:nth-child(1) {
	    -webkit-animation-delay: 0;
	}
	
	#masthead.is-active .col:nth-child(2) {
	    -webkit-animation-delay: 0.1s;
	}
	
	#masthead.is-active .col:nth-child(3) {
	    -webkit-animation-delay: 0.2s;
	}
	
	#masthead.is-active .col:nth-child(4) {
	    -webkit-animation-delay: 0.3s;
	}
	
	#masthead.is-active .col:nth-child(5) {
	    -webkit-animation-delay: 0.4s;
	}
	#masthead.is-active .col:nth-child(6) {
	    -webkit-animation-delay: 0.5s;
	}
	
	@keyframes fade-in-stagger {
	  to {
	    opacity: 1;
	    transform: translateY(0); 
	  }
	}
	
	.wrapper {
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  transform: translate(-50%, -50%);
	  width: 550px;
	}
	
	/* Style the Un-order list by setting its list-style to none */
	.wrapper ul {
	  list-style: none;
	}
	
	/* Style the list items inside the UL list, by setting its width, height and line-height 
	  and float them to left and set its border and border-radius.
	 */
	.wrapper ul li {
	  width: 75px;
	  height: 75px;
	  line-height: 75px;
	  margin: 0 10px;
	  text-align: center;
	  cursor: pointer;
	  border-radius: 50%;
	  border: 5px solid #D8E2DC;
	  float: left;
	  transition: all 0.5s ease;
	}
	
	/* Style the icons by setting its color and margin-top value to 20px 
	to align it properly */
	.wrapper ul li .fa {
	  color: #D8E2DC;
	  margin-top: 20px;
	  transition: all 0.5s ease;
	}
	
	/* Now target the specific li classes for styling and use box-shadow effect to border and text-shadow effect
	  to icons for glowing effect and use transition property for smooth transition effect. */
	/*facebook*/
	.wrapper ul li:hover.facebook {
	  border: 5px solid #3b5998;
	  box-shadow: 0 0 15px #3b5998;
	  transition: all 0.5s ease;
	}
	
	.wrapper ul li:hover .fa-facebook {
	  color: #3b5998;
	  text-shadow: 0 0 15px #3b5998;
	  transition: all 0.5s ease;
	}
	
	/*twitter*/
	.wrapper ul li:hover.twitter {
	  border: 5px solid #00aced;
	  box-shadow: 0 0 15px #00aced;
	  transition: all 0.5s ease;
	}
	
	.wrapper ul li:hover .fa-twitter {
	  color: #00aced;
	  text-shadow: 0 0 15px #00aced;
	  transition: all 0.5s ease;
	}
	
	/* instagram */
	.wrapper ul li:hover.instagram {
	  border: 5px solid #bc2a8d;
	  box-shadow: 0 0 15px #bc2a8d;
	  transition: all 0.5s ease;
	}
	
	.wrapper ul li:hover .fa-instagram {
	  color: #bc2a8d;
	  text-shadow: 0 0 15px #bc2a8d;
	  transition: all 0.5s ease;
	}
	
	/* google */
	.wrapper ul li:hover.google {
	  border: 5px solid #dd4b39;
	  box-shadow: 0 0 15px #dd4b39;
	  transition: all 0.5s ease;
	}
	
	.wrapper ul li:hover .fa-google {
	  color: #dd4b39;
	  text-shadow: 0 0 15px #dd4b39;
	  transition: all 0.5s ease;
	}
	
	/* whatsapp */
	.wrapper ul li:hover.whatsapp {
	  border: 5px solid #4dc247;
	  box-shadow: 0 0 15px #4dc247;
	  transition: all 0.5s ease;
	}
	
	.wrapper ul li:hover .fa-whatsapp {
	  color: #4dc247;
	  text-shadow: 0 0 15px #4dc247;
	  transition: all 0.5s ease;
	}
	
	
	/* media queries */
	
	@media screen and (max-width: 640px){
	  .wrapper {
	      width: 350px;
	  }
	  .wrapper ul li{
	      margin-top: 10px;
	  }
	  .wrapper ul li.google{
	      margin-left: 60px;
	  }
	}
	
	
	@media screen and (max-width: 340px){
	  .wrapper {
	      width: 150px;
	  }
	  .wrapper ul li{
	      margin:15px;
	  }
	  .wrapper ul li.google{
	      margin-left: 15px;
	  }
	}
	
</style>
<script>
document.body.style.overflow = "hidden";
$(function() {
    $('body').addClass('js');
  
    var $hamburger = $('.hamburger'),
        $nav = $('#site-nav'),
        $masthead = $('#masthead');
  
    $hamburger.click(function() {
      $(this).toggleClass('is-active');
      $nav.toggleClass('is-active');
      $masthead.toggleClass('is-active');
      return false; 
    })
});

</script>