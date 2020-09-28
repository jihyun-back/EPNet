<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<link rel="stylesheet" href="/EPNet/resources/css/login.css">




<!-- 전체 -->
<div id="wrap">
	<div id="login_area">
		<p class="logo" style="font-variant: small-caps;">EPNet</p>
		<form method="POST" action="/bangterior/admin/auth.do" id="login_form">
			<input type="text" placeholder="아이디" id="id_input"
				class="login_input" autocomplete="off"> <input
				type="password" placeholder="비밀번호" id="password_input"
				class="login_input" autocomplete="off">
			<div id="login_btn">로그인</div>
		</form>
		<p class="copyright">Copyrightⓒ2020 EPNet All rights
			reserved.</p>
	</div>
</div>
