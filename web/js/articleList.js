$(document).ready(function () {
    //将导航栏首页文字设置为白色
    $("#index").css("color","white");
    //设置当前导航为红色
    var firstCategoryId = getCookie("firstcategoryid");
    $("#firstcategoryid"+firstCategoryId).css("color","red");
    //初始化分页page
    var totalRow = $("#totalRow").html();
    createPage(10, 5, totalRow);
})

function createPage(pageSize, buttons, total) {
    $(".pagination").jBootstrapPage({
        pageSize : pageSize,
        total : total,
        maxPageButton:buttons,
        onPageClicked: function(obj, pageIndex) {
            var page = pageIndex+1;
            var firstcategoryid = getCookie("firstcategoryid");
            var secondcategoryid = -1;
            $.get(
                '/ArticleList/goOtherList',
                {
                    page:page,
                    firstcategoryid:firstcategoryid,
                    secondcategoryid:secondcategoryid
                },
                function (data) {
                    $("#articleList").html(data);
                    $('body,html').animate({scrollTop:0},0);
                }
            );
        }
    });
}



