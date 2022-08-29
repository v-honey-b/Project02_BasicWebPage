<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>JOIN</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h1>JOIN PAGE</h1>
  <form action="/mem/memberregister" method="post">
    <div class="form-group">
      <label for="email">EMAIL</label>
      <input type="email" class="form-control" id="email" placeholder="abc@example.com" name="email">
    </div>
    <div class="form-group">
      <label for="nick_name">NICK NAME</label>
      <input type="text" class="form-control" id="nick_name" placeholder="nick_name" name="nick_name">
    </div>
    <div class="form-group">
      <label for="pwd">PASSWORD</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    <button type="submit" class="btn btn-primary">JOIN</button>
  </form>
</div>

</body>
</html>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
</head>
<body>
	<h1>JOIN PAGE</h1>
	<form action="/mem/memberregister" method="post">
		EMAIL : <input type="email" name="email" placeholder="abc@eample.com"> <br>
		NICK NAME : <input type="text" name="nick_name" placeholder="nick_name"> <br>
		PASSWORD : <input type="password" name="pwd"> <br>
		<button type="submit">JOIN</button>
	</form>
</body>
</html> -->