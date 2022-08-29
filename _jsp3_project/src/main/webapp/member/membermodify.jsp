<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>MEMBER MODIFY</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h1>MEMBER MODIFY PAGE</h1>
  <form action="/mem/memberupdate" method="post">
    <div class="form-group">
      <label for="email">EMAIL</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="${mvo.email }" readonly>
    </div>
    <div class="form-group">
      <label for="nick_name">NICK_NAME</label>
      <input type="text" class="form-control" id="nick_name" name="nick_name" value="${mvo.nick_name }">
    </div>
    <div class="form-group">
      <label for="pwd">PASSWORD</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" value="${mvo.pwd }">
    </div>
    <button type="submit" class="btn btn-primary">MODIFY</button>
  </form> <br>
  <a href="/mem/memberremove?email=${mvo.email }"><button type="button" class="btn btn-primary">DELETE</button></a>
</div>

</body>
</html>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER MODIFY</title>
</head>
<body>
	<h1>MEMBER MODIFY PAGE</h1>
	<form action="/mem/memberupdate" method="post">
		EMAIL : <input type="email" name="email" value="${mvo.email }" readonly> <br>
		NICK_NAME : <input type="text" name="nick_name" value="${mvo.nick_name }"> <br>
		PASSWORD : <input type="password" name="pwd" value="${mvo.pwd }"> <br>
		<button type="submit">MODIFY</button>
	</form>
	<a href="/mem/memberremove?email=${mvo.email }"><button type="button">DELETE</button></a>
</body>
</html> --%>