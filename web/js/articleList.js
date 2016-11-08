$(document).ready(function () {
    //将导航栏首页文字设置为白色
    $("#index").css("color","white");
    //设置当前导航为红色
    var firstCategoryId = getCookie("firstcategoryid");
    $("#firstcategoryid"+firstCategoryId).css("color","red");
});