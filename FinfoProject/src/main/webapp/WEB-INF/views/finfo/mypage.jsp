<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<%@include file="../finfo/header2.jsp"%>
<!-- footer 스타일 떄문에 추가  -->

<script src="/js/jquery-1.11.0-vsdoc.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<div class="mypage-page">
	<div class="form">
		<form role="form" action="${path}/finfo/modify" method="post" >
			<input name="u_email" type="text" placeholder="이메일" value='${userSession.u_email }' readonly/>
			<input name = "u_name" type="text" placeholder="이름" value='${userSession.u_name }' readonly/>
			<div class="like-one">
			<label style="text-align: left; color: #3ea282; font-weight: bold;">* 1순위 선호도</label>
					<input type="radio" name="u_like1" id="radio1-1" value="종합" >
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
			</div><br>
			<button type="submit" data-oper='modify'>modify</button>
		</form>
			<button type="submit" data-oper='cancel' id='cancelBTN'>cancel</button>
		
	</div>
</div>

<script>
	$("#cancelBTN").on("click", function(){
		self.location = "/";
	});

	var u_like1 = '${userSession.u_like1}';
	var u_like2 = '${userSession.u_like2}';
	
	$(document).ready(function(){
		if(u_like1 == '종합')	{
			$("#radio1-1").attr("checked", true);
		} else if(u_like1 == '재즈'){
			$("#radio1-2").attr("checked", true);
		} else if(u_like1 == '일렉'){
			$("#radio1-3").attr("checked", true);
		} else if(u_like1 == '콘서트'){
			$("#radio1-4").attr("checked", true);
		} else if(u_like1 == '락'){
			$("#radio1-5").attr("checked", true);
		} else if(u_like1 == 'EDM'){
			$("#radio1-6").attr("checked", true);
		} else if(u_like1 == '힙합'){
			$("#radio1-7").attr("checked", true);
		}else if(u_like1 == '클래식'){
			$("#radio1-8").attr("checked", true);
		}
		
		if(u_like2 == '종합')	{
			$("#radio2-1").attr("checked", true);
		} else if(u_like2 == '재즈'){
			$("#radio2-2").attr("checked", true);
		} else if(u_like2 == '일렉'){
			$("#radio2-3").attr("checked", true);
		} else if(u_like2 == '콘서트'){
			$("#radio2-4").attr("checked", true);
		}else if(u_like2 == '락'){
			$("#radio2-5").attr("checked", true);
		}else if(u_like2 == 'EDM'){
			$("#radio2-6").attr("checked", true);
		}else if(u_like2 == '힙합'){
			$("#radio2-7").attr("checked", true);
		}else if(u_like2 == '클래식'){
			$("#radio2-8").attr("checked", true);
		}
	});
</script>


<%@include file="../finfo/footer.jsp"%>
