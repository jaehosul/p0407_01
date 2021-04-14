<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<c:choose>
			<c:when test="${session_flag == null || session_flag == 'fail' }" >
				<script type="text/javascript">
					alert('아이디 또는 비밀번호가 일치하지 않습니다.! 다시 입력해주세요.!');
					location.href="./login";
				</script>
			</c:when>
			<c:otherwise>
				<script type="text/javascript">
					alert('로그인 성공!');
					location.href="../info/studio_list";
				</script>
			</c:otherwise>
		</c:choose>
		<meta charset="UTF-8">
		<title>login_check</title>
	</head>
	<body>
		
	</body>
</html>