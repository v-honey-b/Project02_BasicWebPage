<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>BOARD DETAIL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h1>BOARD DETAIL PAGE</h1>           
  <table class="table table-hover">
    <tbody>
      <tr>
			<th>NO.</th>
			<td>${bvo.bno }</td>
	  </tr>
	  <tr>
			<th>TITLE</th>
			<td>${bvo.title }</td>
	  </tr>
	  <tr>
			<th>WRITER</th>
			<td>${bvo.writer }</td>
	  </tr>
	  <tr>
			<th>REG_DATE</th>
			<td>${bvo.reg_date }</td>
	  </tr>
	  <tr>
			<th>CONTENT</th>
			<td>${bvo.content }</td>
	  </tr>
    </tbody>
  </table>
  <a href="brd/boardmodify?bno=${bvo.bno }">MODIFY</a>
  <a href="brd/boardremove?bno=${bvo.bno }">DELETE</a>
  <a href="/brd/boardlist">BOARD LIST</a>
</div>

</body>
</html>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD DETAIL</title>
</head>
<body>
	<h1>BOARD DETAIL PAGE</h1>
	<table border="1">
		<tr>
			<th>NO.</th>
			<td>${bvo.bno }</td>
		</tr>
		<tr>
			<th>TITLE</th>
			<td>${bvo.title }</td>
		</tr>
		<tr>
			<th>WRITER</th>
			<td>${bvo.writer }</td>
		</tr>
		<tr>
			<th>REG_DATE</th>
			<td>${bvo.reg_date }</td>
		</tr>
		<tr>
			<th>CONTENT</th>
			<td>${bvo.content }</td>
		</tr>
	</table>
	<a href="brd/boardmodify?bno=${bvo.bno }">MODIFY</a>
	<a href="brd/boardremove?bno=${bvo.bno }">DELETE</a>
	<a href="/brd/boardlist">BOARD LIST</a>
</body>
</html> --%>