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
    <script src="${pageContext.request.contextPath}/js/common.js"></script>

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
          <div class="last3Article-title">
            <img class="last3Article-categoryImg" src="http://localhost:18080/secondcategory/${x.secondcategoryimage}"/>
            <div onclick="articleChoice(this)" articleId="${x.id}" class="last3Article-name cursor" onmouseover="this.style.color='red';" onmouseout="this.style.color='black'">${x.name}</div>
          </div>
          <div class="last3Article-msg">
            <img class="last3Article-pic" src="${x.contextimage}">
            <div class="last3Article-context">${x.text}</div>
            <div class="last3Article-othermsg">
              <div class="last3Article-time">发表日期：${x.time}</div>
              <div class="last3Article-browse">浏览次数：${x.browse}次</div>
              <button onclick="articleChoice(this)"  articleId="${x.id}" type="button" class="last3Article-detail cursor" onmouseover="this.style.color='red';" onmouseout="this.style.color='black'">阅读全文</button>
            </div>
          </div>
        </div>
      </c:forEach>

      <!-- 一级分类下六篇文章 -->
      <c:forEach var="x" items="${firstCategory}" >
        <div class="last6Article">
          <div class="last6Article-title">
            <img class="last6Article-categoryIcon"  src="http://localhost:18080/firstcategory/${x.img}">
            <div onclick="titleChoice(this)" firstcategoryid="${x.id}" class="last6Article-categoryName cursor" onmouseover="this.style.color='red';" onmouseout="this.style.color='black'">${x.name}</div>
            <div onclick="titleChoice(this)" firstcategoryid="${x.id}" class="last6Article-more cursor" onmouseover="this.style.color='red';" onmouseout="this.style.color='black'">
              <div class="last6Article-more-text">more</div>
              <div class="last6Article-more-circle">></div>
            </div>
          </div>
          <HR style="FILTER: alpha(opacity=90,finishopacity=0,style=1);margin-left:5px;margin-top: 5px;margin-bottom: 0px;" width="95%" color=#ccc SIZE=1>
          <!-- 文章列表 -->
          <div class="last6Article-articles">
            <c:forEach var="y" items="${x.articleList}" varStatus="status">
              <c:if test="${status.index==0}">
                <c:if test="${y.contextimage!=null}">
                  <div class="last6Article-firstArticle">
                    <img class="last6Article-firstArticleImg" src="${y.contextimage}">
                  </div>
                </c:if>
                <c:if test="${y.contextimage==null}">
                  <div class="last6Article-firstArticle">
                    <img class="last6Article-firstArticleImg" src="${pageContext.request.contextPath}/pictures/nopicture.png">
                  </div>
                </c:if>
                <div onclick="articleChoice(this)" articleId="${y.id}" class="last6Article-firstArticleTitle cursor" onmouseover="this.style.color='red';" onmouseout="this.style.color='black'">${y.name}</div>
                <div class="last6Article-firstArticleContext">${y.text}</div>
              </c:if>
              <c:if test="${status.index!=0}">
                <div class="last6Article-singleArticle">
                  <div onclick="articleChoice(this)" articleId="${y.id}" class="last6Article-article-name cursor" onmouseover="this.style.color='red';" onmouseout="this.style.color='black'">${y.name}</div>
                  <div class="last6Article-article-time"><fmt:formatDate value="${y.time}" pattern="yyyy/MM/dd" /></div>
                </div>
              </c:if>
              <HR style="FILTER: alpha(opacity=90,finishopacity=0,style=1);margin-left:5px;margin-top: 25px;margin-bottom: 0px;" width="95%" color=#ccc SIZE=1>
            </c:forEach>
          </div>

        </div>
      </c:forEach>


    </div>
    <div id="center-right">
      <%@ include file="jsp/common/center-right.jsp"%>
    </div>
  </div>

  <div id="bottom">
    <%@ include file="jsp/common/bottom.jsp"%>
  </div>

  <%@ include file="jsp/common/jiathis.jsp"%>
  </body>
</html>
