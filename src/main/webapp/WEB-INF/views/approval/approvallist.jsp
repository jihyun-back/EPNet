<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="/epnet/resources/css/approvallist.css">
<style>

</style>


<div id="wrap">
    <div id="titletxt">받은 결재</div>
    <div class="part">
     	<form action="" method="POST">
        <span class="subtitle" id="type">결재 종류</span>
        <span id="sub"><button type="submit">전체</button></span>
        <span id="sub"><button type="submit">연차</button></span>
        <span id="sub"><button type="submit">지출</button></span>
        <span id="sub"><button type="submit">사직서</button></span>
        </form>
    </div>
    <div class="part">
        <form action="" method="POST">
            <span class="subtitle">검색 기간</span>
            <span id="day"
                ><input type="date" id="first_date" /> ~ <input type="date" id="second_date"
            /></span>
            <button class="subtitle" type="submit">검색</button>
        </form>
    </div>
    <div class="part">
    	<form action="" method="POST">
    		<span class="subtitle">검색 종류</span>
    		<span>
    			<select>
    				<option>전체</option>
    				<option>내용</option>
    				<option>성명</option>
    			</select>
   			</span>
   			<input id="search" type="text" placeholder="검색어를 입력해주세요." autocomplete="off">
   			<button class="subtitle" type="submit">검색</button>
    	</form>
    </div>
 
    <div id="sel">
    	<select>
    		<option>결재 대기</option>
    		<option>결재 완료</option>
    		<option>결재 반려</option>
    	</select>
    </div>
    <div id="board">
    	<table class="table table-striped table-bordered table-hover">
    		<tr>
    			<th>NO.</th>
    			<th>성명</th>
    			<th>아이디</th>
    			<th>제목</th>
    			<th>종류</th>
    			<th>날짜</th>
    		</tr>
    		<c:forEach items="${list}" var="list">
    		<tr>
    			<td>${list.seq}</td>
    			<td>${list.name}</td>
    			<td>${list.id}</td>
    			<td>${list.title}</td>
    			<td>${list.type}</td>
    			<td>${fn:replace(list.day,'00:00:00','')}</td>
    		</tr>
    		</c:forEach>
    	</table>
    </div>
    <div>세션=${seq} totalcount=${totalcount}</div>
</div>
<script>
document.getElementById('first_date').valueAsDate = new Date();
document.getElementById('second_date').valueAsDate = new Date();




</script>
