<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>F.INFO : Festival Info</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/resources/styles/main.css" />  <!-- 메인 부트스트랩 스타일 -->
		<link rel="stylesheet" href="/resources/styles/main2.css" /> <!-- 헤더스타일 -->
		<link rel="stylesheet" href="/resources/styles/main3.css" /> <!-- DDP리스트 스타일 -->
		
		<style type="text/css">
 			.music a:link { color: #ffffff; text-decoration: none;}
 			.music a:visited { color: #ffffff; text-decoration: none;}
			.music a:hover { color: #ffffff; text-decoration: none;}
		</style>
	</head>
	
		<body>
		<header id="header">
			<nav class="left">
				<a href="#menu"><span>Menu</span></a>
			</nav>
			<div class="logo"><img src="../resources/images/logo1.png" style="padding-top: 1.5%;width: 13%;">
			</div>
			<!--  <a href="index.html" class="logo">intensify</a>-->
			<c:if test='${empty userSession }'>
				<nav class="right">
					<a href="/finfo/login">Login</a>
				</nav>
			</c:if>
			<c:if test='${not empty userSession }'>
				<nav class="right">
					<a href="/finfo/mypage">${userSession.u_name }</a>
					<a href="/finfo/logout">로그아웃</a>
				</nav>
			</c:if>
		</header>		

			<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="/finfo/mypage">마이페이지</a></li>
					<li><a href="/festival/listPage">페스티벌</a></li>
				</ul>
			</nav>