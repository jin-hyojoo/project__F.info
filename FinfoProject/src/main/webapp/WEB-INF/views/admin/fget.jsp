<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>F.INFO : Admin page</title>

    <!-- Fontfaces CSS-->
    <link href="../resources/admin/css/font-face.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="../resources/admin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
    <!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" > -->

    <!-- Vendor CSS-->
    <link href="../resources/admin/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../resources/admin/css/theme.css" rel="stylesheet" media="all">
</head>


<!-- body 시작--------------------------------------------------------------------------------------- -->
<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE  모바일 버전-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="ulist">
                            <img src="../resources/admin/images/icon/logo1.png" alt="Finfo" style="max-width: 28%;" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
						<li>
                            <a href="ulist">
                                <i class="far fa-user"></i>Users</a>
                        </li>
                        <li  class="active">
                            <a href="flist">
                                <i class="fas fa-table"></i>Festival</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR  PC 사이드 바 -->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="ulist">
                    <img src="../resources/admin/images/icon/logo1.png" alt="Finfo" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li> 
                            <a href="ulist">
                                <i class="far fa-user"></i>Users</a>
                        </li>
                        <li  class="active">
                            <a href="flist">
                                <i class="fas fa-table"></i>Festival</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP  헤더 검색, 사용자 아이콘 부분-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                        	<!-- 검색 창 -->
                            <form class="form-header" action="/admin/flist" method="get">
                            		<select name="type" id="select" class="form-control" style="margin-right: 3px;">
	                                    <option value="">선택</option>
	                                    <option value="N">축제명</option>
	                                    <option value="E">장르</option>
	                                    <option value="NE">축제명 or 장르</option>
                                    </select>
                                <input class="au-input au-input--xl" type="text" name="keyword" placeholder="Search"   />
                             	<input type='hidden' name='pageNum'/> 
                             	<input type='hidden' name='amount' />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            
                            <div class="header-button">
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                       <div class="image">
                                            <img src="../resources/admin/images/icon/avatar-01.jpg" alt="John Doe" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">${userSession.u_name }</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="../resources/admin/images/icon/avatar-01.jpg" alt="John Doe" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">${userSession.u_name }</a>
                                                    </h5>
                                                    <span class="email">${userSession.u_email }</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="../finfo/logout">
                                                    <i class="zmdi zmdi-power"></i>로그아웃</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- END HEADER DESKTOP-->


<!-- 본 내용 시작 ----------------------------------------------------------------------------------->

			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-6">
							
									<div class="card" style="width: 1300px;">
										<div class="card-header">
											<strong>페스티벌 등록</strong>
										</div>
										<div class="card-body card-block" style="padding: 5%;">
											<!-- 축제명 -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label class=" form-control-label">축제명</label>
												</div>
												<div class="col-12 col-md-9">
													<small class="form-text text-muted">Festival Name</small> 
													<input type="text" name="f_SUBJECT"
														   class="form-control" value='<c:out value="${festival.f_SUBJECT}"/>' readonly="readonly">
												</div>
											</div>

											<!-- 축제 진행 기간  -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">시작
														/ 마감일</label>
												</div>
												<div class="col-12 col-md-9">
													<small class="form-text text-muted">페스티벌 진행기간</small> 
													<input type="text"  name="f_START" value='<fmt:formatDate pattern="yyyy.MM.dd" value="${festival.f_START}"/>'
														class="form-control" style="width: 40%; float: left;" readonly="readonly">
													<input type="text"  name="f_END" value='<fmt:formatDate pattern="yyyy.MM.dd" value="${festival.f_END}"/>'
														class="form-control" style="width: 40%; float: left; margin-left: 10px;" readonly="readonly">
												</div>
											</div>

											<!-- 축제장소 -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="email-input" class=" form-control-label">축제장소</label>
												</div>
												<div class="col-12 col-md-9">
													<small class="help-block form-text">Festival Place</small>
													<input type="text"  name="f_PLACE" class="form-control"
															value='<c:out value="${festival.f_PLACE}"/>' readonly="readonly">
												</div>
											</div>

											<!-- 태그등록  -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="password-input" class=" form-control-label">태그등록</label>
												</div>
												<div class="col-12 col-md-9">
													<small class="form-text text-muted">More Keywords with Festival</small> 
													<input type="text"  name="f_TAG1" class="form-control" placeholder="Tag 1"
														   value='<c:out value="${festival.f_TAG1}"/>'readonly="readonly" style="width: 40%; float: left;"> 
													<input type="text" name="f_TAG2" class="form-control" placeholder="Tag 2"
														   value='<c:out value="${festival.f_TAG2}"/>'readonly="readonly" style="width: 40%; float: left; margin-left: 10px;">
												</div>
											</div>

											<!-- 장르/ 상태 -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="disabled-input" class=" form-control-label">장르
														/ 진행상황</label>
												</div>
												<div class="col-12 col-md-9">
													<small class="form-text text-muted">Festival's
														Genre
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;State of Festival</small> 
														
														<!-- 장르정보 보이기 -->
														<c:choose>
															<c:when test="${festival.g_NO == 0 }">
																<input type="text"  name="g_NO" class="form-control" 
														   		value="종합" readonly="readonly" style="width: 40%; float: left;"> 
														   	</c:when>
														   	<c:when test="${festival.g_NO == 1 }">
																<input type="text"  name="g_NO" class="form-control"
														   		value="재즈" readonly="readonly" style="width: 40%; float: left;"> 
														   	</c:when>
														   	<c:when test="${festival.g_NO == 2 }">
																<input type="text"  name="g_NO" class="form-control"
														   		value="일렉" readonly="readonly" style="width: 40%; float: left;"> 
														   	</c:when>
														   	<c:when test="${festival.g_NO == 3 }">
																<input type="text"  name="g_NO" class="form-control" 
														   		value="콘서트" readonly="readonly" style="width: 40%; float: left;"> 
														   	</c:when>
														   	<c:when test="${festival.g_NO == 4 }">
																<input type="text"  name="g_NO" class="form-control" 
														   		value="락" readonly="readonly" style="width: 40%; float: left;"> 
														   	</c:when>
														   	<c:when test="${festival.g_NO == 5 }">
																<input type="text"  name="g_NO" class="form-control" 
														   		value="EDM" readonly="readonly" style="width: 40%; float: left;"> 
														   	</c:when>
														   	<c:when test="${festival.g_NO == 6 }">
																<input type="text"  name="g_NO" class="form-control" 
														   		value="힙합" readonly="readonly" style="width: 40%; float: left;"> 
														   	</c:when>
														   	<c:otherwise>
														   		<input type="text"  name="g_NO" class="form-control" 
														   		value="클래식" readonly="readonly" style="width: 40%; float: left;"> 
														   	</c:otherwise>
														</c:choose>
														
														<!-- 축제 상태 정보 보이기 -->
														<c:choose>
															<c:when test="${festival.f_STATE == 0 }">
																<input type="text"  name="f_STATE" class="form-control" 
														   		value="예정" readonly="readonly" style="width: 40%; float: left; margin-left: 10px;"> 
														   	</c:when>
														   	<c:when test="${festival.f_STATE == 1 }">
																<input type="text"  name="f_STATE" class="form-control" 
														   		value="진행중" readonly="readonly" style="width: 40%; float: left; margin-left: 10px;"> 
														   	</c:when>
														   	<c:otherwise>
																<input type="text"  name="f_STATE" class="form-control" 
														   		value="마감" readonly="readonly" style="width: 40%; float: left; margin-left: 10px;"> 
															</c:otherwise>
														</c:choose>
														
												</div>
											</div>

											<!-- 상세 정보 -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="textarea-input" class=" form-control-label">축제정보</label>
												</div>
												<div class="col-12 col-md-9">
													<textarea name="f_DESC"
														rows="5" class="form-control" readonly="readonly" >
														<c:out value="${festival.f_DESC}"/>
													</textarea>
												</div>
											</div>

											<!-- 축제 URL / 축제 가격 -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="selectSm" class=" form-control-label">축제
														URL / 가격</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text"  name="f_URL"
														class="form-control" placeholder="Festival URL"   
														value='<c:out value="${festival.f_URL}"/>'readonly="readonly"
														style="width: 40%; float: left;"> <input
														type="text"  name="f_SHOWLOWPRICE"
														class="form-control" placeholder="(￦)가격 "   
														value='<c:out value="${festival.f_SHOWLOWPRICE}"/>'readonly="readonly"
														style="width: 40%; float: left; margin-left: 10px;">
												</div>
											</div>
										</div>
										<div class="card-footer">
											<button data-oper="modify" class="btn btn-primary btn-sm" style="float: right;">수정하기</button>
											<button data-oper="list" class="btn btn-danger btn-sm" style="float: right; margin-right: 10px;">돌아가기</button>
											
											
											<form id='operForm' action="/admin/fmodify" method="get">
												  <input type='hidden' id='f_NO' name='f_NO' value='<c:out value="${festival.f_NO}"/>'>
												  <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
												  <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
										 		  <input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
												  <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
											</form>
										</div>
									</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="copyright">
								<p>&copy; 2019 SEOIL COMPUTER-SOFTWARE(4) ALL RIGHT
									RESERVED.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

    <!-- Jquery JS-->
    <script src="../resources/admin/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="../resources/admin/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="../resources/admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="../resources/admin/vendor/slick/slick.min.js">
    </script>
    <script src="../resources/admin/vendor/wow/wow.min.js"></script>
    <script src="../resources/admin/vendor/animsition/animsition.min.js"></script>
    <script src="../resources/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
     <!-- Main JS-->
    <script src="../resources/admin/js/main.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
	  
		  var operForm = $("#operForm"); 
		  
		  $("button[data-oper='modify']").on("click", function(e){
		    operForm.attr("action","/admin/fmodify").submit();
		  });
		  
		    
		  $("button[data-oper='list']").on("click", function(e){
		    operForm.find("#f_NO").remove();
		    operForm.attr("action","/admin/flist")
		    operForm.submit();
		  });  
		});
	</script>
</body>
</html>
