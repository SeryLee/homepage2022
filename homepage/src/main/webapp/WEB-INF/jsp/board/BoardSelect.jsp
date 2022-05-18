<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

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
			<li><a href="/crud/selectList.do">CRUD ></a>
		</ul>
	</aside>
<h3>CRUD</h3>
<hr>
<div class="contents">
	<table>
		<colgroup>
			<col style="width:100px;">
			<col style="width:500px;">
		<tr>
			<th id="h1">제목</th>
			<td>${result.crudSj}</td>
		</tr>
		<tr>
			<th id="h1">작성자</th>
			<td>${result.userNm}</td>
		</tr>
		<tr>
			<th id="h1">작성일</th>
			<td>
				<fmt:formatDate value="${result.frstRegistPnttm}" pattern="yyyy-MM-dd"/>
			</td>
		</tr>
		<tr>
			<th id="h2">내용</th>
			<td id="cn">${result.crudCn}</td>
		</tr>
	</table>
	
	<div class="box-btn">
		<c:url var="uptUrl" value="/crud/crudRegist.do">
			<c:param name="crudId" value="${result.crudId}"/>
		</c:url>
		<button id="left1" type="submit"><a href="${uptUrl}">수정</a></button>
	
		<c:url var="delUrl" value="/crud/delete.do">
			<c:param name="crudId" value="${result.crudId}"/>
		</c:url>
		<button id="left2" type="submit"><a href="${delUrl}" class="btn-del">삭제</a></button>
		
		<button id="right" type="submit"><a href="/crud/selectList.do">목록</a></button>
	</div>
</div>
</div>
<script>
$(document).ready(function(){
	$(".btn-del").click(function(){
		if(!confirm("삭제하시겠습니까?")){
			return false;
		}
	});
});
</script>
</body>
</html>