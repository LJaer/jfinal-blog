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
    <#include "jsp/common/top.jsp"/>
  </div>

  <div id="center">
    <div id="photo">
      <div id="myCarousel" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
          <#list showPictures as x>
            <#if (x_index = 0)>
              <li data-target="#myCarousel" data-slide-to="${x_index}" class="active"></li>
              <#else>
                <li data-target="#myCarousel" data-slide-to="${x_index}"></li>
            </#if>
          </#list>
        </ol>


        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
          <#list showPictures as x>
            <#if (x_index = 0)>
              <div class="item active">
                <img src="http://localhost:18080/showimage/${x.name}" alt="">
              </div>
              <#else>
                <div class="item">
                  <img src="http://localhost:18080/showimage/${x.name}" alt="">
                </div>
            </#if>
          </#list>
        </div>
      </div>
    </div>

  </div>








  </body>
</html>
