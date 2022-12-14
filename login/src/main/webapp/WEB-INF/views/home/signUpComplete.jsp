<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<c:url var="R" value="/" />
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 연습</title>
<link rel="stylesheet" href="${R}res/css/common2.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
div.container2 {
	padding: 20px;
}

div.nav {
	padding: 5px;
	border-bottom: 1px solid #ddd;
	margin-bottom: 25px;
}

div.panel {
	width: 600px;
	margin-bottom: 50px;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-shadow: 3px 3px 3px #ccc;
}

div.panel h1 {
	margin: 0;
	font-size: 14pt;
	font-weight: bold;
	background: linear-gradient(90deg, #def, #bcd);
	padding: 10px 15px 7px 15px;
}

div.panel-body {
	padding: 20px;
	font-size:
}

div.panel input {
	padding: 0.7em 1em;
	margin-bottom: 7px;
	width: 300px;
	border: 2px solid #dee;
	border-radius: 8px;
}

div.panel input:focus {
	border: 2px solid #aaf;
	outline: none;
}

div.panel .btn2 {
	margin-top: 10px;
	padding: 0.7em 1.5em;
}

p {
	font-size: 14pt;
}
</style>
</head>
<body>
	<div class="main-menu">
		<div>
			<h1>로그인 연습</h1>
			<sec:authorize access="not authenticated">
				<a class="right" href="${R}login">로그인</a>
				<a class="right" href="${R}signUp">회원가입</a>
			</sec:authorize>
			<sec:authorize access="authenticated">
				<a class="btn" href="${R}logout_processing">로그아웃</a>
			</sec:authorize>
		</div>
	</div>
	<div class="container2">
		<div class="nav">&gt; 회원가입</div>
		<div class="panel">
			<h1 class="panel-header">회원가입 성공</h1>
			<div class="panel-body">
				<p>
					<i class="fa fa-user-plus fa-lg"></i> 회원가입이 성공했습니다
				</p>
				<a href="${R}login" class="btn2"> 로그인 하기</a>
			</div>
		</div>
		<div class="footer">
			<div>152-716 서울시 구로구 연동로 320 / 지하철 1, 7호선 온수(성공회대입구)역
				T.02-2610-4114</div>
			<div style="margin-top: 5px;">Copyright (c) Sung-Kong-Hoe
				Univisity. All rights reserved.</div>
		</div>
	</div>
</body>
</html>