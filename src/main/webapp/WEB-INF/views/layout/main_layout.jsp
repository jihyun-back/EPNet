<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EPNet</title>
<tiles:insertAttribute name="asset"></tiles:insertAttribute>
</head>
<body>

	<div id="wrap">

		<tiles:insertAttribute name="submenu"></tiles:insertAttribute>

		<div id="container">
			<div class="top_box"></div>
			<div class="box">
				<tiles:insertAttribute name="content"></tiles:insertAttribute>
			</div>
			<div style="clear: both;"></div>
			<!-- content tiles 선언 -->
		</div>

		<div style="clear: both;"></div>
	</div>
</body>
</html>