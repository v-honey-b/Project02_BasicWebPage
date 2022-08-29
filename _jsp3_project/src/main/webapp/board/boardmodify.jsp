<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>BOARD MODIFY</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h1>BOARD MODIFY PAGE</h1>
  <form action="/brd/boardupdate" method="post">
    <div class="form-group">
      <label for="bno">NO.</label>
      <input type="text" class="form-control" id="bno" name="bno" value="${bvo.bno }" readonly>
    </div>
    <div class="form-group">
      <label for="title">TITLE</label>
      <input type="text" class="form-control" id="title" name="title" value="${bvo.title }">
    </div>
    <div class="form-group">
      <label for="title">WRITER</label>
      <input type="text" class="form-control" id="writer" name="writer" value="${bvo.writer }" readonly>
    </div>
    <div class="form-group">
      <label for="content">CONTENT</label>
      <textarea rows="3" cols="30" name="content" class="form-control" id="content">${bvo.content }</textarea>
    </div>
    <button type="submit" class="btn btn-primary">MODIFY</button>
  </form>
</div>

</body>
</html>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD MODIFY</title>
</head>
<body>
	<h1>BOARD MODIFY PAGE</h1>
	<form action="/brd/boardupdate" method="post">
		NO. : <input type="text" name="bno" value="${bvo.bno }" readonly> <br>
		TITLE : <input type="text" name="title" value="${bvo.title }"> <br>
		WRITER : <input type="text" name="writer" value="${bvo.writer }" readonly> <br>
		CONTENT : <textarea rows="3" cols="30" name="content">${bvo.content }</textarea> <br>
		<button type="submit">MODIFY</button>
	</form>
</body>
</html> --%>