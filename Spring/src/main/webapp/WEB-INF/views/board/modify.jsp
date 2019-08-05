<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function() {
		$("#btnUpdate").click(function() {
			var title = $("#title").val();
			var writer = $("#writer").val();
			var content = $("#content").val();

			if (title == "") {
				alert("제목을 입력하세요");
				document.view.title.focus();
				return;
			}

			if (writer == "") {
				alert("작성자를 입력하세요");
				document.view.writer.focus();
				return;
			}

			if (content == "") {
				alert("내용을 입력하세요");
				document.view.content.focus();
				return;
			}
			document.view.action = "${path}/board/update.do";
			document.view.submit();

		});
	});
</script>

<title>Insert title here</title>
</head>
<body>
이곳은 수정을 하는곳이란다 얘
<form name="view" method="post">
		<div>
			제목 <input name="title"  type="text"
				value="${dto.title}">

		</div>
		<%
			
		%>
		<div>
			작성자 <input name="writer" readonly="readonly" id="writer"
				value="${dto.writer}">

		</div>

		<div></div>

		<dtv> 조회수 <!--  {VO.viewcnt}  viewcnt 미구현--> </dtv>
		<div>
			내용
			<textarea name="content" id="content" row="4" cols="80">${dto.content}</textarea>
		</div>
		<div style="text-align: center; width: 650px;">
			<input type="hidden" name="bno" id = "bno" value="${dto.bno}">
			<button type="button" id="btnUpdate">수정</button>
			<button type="button" id="btnDelete">삭제</button>
		</div>


	</form>
</body>
</html>