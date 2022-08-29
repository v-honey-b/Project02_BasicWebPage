<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>BOARD LIST</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h1>BOARD LIST PAGE</h1>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>NO.</th>
		<th>TITLE</th>
		<th>WRITER</th>
		<th>REG_DATE</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${boardlist }" var="bvo">
			<tr>
				<td><a href="/brd/boarddetail?bno=${bvo.bno }">${bvo.bno }</a></td>
				<td><a href="/brd/boarddetail?bno=${bvo.bno }">${bvo.title }</a></td>
				<td>${bvo.writer }</td>
				<td>${bvo.reg_date }</td>
			</tr>
	  </c:forEach>
    </tbody>
  </table>
  <a href="/">INDEX</a>
</div>

</body>
</html>

<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD LIST</title>
</head>
<body>
	<h1>BOARD LIST PAGE</h1>
	<table border="1">
		<tr>
			<th>NO.</th>
			<th>TITLE</th>
			<th>WRITER</th>
			<th>REG_DATE</th>
		</tr>
		<c:forEach items="${boardlist }" var="bvo">
			<tr>
				<td><a href="/brd/boarddetail?bno=${bvo.bno }">${bvo.bno }</a></td>
				<td><a href="/brd/boarddetail?bno=${bvo.bno }">${bvo.title }</a></td>
				<td>${bvo.writer }</td>
				<td>${bvo.reg_date }</td>
			</tr>
		</c:forEach>
	</table>
	<a href="/">INDEX</a>
</body>
</html> --%>