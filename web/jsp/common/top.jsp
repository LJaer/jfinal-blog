<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="top">
		<div id="top-title">
			<div class="top-title cursor" firstcategoryid="index-title" onclick="titleChoice(this)">首页</div>
			<c:forEach var="x" items="${firstCategory}">
				<div class="top-title cursor" firstcategoryid="${x.id}">${x.name}</div>
			</c:forEach>
		</div>
</div>

