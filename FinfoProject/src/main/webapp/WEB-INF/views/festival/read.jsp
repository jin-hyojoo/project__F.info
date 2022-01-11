<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../finfo/header.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/resources/styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/font-nanum/1.0/nanumbarungothic/nanumbarungothic.css">
<link rel="stylesheet" type="text/css"
	href="/resources/styles/product.css">
<link rel="stylesheet" type="text/css"
	href="/resources/styles/product_responsive.css">
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/styles/bootstrap4/popper.js"></script>
<script src="/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/resources/plugins/easing/easing.js"></script>
<script src="/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="/resources/js/product_custom.js"></script>
<script>
	function reviewList() {
		var f_NO = ${read.f_NO};
		$.getJSON("/festival/read/reviewList" + "?f_NO=" + f_NO,function(data) {
			var str = "";
			$(data).each(
				function() {
					console.log(data);
					var r_REGDATE = new Date(this.r_REGDATE);
					r_REGDATE = r_REGDATE.toLocaleDateString("ko-US")
					
					str += "<li class='review clearfix' data-r_NO='" + this.r_NO + "'>"
						+ "<div class='review_image'>"
						+ "<img src='/resources/images/people.png' alt='review_img'>"
						+ "</div>"
						+ "<div class='review_content'>"
						+ "<div class='review_name'>"
						+ this.u_EMAIL
						+ "</div>"
						+ "<div class='review_date'>"
						+ r_REGDATE
						+ "</div>"
						+ "<div class='review_text'><p>"
						+ this.r_CONTENT
						+ "</p></div>"
						+ "<c:if test='$user != null}'>"
						+ "<div class='review_footer'>"
						+ "<button type='button' class='review_button modify' data-r_NO='"+ this.r_NO+ "'>수정</button>"
						+ "<button type='button' class='review_button delete' data-r_NO='"+ this.r_NO+ "'>삭제</button>"
						+ "</div>"
						+ "</div>"
						+ "</c:if>" + "</li>";
					});

			$("section.reviews_container ul").html(str);
		});
	}
</script>
</head>
<div class="super_container">

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll"
			data-image-src="/resources/images/${read.f_THUMBNAIL }"
			data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_container">
						<div class="home_content"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Product -->

	<div class="product">
		<div class="container">
			<div class="row">
				<div class="col">
					<section class="current_page">
						<ul>
							<li><a href="/finfo/main">Home</a></li>
							<li><a href="/festival/listPage">Festival</a></li>
							<li>${read.g_NAME}</li>
							<li>${read.f_SUBJECT}</li>
						</ul>
					</section>
				</div>
			</div>
			<div class="row product_row">

				<!-- Product Image -->
				<section class="col-lg-7">
					<div class="product_image">
						<div class="product_image_large">
							<img src="/resources/images/${read.f_THUMBNAIL}" alt="">
						</div>
						<div
							class="product_image_thumbnails d-flex flex-row align-items-start justify-content-start">
							<div class="product_image_thumbnail"
								style="background-image: url(/resources/images/${read.f_THUMBNAIL})"
								data-image="/resources/images/${read.f_THUMBNAIL}"></div>
							<div class="product_image_thumbnail"
								style="background-image: url(/resources/images/${read.f_IMGURL})"
								data-image="/resources/images/${read.f_IMGURL}"></div>
						</div>
					</div>
				</section>

				<!-- Product Content -->
				<section class="col-lg-5">
					<div class="product_content">
						<div class="product_name">${read.f_SUBJECT}</div>
						<div class="tag_wrap">
							<div class="product_tag"># ${read.g_NAME}</div>
							<div class="product_tag"># ${read.f_TAG1}</div>
							<div class="product_tag"># ${read.f_TAG2}</div>
						</div>

						<div class="product_text">
							<h5>
								시작 일 :
								<fmt:formatDate pattern="yyyy/MM/dd" value="${read.f_START}" />
							</h5>
							<h5>
								마감 일 :
								<fmt:formatDate pattern="yyyy/MM/dd" value="${read.f_END}" />
							</h5>
							<h5>장소 : ${read.f_PLACE}</h5>
							<h5>사이트 URL :</h5>
							<a href="${read.f_URL}">${read.f_URL}</a>
							
							<h5>가격 :</h5>${read.f_PRICE}
						</div>
						<div class="button cart_button">
							<a href="${read.f_URL}">자세한 정보 보기</a>
						</div>
					</div>
				</section>
			</div>
		</div>





		<div class="row">
			<div class="col">
				<div class="info_form_container container reviews container">
					<div class="info_form_title reviews_title">상세 설명</div>
					<div class="info_form_content reviews container">
						<img src="/resources/images/${read.f_IMGURL}" alt="">
					</div>
					<div class="info_form_content">${review.f_DESC}</div>
				</div>
			</div>
		</div>

		<!-- Reviews -->
		<div class="row">
			<div class="col">
				<div class="reviews container">
					<div class="reviews_title">reviews</div>
					<section class="reviews_container">
						<ul>
							<%-- ajax전 리뷰 test
								<c:forEach items="${review}" var="review">
									<!-- Review -->
									<li class= "review clearfix">
										<div class="review_image">
											<img src="/resources/images/people.png" alt="review_img">
										</div>
										<div class="review_content">
											<div class="review_name">NO.${review.r_NO}</div>
											<div class="review_name">${review.u_ID}</div>
											<div class="review_date"><fmt:formatDate pattern="yyyy/MM/dd" value="${review.r_REGDATE}"/></div>
											<div class="review_text"><p>${review.r_CONTENT}</p></div>
											<div class="review_footer">
											<button type="button" class="review_button modify">수정</button>
											<button type="button" class="review_button delete">삭제</button>
											</div>
										</div>
									</li>
								</c:forEach>
								--%>
						</ul>
						<script>
							reviewList();
						</script>
					</section>
				</div>
			</div>
		</div>

		<!-- Leave a Review -->

		<div class="row">
			<div class="col">
				<div class="review_form_container container">
					<div class="review_form_title">leave a review</div>
					<c:if test='${empty userSession }'>
						<div class="no_login_review">
							<a href="/finfo/login">로그인</a>후 소감을 남겨주세요.
						</div>
					</c:if>
					<c:if test='${not empty userSession }'>
						<section class="review_form_content">
							<form id="review_form" class="review_form" role="form"
								method="post" autocomplete="off">
								<div
									class="d-flex flex-md-row flex-column align-items-start justify-content-between">
									<input type="hidden" name="f_NO" id="f_NO" value="${read.f_NO}">
								</div>
								<textarea class="review_form_text" name="review_form_text"
									id="reviewCon" placeholder="Leave a Review"></textarea>
								<button type="button" class="review_form_button">leave
									a review</button>
							</form>

							<script>
								$(".review_form_button")
										.click(
												function() {

													var formObj = $(".review_form_content form[role='form']");
													var f_NO = $("#f_NO").val();
													var r_CONTENT = $(
															"#reviewCon").val();

													var data = {
														f_NO : f_NO,
														r_CONTENT : r_CONTENT
													};

													$
															.ajax({
																url : "/festival/read/registerReview",
																type : "post",
																data : data,
																success : function() {
																	reviewList();
																	$(
																			".reviewCon")
																			.attr(
																					'placeholder',
																					'Leave a Review');
																}
															});
												});
							</script>
						</section>
					</c:if>
				</div>
			</div>
		</div>

	</div>
</div>
<div class="replyModal">
	<div class="modalContent">
		<div>
			<textarea class="modal_repCon" name="modal_repCon"></textarea>
		</div>
		<div>
			<button type="button" class="modal_modify_btn">수정</button>
			<button type="button" class="modal_cancel">취소</button>
		</div>
	</div>
	<div class="modalBackground"></div>
</div>
<script>
	$(".modal_cancel").click(function() {
		$(".replyModal").fadeOut(200);
	});
</script>
<script>

	$(".modal_modify_btn").click(function() {
		var modifyConfirm = confirm("정말로 수정하시겠습니까?");
		if (modifyConfirm) {
			var data = {
				repNum : $(this).attr("data-repNum"),
				repCon : $(".modal_repCon").val()
			};// ReplyVO 형태로 데이터 생성 
			$.ajax({
				url : "/festival/read/modifyReview",
				type : "post",
				data : data,
				success : function(result) {
					if (result == 1) {
						replyList();
						$(".replyModal").fadeOut(200);
					} else {
						alert("작성만 수정할 수 있습니다.");
					}
				},
				error : function() {
					alert("로그인을 해주세요.")
				}
			});
		}
	});
</script>
<!-- Footer -->
<%@include file="../finfo/footer.jsp"%>
<script src="../resources/js/main.js"></script>
</body>
</html>