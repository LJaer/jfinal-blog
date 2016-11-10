<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div id="articleDiv">
    <div id="article-title">${article.name}</div><br>
    <div id="article-time">发表日期：${article.time}</div>
    <div id="article-browse">浏览次数：${article.browse}次</div><br>
    <div id="article-html">${article.html}</div>
</div>