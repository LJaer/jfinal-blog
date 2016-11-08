<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title>文章列表</title>

    <link rel="stylesheet" type="text/css" href="/css/common.css">
    <link rel="stylesheet" type="text/css" href="/css/articleList.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jBootsrapPage.css">


    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/articleList.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js"></script>
    <script src="${pageContext.request.contextPath}/js/jBootstrapPage.js"></script>
</head>
<body>
<div id="top">
    <%@ include file="common/top.jsp"%>

    <div id="center">
        <div id="center-left">
            <c:forEach var="x" items="${pageArticle.list}">
                <div class="article">
                    <div class="article-title">
                        <img class="article-CategoryIcon" src="http://localhost:18080/secondcategory/${x.secondcategoryimage}">
                        <div class="article-Name cursor">${x.name}</div>
                    </div>
                    <div class="article-msg">
                        <img class="article-img" src="${x.contextimage}">
                        <div class="article-context">${x.text}</div>
                        <div class="article-othermsg">
                            <div class="article-time">发表日期：${x.time}</div>
                            <div class="article-browse">浏览次数：${x.browse}次</div>
                            <button type="button" class="article-detail cursor" onmouseover="this.style.color='red';" onmouseout="this.style.color='black'">阅读全文</button>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <!-- 分页 -->
            <div id="totalRow" style="visibility: hidden">${pageArticle.totalRow}</div>
            <ul class="pagination" style="margin: 0 auto;">
            </ul>

        </div>
        <div id="center-right">
            <%@ include file="/jsp/common/center-right.jsp"%>
        </div>
    </div>

    <div id="bottom">
        <%@ include file="/jsp/common/bottom.jsp"%>
    </div>
    <%@ include file="/jsp/common/jiathis.jsp"%>
</div>
</body>
</html>
