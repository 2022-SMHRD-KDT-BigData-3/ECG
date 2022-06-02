<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 필요 -->
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src=""></script>
<script type="text/javascript">
 $(document).ready(()=> {
	 loadList();
 });
		function loadList() {
			 $.ajax({
		         url : "bList.do",
		         type : "GET",
		         // data : {},
		         dataType : "json",
		         success : resultHtml,
		         error : function(){alert("응 애러야");}
		      });
		}
		   function resultHtml(data){
			      //동적인 view만들기
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
			         view+="<td>"+obj.idx+"</td>";
			         view+="<td id='t"+obj.idx+"'><a href='javascript:cview("+obj.idx+")'>"+obj.title+"</a></td>";
			         view+="<td>"+obj.writer+"</td>";
			         view+="<td>"+obj.indate+"</td>";
			         view+="<td>"+obj.count+"</td>";
			         view+="</tr>";   
			         view+="<tr id='cv"+obj.idx+"' style='display:none'>";   
			         view+="<td>내용</td>";   
			         view+="<td colspan='4'>";
			         view+="<textarea id='ta"+obj.idx+"' rows='7' readonly class='form-control' >"+obj.content+"</textarea>"
			         view+="<br/>";
			         if("${mvo.userId}"==obj.userId){
			         view+="<span id='u"+obj.idx+"'><button class='btn btn-sm btn-info' onclick='goForm("+obj.idx+")'>수정</button></span>&nbsp"// 공백한칸 &nbsp
			         view+="<button class='btn btn-sm btn-warning' onclick='goDel("+obj.idx+")'>삭제</button>" 
			      }else{
			    	  view+="<span id='u"+obj.idx+"'><button disabled class='btn btn-sm btn-info' onclick='goForm("+obj.idx+")'>수정</button></span>&nbsp"// 공백한칸 &nbsp
				         view+="<button disabled class='btn btn-sm btn-warning' onclick='goDel("+obj.idx+")'>삭제</button>" 
				         }
			    	  /* disabled -> 버튼안눌림 */
			        
			         view+="</td>";
			         view+="</tr>";   
			      });    
			      if(${!empty mvo}){
			      view+="<tr>"
			      view+="<td colspan='5'>"			      
			      view+="<button class='btn btn-sm btn-primary' onclick='wclos()'>글쓰기</button>"			      
			      view+="</td>"			      
			      view+="</tr>"
			      view+="</table>";
			      $("#c").html(view);
			  	$("#list").css("display","block");
				$("#write").css("display","none");
			   }
		   }
 	function cview(idx) {
 		if($("#cv"+idx).css("display")=="none"){
 		$("#cv"+idx).css("display","table-row");
 		}else{
 			$("#cv"+idx).css("display","none");
 			
 		}
	}
 	function wclos() {
		$("#list").css("display","none");
		$("#write").css("display","block");
	}
 	function goWrite() {
		// form의 파라메터를 가져오기(title,content,writer)
		// var title= $("#title").val();
		var fData = $("#frm").serialize();
		$.ajax({
			url : "bInsert.do",
			type : "POST",
			data : fData,
			success : loadList,
			error : function name() { alert("error");}
			
		});
		/* $("#title").val("");
		$("#content").val("");
		$("#writer").val(""); */
		$("#redata").trigger("click");
	}
 	function goDel(idx) {
		$.ajax({
			url : "bDelete.do",
			type : "GET",
			data : {"idx":idx},
			success : loadList,
			error : function() { alert("error")
				
			}
		});
	}
 	function goForm(idx) {
 		var title=$("#t"+idx).text();
 		var tInput="<input  type='text' class='form-control' id='nt"+idx+"' value='"+title+"'/>";
		$("#t"+idx).html(tInput);
 		// textarea의 readonly를 제거
 		$("#ta"+idx).attr("readonly",false);   // attr -> 어트리뷰트
 		var newBtn="<button class='btn btn-sm btn-info' onclick='goUpdate("+idx+")' >수정하기</button>";
 		$("#u"+idx).html(newBtn);
	}
 	function goUpdate(idx) {
 		// title, content 필요
 		var title=$("#nt"+idx).val();
 		var content=$("#ta"+idx).val();
 		$.ajax({
			url : "bUpdate.do",
			type : "POST",
			data : {"idx":idx,"title":title,"content":content},
			success : loadList,
			error : function() { alert("error");
				
			}
		});
	}
 

  </script>
</head>
<body>

	<div class="container">
		<h2>Spring MVC02</h2>
		<div class="panel panel-default">
			<div class="panel-heading">BOARD</div>
			<c:if test="${empty mvo }" >
			<form class="form-inline" action="login.do" method="post">
				<div class="form-group">
					<label for="userId">Userid:</label> <input type="text"
						class="form-control" name="userId">
				</div>
				<div class="form-group">
					<label for="userPwd">Password:</label> <input type="password"
						class="form-control" name="userPwd">
				</div>
				<button type="submit" class="btn btn-default">로그인</button>
			</form>
			</c:if>
			<c:if test="${!empty mvo}">
			<form class="form-inline" action="logout.do" method="post">
					<label >${mvo.userName}님 방문을 환영합니다.</label> 
				<button type="submit" class="btn btn-default">로그아웃</button>
			</form>
			</c:if>
			<div class="panel-body" id="list"></div>
			<div class="panel-body" id="write" style="display: none">
				<form class="form-horizontal" id="frm">
				<input type="hidden" name="userId" value="${mvo.userId }"/>
					<div class="form-group">
						<label class="control-label col-sm-2" for="title">제목:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="title" name="title"
								placeholder="Enter title">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="content">내용:</label>
						<div class="col-sm-10">
							<textarea rows="7" cols="" class="form-control" id="content"
								name="content"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="writer">작성자:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="writer" id="writer" value="${mvo.userName}" readonly="readonly">
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" class="btn btn-primary" onclick="goWrite()">등록</button>
							<button type="reset" class="btn btn-warning" id="redata">취소</button>
							<button type="button" class="btn btn-success"
								onclick="loadList()">목록</button>
						</div>
					</div>
				</form>
			</div>
			<div class="panel-footer">빅데이터 분석 서비스 개발자과정(김홍석)</div>
		</div>
	</div>

</body>
</html>