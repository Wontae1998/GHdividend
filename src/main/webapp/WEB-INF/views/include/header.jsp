<%@page import="com.baedang.biz.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
	String member_id = (String)session.getAttribute("member_id");
%>
<style>
	#mainlogo{
		width: 200px;
		height:40px;
	}
	#topMenu { 
		height: 30px; 
        width: 100%; 
      	position: fixed;
      	top:0; left:0; 
    }
    #topMenu ul{
      	font-size: 0;
    }
    #topMenu ul li { 
		list-style: none; 
		color: white; 
		background-color: #2d2d2d; 
		display: inline-block;
		vertical-align: middle;
		line-height: 30px; 
		vertical-align: middle; 
		text-align: center;
		position: relative;
    }
    #topMenu ul ul li { 
      	display: block;
    }
    #topMenu ul ul li a{
      	font-size: 12px;
		color: #fff;
		text-decoration: none;
		padding: 2px 0 3px;
		display: block;
    }
    #topMenu ul ul li a:hover{
      	background: #666;
    }
    #topMenu .menuLink { 
		text-decoration:none; 
		color: white; 
		display: block; 
		width: 150px; 
		font-size: 12px; 
		font-weight: bold; 
		font-family: "Trebuchet MS", Dotum, Arial;
    }
    #topMenu .menuLink:hover {
		color: #ffcccc; 
		background-color: #4d4d4d;
    }
    ul li ul {
		display: none;
		position: absolute;
		padding: 0;
		left: 0;
		width: 100%;
	}
	ul li:hover ul {  
		display:block;
	}
	ul li ul li {
		float:none;
	}
</style>
<header>
	<a href="/app">
		<img id="mainlogo" alt="배당의 민족" src="${pageContext.request.contextPath}/resources/img/logo_img.jpg">
		<img id="mainlogo" alt="배당의 민족" src="${pageContext.request.contextPath}/resources/img/logo_txt.jpg">
	</a>
	<h3>주식배당 정보 모음</h3>
	
<%-- 	<%if (member_id == null) { %>
	<a href="login.do">로그인&nbsp;&nbsp;</a>|&nbsp;&nbsp;
	<%} else { %>
	<a href="mypage.do">마이페이지&nbsp;&nbsp;</a>|&nbsp;&nbsp;
	<a href="logout.do">로그아웃&nbsp;&nbsp;</a>|&nbsp;&nbsp;
	<a href="getCartList.do">나의 관심종목&nbsp;&nbsp;</a>|&nbsp;&nbsp;
	<%} %>
	<a href="getDividendMain.do">배당종목&nbsp;&nbsp;</a>&nbsp;&nbsp;
	<a href="getBoardList.do">자유게시판&nbsp;&nbsp;</a>|&nbsp;&nbsp;
	<a href="calculate.do">복리계산기&nbsp;&nbsp;</a>|&nbsp;&nbdsp;
	<a href="directions.do">찾아오시는 길</a>&nbsp;&nbsp; --%>
</header>

<nav id="topMenu">
    <ul>
        <li>
        	<a class="menuLink" href="/app">SERVICE</a>
        		<ul class="submenu">
        			<li><a class="submenuLink longLink"  href="projectMember.do">만든 사람&nbsp;&nbsp;</a>|&nbsp;&nbsp;</li>
        		</ul>
        </li>
        <li><a class="menuLink" href="getDividendMain.do">TOP LINE</a></li>
        <li><a class="menuLink" href="getBoardList.do">COMMUNITY</a></li>
        <li><a class="menuLink" href="#">NOTICE</a></li>
        <li><a class="menuLink" href="calculate.do">CALCULATOR</a></li>
        <li><a class="menuLink" href="login.do">LOGIN</a>
        	<sec:authorize access="hasAnyRole('user')">
	        	<ul class="submenu">
			    	<li><a class="submenuLink longLink" href="logout.do">LOGOUT</a></li>
			    	<li><a class="submenuLink longLink" href="mypage.do">MYPAGE</a></li>
			    	<li><a class="submenuLink longLink" href="getCartList.do">MYFAVORATE</a></li>
		    	</ul>
	    	</sec:authorize>
        </li>
    </ul>
</nav>