<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../finfo/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/font-nanum/1.0/nanumbarungothic/nanumbarungothic.css">
</head>
<body>
	<section id="one" class="wrapper style2">
		<div class="inner">
			<div class="grid-style">

				<c:forEach items="${list}" var="list">
					<div class="list-wrapper">
						<div class="box">
							<div class="image fit">
								<a href="/festival/read?f_NO=${list.f_NO}"> <img
									src="../resources/images/${list.f_THUMBNAIL}" alt="">
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
			<div class="pageIdx">
				<ul>
					<c:if test="${page.prev}">
						<li><a href="listPage${page.makeQuery(page.startPage - 1)}">이전</a></li>
					</c:if>

					<c:forEach begin="${page.startPage}" end="${page.endPage}"
						var="idx">
						<li><a href="listPage${page.makeQuery(idx)}">${idx}</a></li>
					</c:forEach>

					<c:if test="${page.next && page.endPage > 0}">
						<li><a href="listPage${page.makeQuery(page.endPage + 1)}">다음</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</section>
	
	<%@include file="../finfo/footer.jsp"%>
	<script src="/resources/js/main.js"></script>
</body>
</html>