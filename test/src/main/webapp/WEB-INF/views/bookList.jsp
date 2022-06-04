<%@page import="kr.two.entity.BookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
function goJSON() {
		$.ajax({
			url:"bookListAjax.do",
			type : "get",
			dataType :"json",
			success : ajaxHtml,
			error : function() { alert("error");}
		});
	}
function ajaxHtml(data) {
	// 책 리스트 출력 ui 만들기
	 var view="<table class='table'>";
			      view+="<tr>";
			      view+="<td>번호</td>";
			      view+="<td>제목</td>";
			      view+="<td>작성자</td>";
			      view+="<td>작성일</td>";
			      view+="<td>조회수</td>";
			      
			      view+="</tr>";
			      // ____0___  ___1____  ____2____   
			      //[{       },{      },{         }]
			      $.each(data,function(index, obj){
			         view+="<tr>";
			         view+="<td>"+obj.num+"</td>";  // 번호
			         view+="<td>"+obj.title+"</td>";	// 제목
			         view+="<td>"+obj.author+"</td>";  // 작가
			         view+="<td>"+obj.company+"</td>";  // 출판사
			         view+="<td>"+obj.isbn+"</td>";  //isbn
			         view+="<td>"+obj.count+"</td>"; // 보유 도서수
			         view+="</tr>";   
			     
			      });   
			          view+="</table>";
			         $("#view").html(view);
			      
}
</script>


</head>
<body>
 
<div class="container">
  <h2>Spring TEST</h2>
  <div class="panel panel-default">
    <div class="panel-heading">BOOK LIST</div>
    <div class="panel-body">Panel Content
   	<table class="table table-bordered table-hover">
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작가</td>
						<td>출판사</td>
						<td>ISBN</td>
						<td>보유도서수</td>
					</tr>
						<c:forEach var="vo" items="${list}"> 
						<%--<%for(BoardVO vo : list ){ %>
				 <%for(int i=0; i<list.size();i++ ){
						   BoardVO vo=list.get(i);%> --%>
					<tr>
						<td>${vo.num}</td>
						<td>${vo.title}</td>
						<td>${vo.author}</td>
						<td>${vo.company}</td>
						<td>${vo.isbn}</td>
						<td>${vo.count}</td>
					</tr>
					</c:forEach>
				</table>
			
   <button onclick="goJSON()">도서목록 가져오기</button> 
   <div id="view">여기에 도서목록이 출력됩니다.</div>
    </div>
    <div class="panel-footer">빅데이터 분석 서비스 개발자과정(김홍석)</div>
  </div>
</div>

</body>
</html>