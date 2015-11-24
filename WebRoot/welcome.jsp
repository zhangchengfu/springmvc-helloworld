<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../js/global.js" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <base href="<%=basePath%>">
    <title>My JSP 'welcome.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		$(document).ready(function(){
			alert(11);
		});
    </script>
  </head>
  
  <body>
    <div>c标签遍历map集合</div>
    <div>
    <c:forEach items="${map}" var="m">
    	<c:out value="${m.key}:${m.value }"></c:out>
    </c:forEach>
    </div>
    
    <% List list = new ArrayList();list.add("a");list.add("b");list.add("c"); %>
	<div>
		<c:forEach items="${list }" var="m">
		
		${m} 
		<c:out value="${m} "></c:out>
		</c:forEach>
	</div>
	<div>
		<img alt="航母" src="${ctx }/img/hangmu.png">
	</div>
  </body>
</html>
