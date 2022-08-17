<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko">
<title>미니 CRUD 프로젝트</title>
</head>
<style>
	.all {border: 1px solid black;}
	.logo {
	position: static;
	top: 5px;
	margin-left: 10px;
	margin-bottom: 7px;
	}
	.navi {
	height: 100px;
	border-bottom: 1px solid black;
	}
	.navi ul li {
    display: inline;
    padding: 10px 20px;
    margin-right: 50px;
    font-size: 20px;
	}
	.navi ul li:hover {text-decoration: underline;}
	.sidebar h2 {text-align: center;}
	.sidebar li {list-style: none;}
	.sidebar {
	float: left;
	width: 200px;
	height: 500px;
	border-right: 1px solid black;
	margin-right: 10px;
	}
	table, th, td {
	border:1px solid black;
	border-collapse:collapse;
	margin: 0px auto;
	}
	.bt {
	margin: 0px auto;
	display: block;
	text-align: center;
	margin-bottom: 10px;
	}
	th {background: #ccc;}
	input {width: 90%; height: 20px;}
	textarea {width:90%; height: 300px;}
	a {text-decoration: none; color:black;}
</style>
<body>
<div class="all">
	<nav class="navi">
		<div class="logo"><h1>Homepage</h1></div>
		<ul>
			<li><a href="#">메뉴1</a></li>
			<li><a href="#">메뉴2</a></li>
			<li><a href="#">메뉴3</a></li>
			<li><a href="#">메뉴4</a></li>
			<li><a href="#">메뉴5</a></li>
		</ul>
	</nav>
	<aside class="sidebar">
		<h2>메뉴</h2><hr>
		<ul>
			<li><a href="/crud2/selectList.do">CRUD ></a>
		</ul>
	</aside>
<h3>CRUD</h3>
<hr>
	<c:choose>
		<c:when test="${not empty searchVO.crudId}">
			<c:set var="actionUrl" value="/crud2/update.do"/>
		</c:when>
		<c:otherwise>
			<c:set var="actionUrl" value="/crud2/insert.do"/>
		</c:otherwise>
	</c:choose>
	<div class="bt">
	<table>
		<colgroup>
			<col style="width:100px;">
			<col style="width:500px;">
	<form action="${actionUrl}" method="post" name="crudVO">
	<tr>
		<th>
		<input type="hidden" name="crudId" value="${result.crudId}"/>
		<label for="crudSj">제목</label>
		</th>
		<td>
		<input type="text" placeholder="제목을 입력하세요" id="crudSj" name="crudSj" value="${result.crudSj}"/>
		<td>
	<tr>
	<tr>
		<th>
		<label for="userNm">작성자</label>
		</th>
		<td>
		<input type="text" placeholder="작성자를 입력하세요" id="userNm" name="userNm" value="${result.userNm}"/>
		</td>
	</tr>
	<tr>
		<th>
		<label for="crudCn">내용</label>
		</th>
		<td>
		<textarea placeholder="내용을 입력하세요" id="crudCn" name="crudCn" value="${result.crudCn}">${result.crudCn}</textarea>
		</td>
	</tr>
	</table>	
		<br>
		<c:choose>
			<c:when test="${not empty searchVO.crudId}">
				<button type="submit">수정</button>
			</c:when>
			<c:otherwise>
				<button type="submit">등록</button>
				<button type="submit"><a href="/crud2/selectList.do">취소</a></button>
			</c:otherwise>
		</c:choose>
	</form>
	</div>
</div>
</body>
</html>



















