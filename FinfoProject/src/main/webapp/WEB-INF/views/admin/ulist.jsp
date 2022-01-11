<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	

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
						<li class="active">
                            <a href="ulist">
                                <i class="far fa-user"></i>Users</a>
                        </li>
                        <li>
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
                        <li class="active"> 
                            <a href="ulist">
                                <i class="far fa-user"></i>Users</a>
                        </li>
                        <li>
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
                            <form class="form-header" action="/admin/ulist" method="get">
                            		<select name="type" id="select" class="form-control" style="margin-right: 3px;">
	                                    <option value=""
	                                    	<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>선택</option>
	                                    <option value="N"
											<c:out value="${pageMaker.cri.type eq 'N'?'selected':''}"/>>이름</option>
	                                    <option value="E"
	                                    	<c:out value="${pageMaker.cri.type eq 'E'?'selected':''}"/>>이메일</option>
	                                    <option value="NE"
	                                   		 <c:out value="${pageMaker.cri.type eq 'NE'?'selected':''}"/>>이름 or 이메일</option>
                                    </select>
                                <input class="au-input au-input--xl" type="text" name="keyword" placeholder="Search" 
                             		   value="<c:out value="${pageMaker.cri.keyword}"/>" />
                             	<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
                             	<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
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

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6">
                                <!-- USER DATA-->
                                <div class="user-data m-b-30">
                                    <h3 class="title-3 m-b-30">
                                        <i class="zmdi zmdi-account-calendar"></i>계정 관리</h3>
                                    <div class="table-responsive table-data">
									
										<!-- <form id="modifyForm" action="/admin/u_modify" method='post'>-->
										<form class="modify-form" action="${path}/admin/u_modify" method="post" >
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>번호</td>
                                                    <td>이름</td>
                                                    <td>상태</td>
                                                    <td>권한부여</td>
                                                    <td></td>
                                                </tr>
                                            </thead>
                                            
                                            <tbody>
                                            <c:forEach items="${ulist }" var="users">
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td><c:out value="${users.u_no }"/></td>
                                                    <td>
                                                        <div class="table-data__info">
                                                            <h6><c:out value="${users.u_name }"/></h6>
                                                            <span>
                                                                <a><c:out value="${users.u_email }"/></a>
                                                            </span>
                                                        </div>
                                                    </td>
                                                    <!--<td>
                                                    <c:out value="${users.u_no} "/>  
                                                    </td>-->
                                                    <td>
                                                    	<!-- 버튼에 상태표시  -->
                                                        <c:choose>
                                                        	<c:when test = "${users.u_ck == 0}"> <span class="role user">user</span></c:when>
                                                        	<c:when test = "${users.u_ck == 1}"> <span class="role admin">admin</span></c:when>
                                                        	<c:otherwise><span class="role member">ban</span></c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td>
                                                    	<!--셀렉트로 상태선택 -->
                                                        <div class="rs-select2--trans rs-select2--sm">
                                                            <select class="js-select2"  name= "u_ck" > <!-- name="property" -->
                                                                <c:choose>
                                                                	<c:when test="${users.u_ck == 0 }"> 
                                                                		<option value="1">관리자</option>
                                                                		<option value="0" selected="selected">사용자</option> 
                                              							<option value="2">계정정지</option>
                                                                	</c:when>
                                                                	<c:when test="${users.u_ck == 1 }"> 
                                                                		<option value="1" selected="selected">관리자</option> 
                                                                		<option value="0">사용자</option> 
                                              							<option value="2">계정정지</option>
                                                                	</c:when>
                                                                	<c:otherwise>
                                                                		<option value="1">관리자</option>
                                                                		<option value="0">사용자</option> 
                                                                		<option value="2" selected="selected">계정정지</option>
                                                                	</c:otherwise>
                                                                </c:choose>
                                                            </select>
                                                            <div class="dropDownSelect2">
                                                            </div>
                                                            <!-- 히든 인풋 있던 자리  -->
                                                            <input type="hidden" name="u_no" value= "<c:out value="${users.u_no }"/>">
                                                            
                                                       		 </div>
                                                    </td>
                                                    <td>
					                                    <div class="card-body">
					                                        <button class="btn btn-outline-success btn-sm" id="modify" name="modbtn">수정하기</button>
					                                    </div>
                                                    </td>
                                                </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
										</form>
                                            
                                    <div class="user-data__footer">
		                                <div class='pull-right' style="margin-right: 50%;">
											<ul class="pagination">
												<c:if test="${pageMaker.prev}">
													<li class="paginate_button previous"><a class="page-link"
														href="${pageMaker.startPage -1}">Previous</a></li>
												</c:if>
						
												<c:forEach var="num" begin="${pageMaker.startPage}"
													end="${pageMaker.endPage}">
													<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
														<a class="page-link" href="${num}">${num}</a>
													</li>
												</c:forEach>
						
												<c:if test="${pageMaker.next}">
													<li class="paginate_button next"><a class="page-link"
														href="${pageMaker.endPage +1 }">Next</a></li>
												</c:if>
									       	 </ul>
									    </div>
									    <!-- 페이징 div 끝 -->
                                    </div>
							    </div>
							    <!--div 끝  -->
							
							
							<!-- 페이징 때 사용하는 폼 -->
							<form id='actionForm' action="/admin/ulist" method='get'>
								<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
								<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
								<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'> 
								<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'>
							</form>
							
							<!-- 상태변경 때 사용하는 폼 
							<form id='modifyForm' action="/admin/u_modify" method='post'>
								<input type='hidden' name='u_no' value='${users.u_no }'>
								<input type='hidden' name='u_ck' value='${users.u_ck }'>
							</form>-->
							
                                <!-- END USER DATA-->
                            </div>
                           
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>&copy; 2019 SEOIL COMPUTER-SOFTWARE(4) ALL RIGHT RESERVED.</p>
                                </div>
                            </div>
                        </div>
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
    <script src="../resources/admin/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="../resources/admin/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="../resources/admin/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="../resources/admin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../resources/admin/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="../resources/admin/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="../resources/admin/js/main.js"></script>

	<script type="text/javascript">
		$(document).ready(function(){
			
			//페이징 관련
			var actionForm = $("#actionForm");
			$(".paginate_button a").on("click",function(e) {
					e.preventDefault(); //a태그 클릭해도 페이지 이동없게
					actionForm.find("input[name='pageNum']").val($(this).attr("href"));
					actionForm.submit();
			});
			
			
			//검색관련
			var searchForm = $(".form-header");
			$(".au-btn--submit").on("click", function(e) {
						if (!searchForm.find("option:selected").val()) {
							alert("검색종류를 선택하세요");
							return false;
						}

						if (!searchForm.find("input[name='keyword']").val()) {
							alert("키워드를 입력하세요");
							return false;
						}

						searchForm.find("input[name='pageNum']").val("1");

						//키워드 없으면 검색제어
						e.preventDefault();
						searchForm.submit();
			});
			
		}); //스크립트 종료
	</script>
	
	
</body>
</html>
<!-- end document-->