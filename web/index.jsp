<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
  <head>
    <title>首页</title>

    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script src="js/index.js"></script>

    <link rel="stylesheet" type="text/css" href="/css/common.css">
    <link rel="stylesheet" type="text/css" href="/css/index.css">
  </head>
  <body>

  <div id="top">
    <%@ include file="jsp/common/top.jsp"%>
  </div>

  <div id="center">
    <div id="center-left">

      <!-- 照片轮转 -->
      <div id="photo">

        <div id="myCarousel" class="carousel slide">
          <!-- 轮播（Carousel）指标 -->
          <ol class="carousel-indicators" id="carousel-indicators-id">
          </ol>
          <!-- 轮播（Carousel）项目 -->
          <div class="carousel-inner" id="carousel-inner-id">
          </div>
        </div>

      </div>

      <!-- 最近三篇文章 -->
      <c:forEach var="x" items="${last3Article}">
        <div class="lastArticle">
          <img class="last3Article-categoryImg" src="http://localhost:18080/secondcategory/${x.secondcategoryimage}"/>
          <div class="last3Article-name">${x.name}</div>
          <c:if test="${x.contextimage}=null"></c:if>
            <img class="last3Article-pic" src="${x.contextimage}">
          <div class="last3Article-context">${x.text}</div>
          <div class="last3Article-othermsg">
            <div class="last3Article-time">发表日期：${x.time}</div>
            <div class="last3Article-browse">浏览次数：${x.browse}次</div>
            <button type="button" class="last3Article-detail">阅读全文</button>
          </div>
        </div>
      </c:forEach>

      <!-- 一级分类下六篇文章 -->
      <c:forEach var="x" items="${firstCategory}">
        <div class="last6Article">
          <c:forEach var="y" items="${x.articleList}">
            cs
          </c:forEach>
        </div>
      </c:forEach>


    </div>
    <div id="center-right">

    </div>
  </div>








  </body>
</html>
