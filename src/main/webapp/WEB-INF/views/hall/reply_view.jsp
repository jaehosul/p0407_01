<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업제 작성 입찰 신청</title>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean"
	rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/write.css">

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
       function writeCheck(){
    	   if($("#bidding_name").val()==""){
    		   alert("작성자를 꼭 적으셔야 합니다.");
    		   $("#bidding_name").focus();
    		   return false;
    		   
    	   }
    	   if($("#bidding_title").val()==""){
    		   alert("타이틀을 꼭 적으셔야 합니다.");
    		   $("#bidding_title").focus();
    		   return false;
    		   
    	   }
    	   if($("#bidding_content").val()==""){
    		   alert("내용을 꼭 적으셔야 합니다.");
    		   $("#bidding_content").focus();
    		   return false;
    	   }
    	   document.writeForm.submit();
       }
    
    </script>

</head>

<body>
	<!-- header -->
	<jsp:include page="../include/header.jsp">
		<jsp:param name="category" value="product1" />
	</jsp:include>


	<div id="contain02_text">
		<span class="title_name">입찰 신청 페이지 수정</span> <span class="title_detail">수정할 내용을 입력하세요.</span>
	</div>

	<section>
		<hr>

		<form action="/hall/reply" id="writeForm" name="writeForm" method="post">
			<table>
			
			    <input type="hidden" name="page" value="${map.page }">
      			<input type="hidden" name="bidding_id" value="${map.biddingDto.bidding_id }">
      			<input type="hidden" name="search" value="${map.search}">
				<input type="hidden" name="bidding_group" value="${map.biddingDto.bidding_group }">
      			<input type="hidden" name="bidding_step" value="${map.biddingDto.bidding_step }">
      			<input type="hidden" name="bidding_indent" value="${map.biddingDto.bidding_indent }">
			
			
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="bidding_name" id="bidding_name" value="${map.biddingDto.bidding_name }" readonly></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="bidding_title" id="bidding_title" value="[답글] ${map.biddingDto.bidding_title }"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="bidding_content" id="bidding_content" cols="50" rows="10">
---------------------------
[답글]
${map.biddingDto.bidding_content }</textarea></td>
				</tr>
			</table>
			<hr>
			<div class="button-wrapper">
				<button type="button" class="write" onclick="writeCheck()">작성완료</button>
				<button type="button" class="cancel" onclick="javascript:location.href='./hall_bidding_list'">취소</button>
			</div>
		</form>

	</section>
<hr>




	<!-- footer -->
	<jsp:include page="../include/footer.jsp">
		<jsp:param name="category" value="product2" />
	</jsp:include>
</body>
</html>