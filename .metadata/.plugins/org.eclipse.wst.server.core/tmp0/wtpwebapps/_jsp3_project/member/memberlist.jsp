<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>MEMBER LIST</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h1>MEMBER LIST PAGE</h1>
  <h5><a href="/index.jsp">INDEX</a></h5>
  <c:forEach items="${memberlist }" var="mvo">
  <div class="list-group">
  	<p>
  		<h5>${mvo.nick_name }</h5> <br>
		<a href="/mem/membermodify?email=${mvo.email }">${mvo.email }</a> <br>
		REG_DATE : ${mvo.reg_at } <br>
		LAST_LOGIN : ${mvo.last_login } <br>
	</p>
  </div>
  </c:forEach>
</div>

</body>
</html>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER LIST</title>
</head>
<body>
	<h1>MEMBER LIST PAGE</h1>
	<a href="/index.jsp">INDEX</a>
	<c:forEach items="${memberlist }" var="mvo">
		<div>
			<p>
				REG_DATE : ${mvo.reg_at } <br>
				LAST_LOGIN : ${mvo.last_login } <br>
				${mvo.nick_name } <br>
				(<a href="/mem/membermodify?email=${mvo.email }">${mvo.email }</a>)
			</p>
		</div>
	</c:forEach>
</body>
</html> --%>