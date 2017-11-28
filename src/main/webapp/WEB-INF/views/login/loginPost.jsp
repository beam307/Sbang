<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		var session = "${login}"
		
		if(session == "")
			alert("로그인이 실패하였습니다. 다시 로그인하십시오.")

    	self.location = "/";
	</script>
</body>
</html>