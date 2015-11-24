<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<script type="text/javascript" src="/springmvc-hellowworld/js/jquery.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript">
			$(document).ready(function(){
				$("#add").click(function(){
					alert("aa");
					var userName = $("#userName").val();
					var age = $("#age").attr("value");
					
					var user = {userName:userName,age:age};
					
					$.ajax({
						url:"/springmvc-hellowworld/user/addUserjson",
						type:"post",
						
						data:user,
						success:function(a){
							alert("userName:"+a.userName +"/n" +"age:"+age);
						}
					});
				});
			});
		</script>
	</head>
	
	<body>
		<h>json添加用户</h>
		姓名：<input type="text" id="userName" name="userName" /><br/>
		年龄：<input type="text" id="age" name="age" /><br/>
		<input type="button" id="add" value="添加"/>
	</body>
</html>
