<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="/css/top.css">

<div id="top">
		<div id="top-title">
			<div class="top-title" firstcategoryid="index-title" onclick="titleChoice(this)">首页</div>
			<c:forEach var="x" items="${firstCategory}">
				<div class="top-title" firstcategoryid="${x.id}">${x.name}</div>
			</c:forEach>
		</div>
</div>

