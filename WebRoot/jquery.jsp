<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<script type="text/javascript" src="../js/global.js"></script>
		<script type="text/javascript" src="/springmvc-helloworld/js/jquery.min.js"></script>
		<title></title>
	</head>
	<body>
		<form action="/springmvc-hellowworld/user/addUser" method="get">
			<div>${result }</div>
			<div><input type="submit" value="post请求"/></div>
		</form>
	</body>
</html>