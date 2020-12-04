<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">

	h3{	
		margin-top : 50px;
		text-align:  center;
		font-weight: bold;}
		
	#tbl{
		 width: 800px;
		 margin : 0px auto;
		 margin-top: 50px;
		 font-size : small;
		 border-spacing : 0px;
		 border-collapse: collapse; }
		 
	.tr1{ 						
		height: 40px;		
		background-color: black;
		text-align: center;
		color : white;
		}
		
	.td1{
		height: 40px;
		text-align: center;
		}
	
	.tr2{
		border-bottom: 3px solid gray;}
	
		
</style>

</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>BoardListPage</h3>
  	<table id ="tbl">
		<tr class="tr1">
			<td>Num</td>
			<td>Title</td>
			<td>Writer</td>
			<td>Contents</td>
			<td>regDate</td>
			<td>Hit</td>
		</tr>
		
		<c:forEach items="${requestScope.list}" var="dto">
			<tr class="tr2">
				<td class="td1">${dto.num}</td>
				<td class="td1">${dto.title}</td>
				<td class="td1">${dto.writer}</td>
				<td class="td1">${dto.contents}</td>
				<td class="td1">${dto.regdate}</td>
				<td class="td1">${dto.hit}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>