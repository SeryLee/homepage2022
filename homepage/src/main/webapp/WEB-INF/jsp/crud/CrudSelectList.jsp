<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko">
<title>데이터 가져오기~</title>
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
	height: 572px;
	border-right: 1px solid black;
	margin-right: 10px;
	}
	.contents {
	margin: 0px auto;
	width: 700px;
	height: 500px;
	border: none;
	}
	table, th, td {
	border:1px solid black;
	border-collapse:collapse;
	margin: 0px auto;
	}
	th, td {padding : 5px;}
	thead {background: #ccc;}
	#t {text-align: center;}
	#c {text-decoration: underline;}
	.contents #write {
	float:right; margin-bottom:70px;
	margin-top: 15px;}
	a {text-decoration: none; color: black;}
	#paging_div ul li{
	list-style: none;
	display: inline-block;
	padding: 3px;
	text-decoration: underline;
	}
	#paging_div {
	margin: 0px auto;
	display: block;
	text-align: center;
	}
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
			<li><a href="/crud/selectList.do">CRUD ></a>
		</ul>
	</aside>
<%-- 게시물 총 수 : <c:out value="${paginationInfo.totalRecordCount}"/>건 --%>
<h3>CRUD</h3>
<hr>
<div class="contents">
	<table>
		<colgroup>
			<col style="width:120px;">
			<col style="width:300px;">
			<col style="width:100px;">
			<col style="width:120px;">
			<col style="width:100px;">
		<thead>
			<tr>
				<th>ID</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>관리</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="result" items="${resultList}">
				<tr>
					<td id="t"><c:out value="${result.crudId}"/></td>
					<td id="c">
						<c:url var="viewUrl" value="/crud/select.do">
							<c:param name="crudId" value="${result.crudId}"/>
						</c:url>
						<a href="${viewUrl}"><c:out value="${result.crudSj}"/></a>						
					</td>
					<td id="t"><c:out value="${result.userNm}"/></td>
					<td id="t"><c:out value="${result.date}"/></td>
					<td id="t">
						<c:url var="delUrl" value="/crud/delete.do">
							<c:param name="crudId" value="${result.crudId}"/>
						</c:url>
						<button type="submit"><a href="${delUrl}" class="btn-del">삭제</a></button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<button type="submit" id="write"><a href="/crud/crudRegist.do">글쓰기</a></button>
	<div id="paging_div">
		<ul class="paging_align">
			<c:url var="pageUrl" value="/crud/selectList.do?"/>
			<c:set var="pagingParam"><c:out value="${pageUrl}"/></c:set>
			<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="${pagingParam}"/>
		</ul>
	</div>
	
</div>	
</div>
</body>
</html>



















