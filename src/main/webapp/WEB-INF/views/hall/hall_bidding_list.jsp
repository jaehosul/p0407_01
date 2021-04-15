<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>웨딩수다</title>

<link rel="stylesheet" href="/css/reset.css" type="text/css">
<link rel="stylesheet" href="/css/main.css?ver=1" type="text/css">
<link rel="stylesheet" href="/css/sub.css?ver=1" type="text/css">
<link rel="stylesheet" href="/css/sub_detail.css?ver=1" type="text/css">
<link rel="stylesheet" href="../fonts/NanumBarunGothic.css?ver=1"
	type="text/css">

</head>
<body>
	<!-- header -->
	<jsp:include page="../include/header.jsp">
		<jsp:param name="category" value="product1" />
	</jsp:include>


	<div class="cm_board_normal">
		<table summary="게시판목록">
			<colgroup>
				<col width="8%">
				<col width="*">
				<col width="12%">
				<col width="12%">
				<col width="7%">
			</colgroup>

			<!-- 제목 -->
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>

				<!-- 내용 -->
				<c:forEach var="dto" items="${map.list }">
					<tr>
						<td><span class="table-notice">${dto.bidding_id }</span></td>
						<td class="table-title">
							<c:forEach begin="1" end="${dto.bidding_indent }">
								<img src="../images/icon_reply.png">
							</c:forEach> 
							<a href="./content_view?bidding_id=${dto.bidding_id}&page=${map.page}&search=${map.search}">${dto.bidding_title }</a>
						</td>
						<td>${dto.bidding_name }</td>
						<td>${dto.bidding_date }</td>
						<td>${dto.bidding_hit }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<div id="board_link_wrap">
		<div id="board_link_num">

			<!-- 페이지 번호넣기 -->
			<a href="../hall/hall_bidding_list?search=${map.search}&page=1">&lt;&lt;</a>
			<c:choose>
				<c:when test="${map.page <= 1 }">&lt;</c:when>
				<c:otherwise>
					<a href="../hall/hall_bidding_list?search=${map.search}&page=${map.page-1}">&lt;</a>
				</c:otherwise>
			</c:choose>

			<!-- 번호반복 -->
			<c:forEach var="nowpage" begin="${map.startpage }"
				end="${map.endpage }">
				<c:choose>
					<c:when test="${map.page==nowpage}">${nowpage}</c:when>
					<c:otherwise>
						<a href="../hall/hall_bidding_list?search=${map.search }&page=${nowpage}">${nowpage}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${map.page >= map.maxpage }">&gt;</c:when>
				<c:otherwise>
					<a href="../hall/hall_bidding_list?search=${map.search }&page=${map.page+1}">&gt;</a>
				</c:otherwise>
			</c:choose>
			<a href="../hall/hall_bidding_list?search=${map.search }&page=${map.maxpage}">&gt;&gt;</a>
		</div>


		<div id="board_write">
		<a href="./write_view?page=${map.page}">
			<input class="board_write_btn" type="button" value="글쓰기"
				id="regist_btn"
				style="cursor: pointer; font-family: NanumBarunGothic; font-size: 15px;"></a>
		</div>
	</div>

	<div id="board_bottom">
		<form id="board_bottom_bx" name="board_bottom_bx" method="get"
			action="./hall_bidding_list">
			<input type="hidden" name="pageNo">
			<ul>
				<li class="name_title"><input type="text" name="search"
					id="keyword" class="name_view_wrap" value="${map.search}" 
					style="padding-left: 5px;">
				<input type="image" 
					class="name_view_zoom" src="../images/index_zoom02.png">
				</li>
			</ul>
		</form>
	</div>


	<!-- footer -->
	<jsp:include page="../include/footer.jsp">
		<jsp:param name="category" value="product2" />
	</jsp:include>
</body>
</html>