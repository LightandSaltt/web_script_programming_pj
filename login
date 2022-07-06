<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Be the Neverland</title>

<script type="text/javascript">

		function checkform() {
			
			//id 체크 정규식 : 숫자, 영문만 입력 가능 
			var regExpId = /^[0-9a-z]+$/;
			var form = document.LoginForm;
			var id = form.id.value;
		
			
			
			var form = document.LoginForm;
			if(form.id.value == "") {
				alert("아이디를 입력해주세요");
				form.id.focus();
				return;
			}
			
			else if(!regExpId.test(id)){
				alert("아이디는 숫자, 영문 소문자만 입력 가능합니다.");
				form.id.select();
				return;
			}
			else if(LoginForm.id.value.length < 4) {
				LoginForm.id.focus();
				alert("아이디는 4자 이상부터 가능합니다.")
				return;
				}
		
			
			
			else if (document.LoginForm.pw.value == ""){
				alert("비밀번호를 입력해주세요");
				form.pw.focus();
				return;
				
		}
			else if(LoginForm.pw.value.length < 4) {
				LoginForm.id.focus();
				alert("비밀번호는 4자 이상부터 가능합니다.")
				return;
				}
			
			
			
			else if (document.LoginForm.name.value == ""){
				alert("이름을 입력해 주세요.");
				form.name.focus();
				return;
		}
			
			
			else if (document.LoginForm.addr.value == ""){
				alert("주소를 입력해 주세요.");
				form.addr.focus();
				return;
		}
			
			
			else if (document.LoginForm.email.value == ""){
				alert("이메일을 입력해 주세요.");
				form.email.focus();
				return;
		}
		
			
			alert("네버랜드가 되신 걸 축하드립니다!");
			LoginForm.action = "LP.jsp"
			LoginForm.method = "post"
			LoginForm.submit();
			
		}
	</script>
	
<style>
@import url('https://fonts.googleapis.com/css2?family=Fira+Code:wght@300&family=Nanum+Gothic+Coding&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap');

html {
	background: black;
}

body {
	margin: 0;
	font-family: 'Fira Code', monospace;
}

header {
	border: 1px black solid;
	height: 50px;
  	padding: 1rem;
  	color: white;
  	font-weight: bold;
  	display: flex;
  	align-items: center;
  	justify-content: space-between;
  	
  	
}

#main_logo {
	max-width: 100px;
 	max-height: 50px;
 	objective-fit: cover;
}

h2 {
	color: white;
}
a:link {
	color: white;
}
a:visited {
	color: white;
}
a:hover {
	color: red;
	}
	
a {
	text-decoration: none;
}

center {

	color: white;
	font-family: 'Nanum Myeongjo' !important;"

}

section {
	
	height: 700px;
	
}

.ar {

	height: 10px;
}
#top {

	height: 50px;
}


</style>
</head>
<body>

<header>
	<p align="left"> <img src="data:image/png;base64,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" id="main_logo"> </p>

	<a href="LP.jsp"> HOME</a>
	<a href="profile.jsp"> PROFILE </a>
	<a href="discogaphy.jsp"> DISCOGRAPHY </a>
	<a href="https://www.youtube.com/channel/UCritGVo7pLJLUS8wEu32vow" target='_blank'> YouTube </a>
	<nav>
	<a href="login.jsp">JOIN</a>
	</nav>
</header>

<div id="top">
</div>


<!-- 로그인 화면-->

<section>

<center>
	<h2> 회원 가입 </h2>

	<form name="LoginForm" action="LP.jsp" method="post">
<table style="text-align: left" width="400px">
<tbody><tr>
<td>아이디</td><td><input type="text" name="id" id="id" onkeypress="CheckKey" maxlength="10">

<div class="ar">
</div>

</td></tr><tr>
<td>비밀번호</td><td><input type="password" name="pw" id="pw" maxlength="20">
 
<div class="ar">
</div>
 
</td></tr><tr>
<td>이름</td><td><input type="text" name="name" maxlength="6">

<div class="ar">
</div>
 
</td></tr><tr>
<td>주소</td><td><input type="text" name="addr" maxlength="20">
 
<div class="ar">
</div>
 
</td></tr><tr>
<td>이메일</td><td><input type="text" name="email" id="email" onkeyup="checkemail()"> @ <select> <option>직접입력 </option> <option>naver.com </option> <option>gmail.com </option> <option>hanmail.com </option> </select>

<div class="ar">
</div>
 
</td></tr><tr>
<td>생년월일</td><td><select name="year">
<%for(int i=2022; i>1950; i--){ %>
<option value="<%=i%>"><%=i %>년</option>
<%} %>
 
 
 
 
</select>
 
<select name="month">
<%for(int i=1; i<13; i++){ %>
<option value="<%=i%>"><%=i %>월</option>
<%} %>
</select>
 
<select name="day">
 
<%for(int i=1; i<32; i++){ %>
<option value="<%=i%>"><%=i %>일</option>
<%} %>
</select>
 
</td></tr></tbody></table>
 <div class="ar">
</div>
 
<br>
<table width="400px">
<tbody><tr><td style="text-align: center">
<input type="button" value="가입" onclick="checkform()">
<input type="reset" value="취소">
</td>
</tr>
</tbody></table>
 
</form>
</center>
</section>
</body>
</html>
