<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../admin/header.jsp"%>

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6">
                                <!-- USER DATA-->
                                <div class="user-data m-b-30">
                                    <h3 class="title-3 m-b-30">
                                        <i class="fas fa-table"></i>페스티벌 관리
                                          <button id="fwriteBtn" class="au-btn au-btn-load" style="float: right; margin-right: 6%;">축제 등록</button>
                                    </h3>
                                    <div class="table-responsive table-data">
									
										<!-- <form id="modifyForm" action="/admin/u_modify" method='post'>-->
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>축제명</td>
                                                    <td>상태</td>
                                                    <td>상태변경</td>
                                                    <td></td>
                                                </tr>
                                            </thead>
                                            
                                    <tbody>
										 <form id="modify-form" action="/admin/mainmodify" method="post" >
                                            <c:forEach items="${flist }" var="festival">
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <div class="table-data__info">
                                                           <!-- <h6><c:out value="${festival.f_SUBJECT }"/></h6> --> 
                                                            <h6><a class='move' href='<c:out value="${festival.f_NO }"/>'>
                                                            						  <c:out value="${festival.f_SUBJECT }"/>
                                                            	</a>
                                                            </h6>
                                                            <span>
                                                                	<fmt:formatDate pattern="yyyy.MM.dd" value="${festival.f_START}"/>
                                                                	~
                                                                	<fmt:formatDate pattern="yyyy.MM.dd" value="${festival.f_END}"/> 
                                                            </span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                    	<!-- 버튼에 상태표시  -->
                                                        <c:choose>
                                                        	<c:when test = "${festival.f_STATE == 0}"> <span class="role user">시작전</span></c:when>
                                                        	<c:when test = "${festival.f_STATE == 1}"> <span class="role admin">진행중</span></c:when>
                                                        	<c:otherwise><span class="role member">마감</span></c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td>
                                                    	<!--셀렉트로 상태선택 -->
                                                        <div class="rs-select2--trans rs-select2--sm">
                                                            <select class="js-select2" name= "f_ck"> <!-- name="property" -->
                                                                <c:choose>
                                                                	<c:when test="${festival.f_STATE == 0 }"> 
                                                                		<option value="1">진행중</option>
                                                                		<option value="0" selected="selected">시작전</option> 
                                              							<option value="2">마감</option>
                                                                	</c:when>
                                                                	<c:when test="${festival.f_STATE == 1 }"> 
                                                                		<option value="1" selected="selected">진행중</option> 
                                                                		<option value="0">시작전</option> 
                                              							<option value="2">마감</option>
                                                                	</c:when>
                                                                	<c:otherwise>
                                                                		<option value="1">진행중</option>
                                                                		<option value="0">시작전</option> 
                                                                		<option value="2" selected="selected">마감</option>
                                                                	</c:otherwise>
                                                                </c:choose>
                                                            </select>
                                                            <div class="dropDownSelect2">
                                                            </div>
                                                            <!-- 히든 인풋 있던 자리 -->
                                                             <input type="hidden" name="f_no" value="${festival.f_NO }">                                                        		 </div>
                                                    </td>
                                                    <td>
					                                    <div class="card-body">
					                                        <button class="btn btn-outline-success btn-sm" id="modify">수정하기</button>
					                                        <button class="btn btn-outline-danger btn-sm" id="delete">삭제하기</button>
					                                    </div>
					                                </td>
                                                </tr>
                                             </c:forEach>
 										</form>
 									</tbody>
                                                <!-- END FORM -->
                                        </table>
                                            
                                    <div class="user-data__footer">
		                                  <div class='pull-right' style="margin-right: 550px;">
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
							<form id='actionForm' action="/admin/flist" method='get'>
								<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
								<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
								<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'> 
								<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'>
							</form>
							
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
			
			//축제 작성 페이지로 이동
			$("#fwriteBtn").on("click", function() {
				self.location = "/admin/fwrite";
			});
			
			
			//게시글 확인 페이지로 이동
			$(".move").on("click", function(e) {
				e.preventDefault();
				actionForm.append("<input type='hidden' name='f_NO' value='" + $(this).attr( "href") + "'>");
				actionForm.attr("action", "/admin/fget");
				actionForm.submit();
			});
			
			
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
		});//스크립트 종료
	</script>
	
	
</body>
</html>
<!-- end document-->