<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<tiles:insertAttribute name="asset"></tiles:insertAttribute>
</head>
<body>
	<main>
		<tiles:insertAttribute name="login"></tiles:insertAttribute>
	</main>
</body>
</html>