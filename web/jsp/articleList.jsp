<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title>文章列表</title>

    <link rel="stylesheet" type="text/css" href="/css/common.css">
    <link rel="stylesheet" type="text/css" href="/css/articleList.css">
    <link rel="stylesheet" type="text/css" href="/css/jBootsrapPage.css">

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
            <div id="articleList">
                <jsp:include page="articlePage.jsp"></jsp:include>
            </div>
            <!-- 分页 -->
            <div id="totalRow" style="visibility: hidden;float: left;">${pageArticle.totalRow}</div>
            <div id="pageDiv">
                <ul class="pagination" style="margin: 0 auto;"> </ul>
            </div>
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
