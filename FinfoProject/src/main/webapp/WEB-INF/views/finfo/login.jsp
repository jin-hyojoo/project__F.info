<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../finfo/header2.jsp"%>
<!-- footer 스타일 떄문에 추가  -->

<div class="login-page">
	<div class="form">
		<form action="${path}/finfo/register" method="post" class="register-form">
			<input name="u_email" type="text" placeholder="이메일" />
			<input name="u_pw" type="password" placeholder="비밀번호" />
			<input name = "u_name" type="text" placeholder="이름" />
			<div class="like-one">
					<label style="text-align: left; color: #3ea282; font-weight: bold;">* 1순위 선호도</label>
						
						<input type="radio" name="u_like1" id="radio1-1" value="종합"  >
	    			   <label for="radio1-1">종합</label>
	    				<input type="radio" name="u_like1" id="radio1-2" value="재즈" >
	    				   <label for="radio1-2">재즈</label>
	    				<input type="radio"  name="u_like1" id="radio1-3" value="일렉">
	     				  <label for="radio1-3">일렉</label> 
	     				  <input type="radio" name="u_like1" id="radio1-4" value="콘서트" >
	     				  <label for="radio1-4">콘서트</label> 
	     				  <input type="radio" name="u_like1" id="radio1-5" value="락"  >
	    			   <label for="radio1-5">락</label>
	    			   <input type="radio" name="u_like1" id="radio1-6" value="EDM"  >
	    			   <label for="radio1-6">EDM</label>
	    			   <input type="radio" name="u_like1" id="radio1-7" value="힙합"  >
	    			   <label for="radio1-7">힙합</label>
	    			   <input type="radio" name="u_like1" id="radio1-8" value="클래식"  >
	    			   <label for="radio1-8">클래식</label>
			</div>
			
			<div class="like-two">
					<label style="padding-top: 2%; text-align: left; color: #3ea282; font-weight: bold;">* 2순위 선호도</label>
						
						<input type="radio" name="u_like2" id="radio2-1" value="종합"  >
	    			   <label for="radio2-1">종합</label>
	    				<input type="radio" name="u_like2" id="radio2-2" value="재즈" >
	    				   <label for="radio2-2">재즈</label>
	    				<input type="radio"  name="u_like2" id="radio2-3" value="일렉">
	     				  <label for="radio2-3">일렉</label> 
	     				  <input type="radio" name="u_like2" id="radio2-4" value="콘서트" >
	     				  <label for="radio2-4">콘서트</label> 
	     				  <input type="radio" name="u_like2" id="radio2-5" value="락"  >
	    			   <label for="radio2-5">락</label>
	    			   <input type="radio" name="u_like2" id="radio2-6" value="EDM"  >
	    			   <label for="radio2-6">EDM</label>
	    			   <input type="radio" name="u_like2" id="radio2-7" value="힙합"  >
	    			   <label for="radio2-7">힙합</label>
	    			   <input type="radio" name="u_like2" id="radio2-8" value="클래식"  >
	    			   <label for="radio2-8">클래식</label>
			</div>
				<br>
				<button>join</button>
				<p class="message">
					회원이신가요?<a href="#"> 로그인하기</a>
		</form>
		
		
		<form action="${path}/finfo/loginpost" method="post" class="login-form">
				<input name="u_email" type="text" placeholder="이메일" />
				<input name="u_pw" type="password" placeholder="비밀번호" />
				<button>login</button>
				<p class="message">
					F.INFO에 같이 참여하실래요?<a href="#"> 가입하러가기</a>
				</p>
		</form>
	</div>
</div>

<%@include file="../finfo/footer.jsp"%>
