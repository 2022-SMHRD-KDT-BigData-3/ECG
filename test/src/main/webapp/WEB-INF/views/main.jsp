<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<form action="listpick.do" method="post" >
<h1>운동추천받기</h1>
<div><input  type="checkbox" name="chocie" value="1">상체운동</div>
<div><input  type="checkbox" name="chocie" value="2">하체운동</div>
<div><input  type="checkbox" name="chocie" value="3">전신운동</div>
<input name="유형" type="checkbox" value="1">
<input name="유형" type="checkbox" value="2">
<input type="submit" value="산텍"></form>

</body>
</html>