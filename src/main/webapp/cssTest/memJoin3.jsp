<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>IU - SIGN UP</title>
<jsp:include page="/include/bs4.jsp"></jsp:include>
<script src="https://use.fontawesome.com/4ecc3dbb0b.js"></script>
<style>
	* {
	  margin: 0;
	  padding: 0;
	}
	*,
	*:after,
	*:before {
	  box-sizing: border-box;
	}
	body {
	  background: #A0A9CC;
	  color: #fff;
	  font-size: 1.3em;
	  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", sans-serif;
	  font-weight: 100;
	  text-align: center;
	}
	.container {
	  background: #B7BED8;
	  color: #6A79A6;
	  display: inline-block;
	  padding: 0em 2em;
	  margin: 6em auto;
	  box-shadow: 0 50px 50px rgba(0, 0, 0, 0.2);
	  margin-top: 300px;
	}
	.container .navigation {
	  text-align: left;
	}
	.container .navigation ol {
	  list-style: none;
	  background: #B7BED8;
	  position: absolute;
	  padding: 30px 0;
	  width: 600px;
	  z-index: 100;
	  margin-bottom: 30px;
	}
	.container .navigation ol li {
	  display: inline-block;
	  margin-right: 27px;
	  font-size: 0.7em;
	  max-width: 20%;
	  text-align: left;
	  overflow: hidden;
	  white-space: nowrap;
	  text-overflow: ellipsis;
	}
	.container .navigation ol li a {
	  color: #fff;
	  text-decoration: none;
	  position: relative;
	  z-index: 2;
	  cursor: pointer;
	  opacity: 0;
	}
	.container .navigation ol li a.done {
	  opacity: 1;
	}
	.container .sign-form {
	  width: 600px;
	  text-align: left;
	  margin: 85px 0 0 0;
	}
	.container .sign-form #next-page {
	  opacity: 0;
	  width: 40px;
	  height: 40px;
	  display: inline-block;
	  vertical-align: middle;
	  margin-left: 20px;
	  background: url("https://jdniki.github.io/signup/images/next-page.svg");
	  background-size: contain;
	}
	.container .sign-form #next-page:hover {
	  background: url("https://jdniki.github.io/signup/images/next-pagehover.svg");
	  background-size: contain;
	}
	.container .sign-form .questions {
	  list-style: none;
	  -webkit-transition: height 0.4s;
	  transition: height 0.4s;
	  width: 88%;
	  display: inline-block;
	  height: 80px;
	}
	.container .sign-form .questions li {
	  position: absolute;
	  width: 500px;
	  /*-------------Password ------------------*/
	}
	.container .sign-form .questions li span {
	  display: block;
	  margin-bottom: 10px;
	}
	.container .sign-form .questions li input {
	  width: 100%;
	  font-size: 0.9em;
	  color: #f2f2f2;
	  margin: 0.3em 0 1em 0;
	  border: none;
	  background: none;
	  border-bottom: 3px solid #fff;
	  padding: 0.5em 0.1em;
	  transition: all 0.5s ease;
	}
	.container .sign-form .questions li input:focus {
	  outline: none;
	  border-bottom: 3px solid #6A79A6;
	}
	.container .sign-form .questions li:not(:first-child) {
	  opacity: 0;
	  margin-top: 150px;
	}
	.container .sign-form .questions li #viewpswd {
	  position: absolute;
	  opacity: 0;
	}
	.container .sign-form .questions li #show-pwd {
	  margin: -2.75em 0em;
	  width: 40px;
	  height: 40px;
	  position: absolute;
	  right: 0;
	  color: rgba(255, 255, 255, 0.4);
	  cursor: pointer;
	}
	.container .sign-form .questions li #show-pwd.view {
	  background: url("https://jdniki.github.io/signup/images/view.svg");
	  background-size: contain;
	}
	.container .sign-form .questions li #show-pwd.hide {
	  background: url("https://jdniki.github.io/signup/images/hide.svg");
	  background-size: contain;
	}
	.container .sign-form .questions li #show-pwd:active,
	.container .sign-form .questions li #show-pwd:focus {
	  background: url("https://jdniki.github.io/signup/images/hide.svg");
	  background-size: contain;
	}
	.container .sign-form .questions li select.country {
	  position: absolute;
	  width: 4.5em;
	  font-size: 0.7em;
	  color: #f2f2f2;
	  height: 70px;
	  background: transparent;
	  border: 1px solid #ccc;
	  -webkit-appearance: none;
	  -moz-appearance: none;
	  appearance: none;
	  border: none;
	}
	.container .sign-form .questions li #phone {
	  padding-left: 5em;
	}
	.container .error-message {
	  color: rgba(207, 0, 0, 0.56);
	  font-size: 14px;
	  margin-top: 10px;
	  padding-bottom: 30px;
	  background: #B7BED8;
	}
	::-webkit-input-placeholder {
	  font-size: 0.9em;
	  color: rgba(255, 255, 255, 0.7);
	}
	:-moz-placeholder {
	  /* Firefox 18- */
	  font-size: 0.9em;
	  color: rgba(255, 255, 255, 0.7);
	}
	::-moz-placeholder {
	  /* Firefox 19+ */
	  font-size: 0.9em;
	  color: rgba(255, 255, 255, 0.7);
	}
	:-ms-input-placeholder {
	  font-size: 0.9em;
	  color: rgba(255, 255, 255, 0.7);
	}
	@-webkit-keyframes moveUpFromDown {
	  from {
	    -webkit-transform: translateY(100%);
	  }
	  to {
	    -webkit-transform: translateY(0);
	  }
	}
	@keyframes moveUpFromDown {
	  from {
	    -webkit-transform: translateY(100%);
	    transform: translateY(100%);
	  }
	  to {
	    -webkit-transform: translateY(0);
	    transform: translateY(0);
	  }
	}

</style>
<script>
	var counter = 1;
	$(document).ready(function () {
	  var erroEle = $(".error-message"),
	    focusInput = $(".questions").find(".active");
	
	  $(".navigation a").click(function () {
	    nextMaster("navi");
	
	    var thisInput = $("#" + $(this).attr("data-ref"));
	    $(".active").removeClass("active");
	    thisInput.focus().addClass("active");
	    thisInput.closest("li").animate(
	      {
	        marginTop: "0px",
	        opacity: 1
	      },
	      200
	    );
	    thisInput.closest("li").prevAll("li").animate(
	      {
	        marginTop: "-150px",
	        opacity: 0
	      },
	      200
	    );
	    //                     .AddClass('done');
	
	    thisInput.closest("li").nextAll("li").animate(
	      {
	        marginTop: "150px",
	        opacity: 0
	      },
	      200
	    );
	    //                    .RemoveClass('done');
	    errorMessage(erroEle, "", "hidden", 0);
	  });
	
	  if (focusInput.val() != "") {
	    $("#next-page").css("opacity", 1);
	  }
	
	  $(document).keypress(function (event) {
	    if (event.which == 13) {
	      nextMaster("keypress");
	      event.preventDefault();
	    }
	
	    $("#next-page").click(function () {
	      var focusInput = $(".questions").find(".active");
	      nextMaster("nextpage");
	    });
	  });
	
	  function nextMaster(type) {
	    var focusInput = $(".questions").find(".active");
	    if (focusInput.val() != "") {
	      if (
	        (focusInput.attr("name") == "name" ||
	          focusInput.attr("name") == "username") &&
	        focusInput.val().length < 2
	      ) {
	        errorMessage(
	          erroEle,
	          "isn't your " + focusInput.attr("name") + " bit small. ",
	          "visible",
	          1
	        );
	      } else if (
	        focusInput.attr("name") == "email" &&
	        !validateEmail(focusInput.val())
	      ) {
	        errorMessage(
	          erroEle,
	          "It doesn't look like a " + focusInput.attr("name"),
	          "visible",
	          1
	        );
	      } else if (
	        focusInput.attr("name") == "phone" &&
	        !validatePhone(focusInput.val())
	      ) {
	        errorMessage(
	          erroEle,
	          "It doesn't look like a " + focusInput.attr("name"),
	          "visible",
	          1
	        );
	      } else {
	        if (type != "navi") showLi(focusInput);
	        $("#next-page").css("opacity", 0);
	        errorMessage(erroEle, "", "hidden", 0);
	      }
	    } else if (type == "keypress") {
	      errorMessage(
	        erroEle,
	        "please enter your " + focusInput.attr("name"),
	        "visible",
	        1
	      );
	    }
	  }
	
	  $("input[type='text']").keyup(function (event) {
	    var focusInput = $(this);
	    if (focusInput.val().length > 1) {
	      if (
	        (focusInput.attr("name") == "email" &&
	          !validateEmail(focusInput.val())) ||
	        (focusInput.attr("name") == "phone" && !validatePhone(focusInput.val()))
	      ) {
	        $("#next-page").css("opacity", 0);
	      } else {
	        $("#next-page").css("opacity", 1);
	      }
	    } else {
	      $("#next-page").css("opacity", 0);
	    }
	  });
	
	  $("#password").keyup(function (event) {
	    var focusInput = $(this);
	    $("#viewpswd").val(focusInput.val());
	    if (focusInput.val().length > 1) {
	      $("#next-page").css("opacity", 1);
	    }
	  });
	
	  $("#signup").click(function () {
	    $(".navigation").fadeOut(400).css({
	      display: "none"
	    });
	    $("#sign-form").fadeOut(400).css({
	      display: "none"
	    });
	    $(this).fadeOut(400).css({
	      display: "none"
	    });
	    $("#wf")
	      .animate(
	        {
	          opacity: 1,
	          marginTop: "1em"
	        },
	        500
	      )
	      .css({
	        display: "block"
	      });
	  });
	
	  $("#show-pwd")
	    .mousedown(function () {
	      $(this).toggleClass("view").toggleClass("hide");
	      $("#password").css("opacity", 0);
	      $("#viewpswd").css("opacity", 1);
	    })
	    .mouseup(function () {
	      $(this).toggleClass("view").toggleClass("hide");
	      $("#password").css("opacity", 1);
	      $("#viewpswd").css("opacity", 0);
	    });
	});
	
	function showLi(focusInput) {
	  focusInput.closest("li").animate(
	    {
	      marginTop: "-150px",
	      opacity: 0
	    },
	    200
	  );
	
	  console.log(focusInput.closest("li"));
	
	  if (focusInput.attr("id") == "viewpswd") {
	    $("[data-ref='" + focusInput.attr("id") + "']")
	      .addClass("done")
	      .html("password");
	    //                    .html(Array(focusInput.val().length+1).join("*"));
	  } else {
	    $("[data-ref='" + focusInput.attr("id") + "']")
	      .addClass("done")
	      .html(focusInput.val());
	  }
	
	  focusInput.removeClass("active");
	  counter++;
	
	  var nextli = focusInput.closest("li").next("li");
	
	  nextli.animate(
	    {
	      marginTop: "0px",
	      opacity: 1
	    },
	    200
	  );
	
	  nextli.find("input").focus().addClass("active");
	}
	
	function errorMessage(textmeg, appendString, visib, opaci) {
	  textmeg
	    .css({
	      visibility: visib
	    })
	    .animate({
	      opacity: opaci
	    })
	    .html(appendString);
	}
	
	function validateEmail(email) {
	  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	  return re.test(email);
	}
	
	function validatePhone(phone) {
	  var re = /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/;
	  return re.test(phone);
	}

  </script>

</head>
<body>
<div class="container">
  <div class="navigation">
    <ol>
      <li><a href="#"  data-ref="mid">Id</a></li>
      <li><a href="#"  data-ref="name">Name</a></li>
      <li><a href="#"   data-ref="password">Password</a></li>
      <li><a href="#"  data-ref="email">Email</a></li>
      <li><a href="#"  data-ref="phone">Phone</a></li>
  	</ol>
		</div>
  	<form id="sign-form" class="sign-form">
    	<ol class="questions">
      	<li>
      		<span><label for="name">???????????? ???????????? ??????????????????.</label></span>
					<input class="active" id="mid" name="mid" type="text" placeholder="Enter your Id" autofocus/>
        </li>
        <li>
      		<span><label for="uname">????????? ??????????????????.</label></span>
          <input id="name" name="name" type="text" placeholder="Enter a Name" autofocus/>
				</li>
        <li>
          <span><label for="password">??????????????? ??????????????????.</label></span>
          <input id="viewpswd" name="password" type="text" placeholder="this your password"/>
          <input id="password" name="password" type="password" placeholder="make sure you dont forget" autofocus/>
          <span id="show-pwd" class="view"></span>
				</li>
        <li>
      		<span><label for="email">???????????? ??????????????????.</label></span>
          <input id="email" name="email" type="text" placeholder="Email address"  autofocus/>
				</li>
        <li>
        	<span><label for="phone">Enter your phone number</label></span>
            <select name="countryCode" class="country"  >
              <option data-countryCode="GB" value="91">(+91) INDIA </option>
              <option data-countryCode="GB" value="44">(+44) UK </option>
              <option data-countryCode="US" value="1">(+1) USA </option>
              <optgroup label="Other countries">
               <option data-countryCode="DZ" value="213"> (+213)Algeria</option>
               <option data-countryCode="AD" value="376"> (+376) Andorra</option>
               <option data-countryCode="AO" value="244">(+244) Angola </option>
               <option data-countryCode="AI" value="1264"> (+1264) Anguilla</option>
               <option data-countryCode="AG" value="1268">(+1268) Antigua &amp; Barbuda </option>
               <option data-countryCode="AR" value="54">(+54) Argentina </option>
               <option data-countryCode="AM" value="374"> (+374) Armenia</option>
               <option data-countryCode="AW" value="297">(+297) Aruba </option>
               <option data-countryCode="AU" value="61"> (+61) Australia</option>
               <option data-countryCode="AT" value="43">(+43) Austria </option>
               <option data-countryCode="AZ" value="994"> (+994) Azerbaijan</option>
               <option data-countryCode="BS" value="1242">(+1242)Bahamas </option>
              </optgroup>
              </select>
              <input id="phone" name="phone" type="text" autofocus/>
        </li>
        <li><p style="margin-top: 45px;font-size: 32pt;float:right">
        <a href="#" style="color:white;text-decoration:none" id="signup">sign up</a></p>    </li>
	        
	            
        </ol>
        <div id="next-page" alt="Kiwi standing on oval"></div>
        <div class="error-message"></div>
       
    </form>
	<h1 id="wf" style="opacity:0;width: 600px; margin-top:1.1em;display:none; margin-bottom:1em">Thank you</h1>
	</div>
</body>
</html>