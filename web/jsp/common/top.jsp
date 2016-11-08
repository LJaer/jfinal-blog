<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${pageContext.request.contextPath}/js/top.js"></script>

<div id="top">
		<div id="top-title">
			<div onmouseover="changeColor(this)" onmouseout="changeColor(this)" id="index" style="color: red;" class="top-title cursor" firstcategoryid="index-title" onclick="titleChoice(this)">首页</div>
			<c:forEach var="x" items="${firstCategory}">
				<div onmouseover="changeColor(this)" onmouseout="changeColor(this)" id="firstcategoryid${x.id}" class="top-title cursor" firstcategoryid="${x.id}" onclick="titleChoice(this)">${x.name}</div>
			</c:forEach>
		</div>
</div>

