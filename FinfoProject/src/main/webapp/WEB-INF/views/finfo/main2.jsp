<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../finfo/header.jsp"%>
<!-- Banner -->
<section class="banner full">
	<article>
		<img src="/resources/images/slide01.jpg" alt="" />
		<div class="inner">
			<header>
				<p>소개말 작성하는 칸</p>
				<h2>K-POP</h2>
			</header>
		</div>
	</article>
	<article>
		<img src="/resources/images/slide02.jpg" alt="" />
		<div class="inner">
			<header>
				<p>락 페스티벌 장르 간략 소개?</p>
				<h2>Rock'n'Roll</h2>
			</header>
		</div>
	</article>
	<article>
		<img src="/resources/images/slide03.jpg" alt="" />
		<div class="inner">
			<header>
				<p>클래식 장르 간략 소개</p>
				<h2>Classic</h2>
			</header>
		</div>
	</article>
	<article>
		<img src="../resources/images/slide04.jpg" alt="" />
		<div class="inner">
			<header>
				<p>재즈 장르 간략 소개</p>
				<h2>Jazz</h2>
			</header>
		</div>
	</article>
	<article>
		<img src="../resources/images/slide05.jpg" alt="" />
		<div class="inner">
			<header>
				<p>EDM 장르 간략 소개</p>
				<h2>EDM</h2>
			</header>
		</div>
	</article>
</section>

<!-- One -->
<section id="one" class="wrapper style2">
	<c:if test="${user == null}">
		<div class="no_login_recommend">
			추천을 원하시면 <a href="/finfo/login">로그인</a>후 선호장르를 선택해주세요.
		</div>
	</c:if>
	<c:if test="${user != null}">
		<div class="inner">
			<div class="grid-style">
				<div>이런 FESTIVAL은 어때요?</div>
				<c:forEach items="${list}" var="list">
					<div class="list-wrapper">
						<div class="box">
							<div class="image fit">
								<a href="/festival/read?f_NO=${list.f_NO}"> <img
									src="/resources/images/${list.f_THUMBNAIL}" alt="">
								</a>
							</div>
							<div class="content">
								<header class="align-center">
									<p>
										<fmt:formatDate pattern="yyyy.MM.dd" value="${list.f_START}" />
										~
										<fmt:formatDate pattern="yyyy.MM.dd" value="${list.f_END}" />
									</p>

									<div class="genre">${list.g_NAME}</div>
									<h3>${list.f_SUBJECT}</h3>
								</header>
								<footer class="align-center">
									<a href="/festival/read?f_NO=${list.f_NO}"
										class="button alt detail-btn">상세보기</a>
								</footer>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="inner">
			<div class="grid-style">

				<c:forEach items="${list2}" var="list2">
					<div class="list-wrapper">
						<div class="box">
							<div class="image fit">
								<a href="/festival/read?f_NO=${list2.f_NO}"> <img
									src="/resources/images/${list2.f_THUMBNAIL}" alt="">
								</a>
							</div>
							<div class="content">
								<header class="align-center">
									<p>
										<fmt:formatDate pattern="yyyy.MM.dd" value="${list2.f_START}" />
										~
										<fmt:formatDate pattern="yyyy.MM.dd" value="${list2.f_END}" />
									</p>

									<div class="genre">${list2.g_NAME}</div>
									<h3>${list2.f_SUBJECT}</h3>
								</header>
								<footer class="align-center">
									<a href="/festival/read?f_NO=${list2.f_NO}"
										class="button alt detail-btn">상세보기</a>
								</footer>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</c:if>
</section>
<section  id="two" class="wrapper style2">
	<div class="inner">
		<div class="grid-style">

			<c:forEach items="${listGenre}" var="listGenre">
				<div class="list-wrapper">
					<div class="box">
						<div class="image fit">
							<a href="/festival/read?f_NO=${listGenre.f_NO}"> <img
								src="/resources/images/${listGenre.f_THUMBNAIL}" alt="">
							</a>
						</div>
						<div class="content">
							<header class="align-center">
								<p>
									<fmt:formatDate pattern="yyyy.MM.dd" value="${listGenre.f_START}" />
									~
									<fmt:formatDate pattern="yyyy.MM.dd" value="${listGenre.f_END}" />
								</p>

								<div class="genre">${listGenre.g_NAME}</div>
								<h3>${listGenre.f_SUBJECT}</h3>
							</header>
							<footer class="align-center">
								<a href="/festival/read?f_NO=${listGenre.f_NO}"
									class="button alt detail-btn">상세보기</a>
							</footer>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>
<!-- Two -->
<section id="two" class="wrapper style3">
	<div class="inner">
		<header class="align-center">
			<p>Nam vel ante sit amet libero scelerisque facilisis eleifend
				vitae urna</p>
			<h2>Morbi maximus justo</h2>
		</header>
	</div>
</section>

<!-- Three -->
<section id="three" class="wrapper style2">
	<div class="inner">
		<header class="align-center">
			<p class="special">Nam vel ante sit amet libero scelerisque
				facilisis eleifend vitae urna</p>
			<h2>Morbi maximus justo</h2>
		</header>
		<div class="gallery">
			<div>
				<div class="image fit">
					<a href="#"><img src="/resources/images/pic01.jpg" alt="" /></a>
				</div>
			</div>
			<div>
				<div class="image fit">
					<a href="#"><img src="/resources/images/pic02.jpg" alt="" /></a>
				</div>
			</div>
			<div>
				<div class="image fit">
					<a href="#"><img src="/resources/images/pic03.jpg" alt="" /></a>
				</div>
			</div>
			<div>
				<div class="image fit">
					<a href="#"><img src="/resources/images/pic04.jpg" alt="" /></a>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../finfo/footer.jsp"%>
<script src="/resources/js/main.js"></script>