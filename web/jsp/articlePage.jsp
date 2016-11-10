<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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