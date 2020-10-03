<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/epnet/resources/css/approvallist.css" />

<style>
    #titletxt {
        font-weight: bold;
        font-size: 2.5em;
        margin-left: 30px;
        padding-top: 30px;
        color: #7674e2;
    }

    .part {
        margin: 0px auto;
        padding: 10px 30px;
        margin-top: 20px;
        background-color: #f0f0f6;
        width: 60%;
        text-align: center;
    }

    .part span,
    .subtitle,#sub button {
        color: white;
        border-radius: 5px;
        padding: 5px 20px;
    }

    .subtitle {
        background-color: #2e364a;
    }

    #sub button {
        background-color: #5b6172;
    }
    #day {
        color: black;
        margin-right: 20px;
    }
    select{
    	color: black;
    	padding: 5px;
    }
    #search{
    	padding: 5px;
    	margin-right: 13px;
    	width: 250px;
    }
    #type{
    	margin-left: 25px;
    }
    #board th, #board td{
    	text-align: center;
    	padding: 10px;
    }
    #board,#sel{
    	width: 80%;
    	margin: 0px auto; 
    }
    
    #board th{
    	background-color: #2e364a;
    	color: white;
    }
    #sel{
    	text-align: right;
    	margin-top: 100px;
    }
    
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
    				<option>이름</option>
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
    			<th>부서</th>
    			<th>제목</th>
    			<th>내용</th>
    			<th>상태</th>
    			<th>날짜</th>
    		</tr>
    		<tr>
    			<td></td>
    			<td></td>
    			<td></td>
    			<td></td>
    			<td></td>
    			<td></td>
    			<td></td>
    		</tr>
    	</table>
    </div>
    <div>세션=${seq} totalcount=${totalcount}</div>
</div>
<script>
document.getElementById('first_date').valueAsDate = new Date();
document.getElementById('second_date').valueAsDate = new Date();




</script>
