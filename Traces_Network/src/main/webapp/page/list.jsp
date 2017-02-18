<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LIST</title>
</head>
<body>
<table width="600" border="1" cellpadding="0" cellspacing="1" bgcolor="b5d6e6">
	<tr>
		<th>编号</th>
		<th>经度</th>
		<th>纬度</th>
		<th>地址</th>
	</tr>
	<c:forEach var = "location" items="${list}">
	<tr>
		<td align="center"><c:out value="${location.id}" /></td>
		<td align="center"><c:out value="${location.longitude}" /></td>
		<td align="center"><c:out value="${location.latitude}" /></td>
		<td><c:out value="${location.address}" /></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>