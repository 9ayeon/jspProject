<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>IU - jikeum jieun - MY ACCOUNT</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<style>
* {
  box-sizing: border-box;
}

html,
body {
  min-height: 100%;
  height: 100%;
  background-image: url(http://theartmad.com/wp-content/uploads/Dark-Grey-Texture-Wallpaper-5.jpg);
  background-size: cover;
  background-position: top center;
  font-family: helvetica neue, helvetica, arial, sans-serif;
  font-weight: 200;
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
$('.button').click(function(){
	  var buttonId = $(this).attr('id');
	  $('#modal-container').removeAttr('class').addClass(buttonId);
	  $('body').addClass('modal-active');
	})

	$('#modal-container').click(function(){
	  $(this).addClass('out');
	  $('body').removeClass('modal-active');
	});
</script>
<body>
<div class="backdrop"></div>
<div class="modal text-center">
  <h4>Get in Touch</h4>
  <p>Send us a quick note!</p>
  <input class="button-primary" type="submit" value="submit">
</div>
<div class="container">
  <h5 class="text-center">Click on image to open modal</h5>
  <div class="row">
    <div class="one-half column">
      <img class="img" src="https://source.unsplash.com/random/800x600" alt="">
    </div>
    <div class="one-half column">
      <img class="img" src="https://source.unsplash.com//collection/632843/800x600" alt="">
    </div>
  </div>
</div>
</body>
</html>