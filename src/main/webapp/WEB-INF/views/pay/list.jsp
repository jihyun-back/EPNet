<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<link rel="stylesheet" href="/epnet/resources/css/pay.css">

<!-- 
	경비 메뉴 들어 왔을 때
	본인이 등록한 경비 내역 
 -->

	<div id="wrap">
		
		<!-- 작업 공간 -->
		
		<!-- 상단 검색바 -->
		<div class="search">
			<div class="btns">
				<div class="btn" id="term_btn">검색기간</div>
				<div class="btn">1일</div>
				<div class="btn">1주일</div>
				<div class="btn">1개월</div>
				<div class="btn">6개월</div>
				
				<input type="text" id="search_word" placeholder="날짜를 입력해주세요  ex)2020-09-09" autocomplete="off">
				<button type="button" id="search_btn">검색</button>
			</div>
		</div>
		
		
		<!-- 상단 검색바 -->
		<div class="search">
			<div class="btns" id="type_search">
				<div class="btn" id="type_btn">검색종류</div>
				<select id="search_sel">
					<option value="0">전체</option>
					<option value="1">성명</option>
					<option value="2">부서</option>
					<option value="3">지출금액</option>
					<option value="4">종류</option>
					<option value="5">내용</option>
				</select>
				<input type="text" id="type_search_word" placeholder="검색어를 입력해주세요 " autocomplete="off">
				<button type="button" id="type_search_btn">검색</button>
			</div>
		</div>
		
		
		<!-- 테이블 -->
		<table class="tbl">
			<thead>
				<tr>
					<th>No.</th>
					<th>성명</th>
					<th>부서</th>
					<th>지출 금액</th>
					<th>종류</th>
					<th>내용</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${list}" var="dto">
			
				<tr>
					<td>${dto.rnum}</td>
					<td>${dto.name}</td>
					<td>${dto.department}</td>
					<td>${dto.money}</td>
					<td>${dto.type}</td>
					<td>${dto.content}</td>
					<td>${dto.time}</td>
				</tr>
				
			</c:forEach>
				<!-- <tr>
					<td>2</td>
					<td>Joon Soo</td>
					<td>영업부</td>
					<td>23,400</td>
					<td>교통비</td>
					<td>택시</td>
					<td>2020-09-01</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Dan Chu</td>
					<td>인사부</td>
					<td>10,000</td>
					<td>교통비</td>
					<td>택시</td>
					<td>2020-09-01</td>
				</tr>
				<tr>
					<td>4</td>
					<td>Min Ji</td>
					<td>인사부</td>
					<td>34,000</td>
					<td>교통비</td>
					<td>택시</td>
					<td>2020-09-01</td>
				</tr>
				<tr>
					<td>5</td>
					<td>Yu Ji</td>
					<td>인사부</td>
					<td>56,000</td>
					<td>교통비</td>
					<td>택시</td>
					<td>2020-09-01</td>
				</tr>
				<tr>
					<td>6</td>
					<td>Hee Sun</td>
					<td>개발부</td>
					<td>123,000</td>
					<td>교통비</td>
					<td>택시</td>
					<td>2020-09-01</td>
				</tr>
				<tr>
					<td>7</td>
					<td>Joon Soo</td>
					<td>영업부</td>
					<td>23,400</td>
					<td>교통비</td>
					<td>택시</td>
					<td>2020-09-01</td>
				</tr>
				<tr>
					<td>8</td>
					<td>Dan Chu</td>
					<td>인사부</td>
					<td>10,000</td>
					<td>교통비</td>
					<td>택시</td>
					<td>2020-09-01</td>
				</tr>
				<tr>
					<td>9</td>
					<td>Min Ji</td>
					<td>인사부</td>
					<td>34,000</td>
					<td>교통비</td>
					<td>택시</td>
					<td>2020-09-01</td>
				</tr>
				<tr>
					<td>10</td>
					<td>Yu Ji</td>
					<td>인사부</td>
					<td>56,000</td>
					<td>교통비</td>
					<td>택시</td>
					<td>2020-09-01</td>
				</tr> -->
			</tbody>
		</table>
		
		
		
		<!-- 페이징  -->
		<div id="paging">
			<div class="paging_btns">
				<button type="button" class="pre page_btn">이전</button>
				<button type="button" class="sel page_btn">1</button>
				<button type="button" class="page_btn">2</button>
				<button type="button" class="page_btn">3</button>
				<button type="button" class="page_btn">4</button>
				<button type="button" class="page_btn">5</button>
				<button type="button" class="next page_btn">다음</button>
			</div>
		</div>
		
		
		
	<!-- wrap -->	
	</div>
