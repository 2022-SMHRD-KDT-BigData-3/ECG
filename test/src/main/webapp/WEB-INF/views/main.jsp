<%@page import="kr.two.entity.ExerVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="edit.do?id=${vo.id}"><h1>${vo.id}</h1></a>
<h1>${vo.pw}</h1>
<h1>${vo.nick}</h1>
<h1>${vo.pw}</h1>
<h1>${vo.height}</h1>
<h1>${vo.weight}</h1>
<h1>${vo.strong}</h1>
<h1>${mvo1.get(1).getE_name()}</h1>

<h1>나오라고${ran}</h1>
</body>
</html>
