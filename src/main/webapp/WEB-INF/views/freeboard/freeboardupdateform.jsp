<%@page import="com.baedang.biz.freeboard.FreeboardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
	String member = (String)session.getAttribute("member_id");
/* 	FreeboardVO freeboard = (FreeboardVO)session.getAttribute("Freeboard");
	System.out.println(freeboard.getFrboard_seq()); */
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<form action="updateBoard.do" method="POST">
			<input type="hidden" name="frboard_seq" value="${ freeboard.frboard_seq }" >
			<input type="hidden" name="member_id" value="<%=member %>" >
			<table class="table">
				<tr class="sub_table">
					<td>
						<input type="text" name="frboard_title" size="50" placeholder="????????? ??????????????????." />
					</td>
				</tr>
				<tr class="sub_table">
					<td>
						<textarea id="frboard_content" name="frboard_content"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="??????">
		</form>
	</center>
</body>
</html>