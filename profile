<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Info" %>
<jsp:useBean id="InfoDAO" class="dao.MemberRepository" scope="session" />
<html>
<head>
<title>Welcome to the Neverland</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Fira+Code:wght@300&family=Nanum+Gothic+Coding&display=swap');


body {
	background: linear-gradient(45deg, rgb(93,15,140), red);
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
#hd {
	background: black;
}

section {

	
	
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

#prof {

	margin-left: 30px;
	margin-bottom: 50px;
	color: white;
	width: 200px;
	text-align: center;
	border: 5px solid;
	border-bottom-color: red;
	padding: 0;
	border-top: none;
	border-right: none;
	border-left: none;
	font-size: 30px;
}

.row, col-md-4 {
		color: white;


}
.row {

	display: flex;
}



</style>

</head>

<body>

<header id="hd">
	<p align="left"> <img src="data:image/png;base64,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" id="main_logo"> </p>

	<a href="LP.jsp"> HOME</a>
	<a href="profile.jsp"> PROFILE </a>
	<a href="discogaphy.jsp"> DISCOGRAPHY </a>
	<a href="https://www.youtube.com/channel/UCritGVo7pLJLUS8wEu32vow" target='_blank'> YouTube </a>
	<nav>
	<a href="login.jsp">JOIN</a>
	</nav>

</header>

<section>

<div id="prof">
<h2>PROFILE</h2>
</div>

<div class="jumbotron">
	<div class="container">
		
	</div>
</div>
<%
	ArrayList<Info> listOfInfo = InfoDAO.getAllInfo();
%>
<div class="container">
	<div class="row" align="center">
		<%
			for(int i = 0; i < listOfInfo.size(); i++) {
				
				Info info = listOfInfo.get(i);
				
		%>
		<br>
		<div class="col-md-4">
			<img src="./images/<%=info.getFilename()%>" style="width:100%">
			<h2><%=info.getMemberName() %></h2>
			<p><%=info.getMemberBirth() %>
			<p><%=info.getCategory() %>
			
		</div>
		
		<% 
			}
		%>
	</div>
	<hr>
</div>

</section>

</body>

</html>
