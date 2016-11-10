$(document).ready(function () {
    var currentFirstCategoryId = $("#currentFirstCategory").html();
    delCookie("firstcategory");
    setCookie("firstcategory",currentFirstCategoryId);
    var fcid = "#firstcategoryid"+currentFirstCategoryId;
    $("#index").css("color","white");
    $(fcid).css("color","red");
});