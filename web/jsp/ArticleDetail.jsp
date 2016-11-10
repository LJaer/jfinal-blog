<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title>文章列表</title>

    <link rel="stylesheet" type="text/css" href="/css/common.css">
    <link rel="stylesheet" type="text/css" href="/css/articleDetail.css">

    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js"></script>
    <script src="${pageContext.request.contextPath}/js/articleDetail.js"></script>

</head>
<body>
<div id="top">
    <%@ include file="common/top.jsp"%>

    <!-- 当前一级分类 -->
    <label id="currentFirstCategory" style="visibility: hidden;position: absolute;">${currentFirstCategory.id}</label>

    <div id="center">
        <div id="center-left">
            <div id="article">
                <%@ include file="/jsp/Article.jsp"%>
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
