<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>BOARD REGISTER</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h1>BOARD REGISTER PAGE</h1>
  <form action="/brd/boardinsert" method="post">
    <div class="form-group">
      <label for="title">TITLE</label>
      <input type="text" class="form-control" id="title" name="title">
    </div>
    <div class="form-group">
      <label for="writer">WRITER</label>
      <input type="text" class="form-control" id="writer" name="writer" value="${ses.nick_name }" readonly>
    </div>
    <div class="form-group">
      <label for="content">CONTENT</label>
      <textarea rows="3" cols="30" name="content" class="form-control"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">UPLOAD</button>
  </form>
</div>

</body>
</html>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD REGISTER</title>
</head>
<body>
	<h1>BOARD REGISTER PAGE</h1>
	<form action="/brd/boardinsert" method="post">
		TITLE : <input type="text" name="title"> <br>
		WRITER : <input type="text" name="writer" value="${ses.nick_name }" readonly> <br>
		CONTENT : <textarea rows="3" cols="30" name="content"></textarea> <br>
		<button type="submit">UPLOAD</button>
	</form>
</body>
</html> --%>