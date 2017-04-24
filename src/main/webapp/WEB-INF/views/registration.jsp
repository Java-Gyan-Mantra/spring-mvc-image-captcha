<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<!-- <link rel="stylesheet" href="/style.css"> -->
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

body {
	font: 14px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #404040;
	background: lavender;
	background-image: url("./images/graphic.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}

.register-title {
	width: 340px;
	line-height: 43px;
	margin: 50px auto 20px;
	font-size: 19px;
	font-weight: 500;
	color: white;
	color: rgba(255, 255, 255, 0.95);
	text-align: center;
	text-shadow: 0 1px rgba(0, 0, 0, 0.3);
	background: #00FF00;
	border-radius: 3px;
}

.register {
	margin: 0 auto;
	width: 300px;
	padding: 20px;
	background: #f4f4f4;
}

input {
	font-family: inherit;
	font-size: inherit;
	color: inherit;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.register-input {
	display: block;
	width: 100%;
	height: 38px;
	margin-top: 2px;
	font-weight: 500;
	background: none;
	border: 0;
	border-bottom: 1px solid #d8d8d8;
}

.register-input:focus {
	border-color: #1e9ce6;
	outline: 0;
}

.register-button {
	display: block;
	width: 100%;
	height: 42px;
	margin-top: 25px;
	font-size: 16px;
	font-weight: bold;
	color: #494d59;
	text-align: center;
	text-shadow: 0 1px rgba(255, 255, 255, 0.5);
	background: #fcfcfc;
	border: 1px solid;
	border-color: #d8d8d8 #d1d1d1 #c3c3c3;
	border-radius: 2px;
	cursor: pointer;
	background-image: -webkit-linear-gradient(top, #fefefe, #eeeeee);
	background-image: -moz-linear-gradient(top, #fefefe, #eeeeee);
	background-image: -o-linear-gradient(top, #fefefe, #eeeeee);
	background-image: linear-gradient(to bottom, #fefefe, #eeeeee);
	-webkit-box-shadow: inset 0 -1px rgba(0, 0, 0, 0.03), 0 1px
		rgba(0, 0, 0, 0.04);
	box-shadow: inset 0 -1px rgba(0, 0, 0, 0.03), 0 1px rgba(0, 0, 0, 0.04);
}

.register-button:active {
	background: #eee;
	border-color: #c3c3c3 #d1d1d1 #d8d8d8;
	background-image: -webkit-linear-gradient(top, #eeeeee, #fcfcfc);
	background-image: -moz-linear-gradient(top, #eeeeee, #fcfcfc);
	background-image: -o-linear-gradient(top, #eeeeee, #fcfcfc);
	background-image: linear-gradient(to bottom, #eeeeee, #fcfcfc);
	-webkit-box-shadow: inset 0 1px rgba(0, 0, 0, 0.03);
	box-shadow: inset 0 1px rgba(0, 0, 0, 0.03);
}

.register-button:focus {
	outline: 0;
}

.register-switch {
	height: 32px;
	margin-bottom: 15px;
	padding: 4px;
	background: blue;
	border-radius: 2px;
	box-shadow: inset 0 1px rgba(0, 0, 0, 0.05), inset 1px 0
		rgba(0, 0, 0, 0.02), inset -1px 0 rgba(0, 0, 0, 0.02);
}

.register-switch-input {
	display: none;
}

.register-switch-label {
	float: left;
	width: 50%;
	line-height: 32px;
	color: white;
	text-align: center;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.2);
	cursor: pointer;
}

.register-switch-input:checked+.register-switch-label {
	font-weight: 500;
	color: #434248;
	text-shadow: 0 1px rgba(255, 255, 255, 0.5);
	background: white;
	border-radius: 2px;
	background-image: -webkit-linear-gradient(top, #fefefe, #eeeeee);
	background-image: -moz-linear-gradient(top, #fefefe, #eeeeee);
	background-image: -o-linear-gradient(top, #fefefe, #eeeeee);
	background-image: linear-gradient(to bottom, #fefefe, #eeeeee);
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.15), 0 0 0 1px
		rgba(0, 0, 0, 0.1);
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.15), 0 0 0 1px rgba(0, 0, 0, 0.1);
}

:-moz-placeholder {
	color: #aaa;
	font-weight: 300;
}

::-moz-placeholder {
	color: #aaa;
	font-weight: 300;
	opacity: 1;
}

::-webkit-input-placeholder {
	color: #aaa;
	font-weight: 300;
}

:-ms-input-placeholder {
	color: #aaa;
	font-weight: 300;
}

::-moz-focus-inner {
	border: 0;
	padding: 0;
}
</style>
<script src="https://www.google.com/recaptcha/api.js"></script>
</head>
<body>
	<h1 class="register-title">Sriman-Java-Gyan-Mantra</h1>
	<p align="center" style="color: yellow;">${message}</p>
	<form class="register"
		action="${pageContext.request.contextPath}/register" method="post">
		<p align="center" style="color: red;">${ErrorMessage}</p>
		<div class="register-switch">
			<input type="radio" name="sex" value="Female" id="sex_f"
				class="register-switch-input" checked> <label for="sex_f"
				class="register-switch-label">Female</label> <input type="radio"
				name="sex" value="Male" id="sex_m" class="register-switch-input">
			<label for="sex_m" class="register-switch-label">Male</label>
		</div>
		<input type="email" class="register-input" placeholder="Email address"
			name="email"> <input type="password" class="register-input"
			placeholder="Password" name="password"> <input
			type="password" class="register-input" placeholder="Confirm Password"
			name="confirmPassword">
		<div class="g-recaptcha"
			data-sitekey="6LduSB4UAAAAAGntBkhIOPfbx_T2HDrHPk8qMgJi"></div>
		<input type="submit" value="Create Account" class="register-button">
	</form>
</body>
</html>
