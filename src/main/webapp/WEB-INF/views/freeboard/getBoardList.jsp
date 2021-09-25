<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html >
<% 
String member = "";
if(!(session.getAttribute("member_id") == null)){
	member = (String)session.getAttribute("member_id");
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 목록</title>

<style type="text/css">
.table {
   border-collapse: collapse;
   width: 800px !important;
   border-left: 0px !important;
   border-right: 0px !important;
}

.table th {
   color: white;
   background: #ffcccc;
   font-size: 14px;
   text-align: center;
   width: 200px;
}

.table th, .table td {
   padding: 10px;
   border: 1px solid #ddd;
}

.table th:first-child, .table td:first-child {
   border-left: 0;
}

.table th:last-child, .table td:last-child {
   border-right: 0;
}

.table tr td:first-child {
   text-align: center;
}

.table tr td{
   text-align: center !important;
}

.table caption {
   caption-side: bottom;
   display: none;
}

.sub_table {
   text-align: left;
}

button {
   display: inline-block;
   padding: 12px 24px;
   background: rgb(220, 220, 220);
   font-weight: bold;
   color: rgb(120, 120, 120);
   border: none;
   outline: none;
   border-radius: 3px;
   cursor: pointer;
   transition: ease 0.3s;
}

button:hover {
   background: #8bc34a;
   color: #ffffff;
}

#sub_menu {
   top: -1.6em;
   padding: 10px;
   font-family: sans-serif;
   font-size: 1em;
   letter-spacing: 1px;
   color: rgb(120, 120, 120);
}

#header1 {
   top: -1.6em;
   font-family: sans-serif;
   font-size: 1.2em;
   letter-spacing: 1px;
   color: rgb(120, 120, 120);
}

#header2 {
   top: -1.6em;
   font-family: sans-serif;
   font-size: 1.2em;
   letter-spacing: 1px;
   color: rgb(120, 120, 120);
}
</style>
</head>
<body>
	<center>
		<h1>글 목록</h1>
		<h3>자유게시판</a>
		</h3>
		<!-- 검색 시작 -->
		<form action="getBoardList.do" method="post">
			<table class="table">
				<tr class="sub_table">
					<td align="right">
					<select name="searchCondition">
						<c:forEach items="${conditionMap }" var="option">
							<option value="${option.value }">${option.key }
						</c:forEach>							
					</select> 
					<input name="searchKeyword" type="text" /> 
					<input type="submit" value="검색" /></td>
				</tr>
			</table>
		</form>
		<!-- 검색 종료 -->
		<table class="table">
			<tr class="sub_table">
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">등록일</th>
				<th bgcolor="orange" width="100">조회수</th>
			</tr>
			<c:forEach items="${freeboardList }" var="freeboard">
				<tr class="sub_table">
					<td>${freeboard.repleCnt }</td>
					<td align="left">
						<a href="getBoard.do?frboard_seq=${freeboard.frboard_seq }&member_id=${freeboard.member_id}">
							${freeboard.frboard_title }
						</a>
					</td>
					<td>${freeboard.member_id }</td>
					<td>${freeboard.frboard_regdate }</td>
					<td>${freeboard.frboard_count }</td>
				</tr>
			</c:forEach>
		</table>
	<%if(!(member.equals(""))){ %>
		<br> <a href="insertboardform.do">새글 등록</a>
	<%} %>
	<div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="getBoardList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="getBoardList.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="getBoardList.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
	</center>
</body>
</html>